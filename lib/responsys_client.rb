require 'rubygems'
gem 'soap4r'
require 'stub/defaultDriver.rb'
require 'stub/defaultMappingRegistry.rb'

module SunDawg
  class ResponsysClient

    MAX_MEMBERS = 200

    class TooManyMembersError < StandardError
    end

    class ResponsysTimeoutError < StandardError
    end

    class MethodsNotSupportedError < StandardError
    end

    attr_reader :session_id
    attr_accessor :keep_alive

    # Creates a client object to connect to Responsys via SOAP API
    #
    # <username> - The login username
    # <password> - The login password
    # <options...> - Hash of additional options
    #   :keep_alive => true|false - (Default=false) Keep session alive for multiple requests
    #   :wiredump_dev => IO - Dump all messages (reply and responses) to IO 
    #
    def initialize(username, password, options = {})
      @username = username
      @password = password
      @keep_alive = options[:keep_alive]
      @responsys_client = ResponsysWS.new
      @responsys_client.wiredump_dev = options[:wiredump_dev] if options[:wiredump_dev]
    end 

    def login
      with_application_error do
        login_request = Login.new
        login_request.username = @username
        login_request.password = @password
        response = @responsys_client.login login_request
        @session_id = response.result.sessionId
        assign_session
      end
    end

    def assign_session
      session_header_request = SessionHeader.new
      session_header_request.sessionId = @session_id
      @responsys_client.headerhandler.add session_header_request
    end
    
    def logout
      begin
        logout_request = Logout.new
        @responsys_client.logout logout_request
      ensure
        @session_id = nil 
      end
    end

    def list_folders
      with_session do
        @responsys_client.listFolders ListFolders.new 
      end
    end

    def create_folder(folder_name)
      with_session do
        create_folder_request = CreateFolder.new
        create_folder_request.folderName = folder_name
        @responsys_client.createFolder create_folder_request
      end
    end

    def save_members(folder_name, list_name, members, attributes = SunDawg::Responsys::Member.fields)
      raise MethodsNotSupportedError unless SunDawg::Responsys::Member.fields.include?(:email_address) && SunDawg::Responsys::Member.fields.include?(:email_permission_status) && SunDawg::Responsys::Member.fields.include?(:customer_id)
      raise TooManyMembersError if members.size > MAX_MEMBERS

      with_session do
        list_merge_rule = ListMergeRule.new
        list_merge_rule.insertOnNoMatch = true
        list_merge_rule.updateOnMatch = UpdateOnMatch::REPLACE_ALL
        list_merge_rule.matchColumnName1 = "CUSTOMER_ID_"
        record_data = RecordData.new
        record_data.fieldNames = SunDawg::Responsys::Member.responsys_fields(attributes)
        record_data.records = []
        members.each do |member|
          record = Record.new
          record = member.values(attributes)
          record_data.records << record
        end
        interact_object = InteractObject.new
        interact_object.folderName = folder_name
        interact_object.objectName = list_name
        merge_list_members = MergeListMembers.new
        merge_list_members.list = interact_object
        merge_list_members.recordData = record_data
        merge_list_members.mergeRule = list_merge_rule
        @responsys_client.mergeListMembers merge_list_members
      end
    end

    def launch_campaign(folder_name, campaign_name)
      with_session do
        launch_campaign = LaunchCampaign.new
        interact_object = InteractObject.new
        interact_object.folderName = folder_name 
        interact_object.objectName = campaign_name 
        launch_campaign.campaign = interact_object
        @responsys_client.launchCampaign launch_campaign
      end
    end

    def trigger_campaign(folder_name, campaign_name, email, options = {})
      trigger_user_campaign(campaign_name, {:email => email}, options)
    end

    def trigger_user_campaign(campaign_name, recipient_info, options = {})
      # Responsys requires something in the optional data for SOAP bindings to work
      options[:foo] = :bar if options.size == 0

      with_session do
        trigger_campaign_message = TriggerCampaignMessage.new
        recipient = Recipient.new
        recipient.emailAddress = recipient_info[:email] if recipient_info[:email]
        recipient.customerId = recipient_info[:id] if recipient_info[:id]
        recipient_data = RecipientData.new
        recipient_data.optionalData = []
        recipient_data.recipient = recipient
        options.each_pair do |k, v|
          optional_data = OptionalData.new
          optional_data.name = k
          v.gsub!(/[[:cntrl:]]/, ' ') if v.is_a? String
          optional_data.value = v 
          recipient_data.optionalData << optional_data
        end
        interact_object = InteractObject.new
        interact_object.folderName = 'ignored'
        interact_object.objectName = campaign_name
        trigger_campaign_message.campaign = interact_object
        trigger_campaign_message.recipientData = recipient_data
        @responsys_client.triggerCampaignMessage trigger_campaign_message
      end
    end

    def with_timeout
      Timeout::timeout(60, ResponsysTimeoutError) do
        yield
      end
    end

    def with_session
      begin
        with_timeout do
          login if @session_id.nil?
        end
        with_application_error do
          with_timeout do
            yield
          end
        end
      ensure
        with_timeout do
          logout unless @keep_alive 
        end
      end
    end

    protected

    # Attempts to find the actual service error within SOAP:::FaultError and raise that instead
    def with_application_error
      begin
        yield
      rescue SOAP::FaultError => e
        inner_e = e.detail[e.faultstring.data]
        raise inner_e if inner_e
        raise e
      end
    end
  end
end

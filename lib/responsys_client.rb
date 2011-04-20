require 'rubygems'
gem 'soap4r'
require 'stub/defaultDriver.rb'
require 'stub/defaultMappingRegistry.rb'

module SunDawg
  class ResponsysClient

    class TooManyUsersError < StandardError
    end

    attr_reader :session_id
    attr_accessor :keep_alive

    def initialize(username, password, options = {})
      @username = username
      @password = password
      @keep_alive = false
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

    def save_users(folder_name, list_name, users) 
      raise TooManyUsersError if users.size > 200
      with_session do
        list_merge_rule = ListMergeRule.new
        list_merge_rule.insertOnNoMatch = true
        list_merge_rule.updateOnMatch = UpdateOnMatch::REPLACE_ALL
        list_merge_rule.matchColumnName1 = "EMAIL_ADDRESS_"
        list_merge_rule.defaultPermissionStatus = PermissionStatus::OPTIN
        record_data = RecordData.new
        record_data.fieldNames = SunDawg::Responsys::User.responsys_fields
        record_data.records = []
        users.each do |user|
          record = Record.new
          record = user.values
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

    def with_session
      begin
        login if @session_id.nil?
        with_application_error do
          yield
        end
      ensure
        logout unless @keep_alive 
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

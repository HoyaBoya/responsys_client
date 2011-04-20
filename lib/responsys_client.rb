require 'rubygems'
gem 'soap4r'
require 'stub/defaultDriver.rb'
require 'stub/defaultMappingRegistry.rb'

module SunDawg
  class ResponsysClient
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

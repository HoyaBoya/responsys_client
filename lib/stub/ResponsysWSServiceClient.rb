#!/usr/bin/env ruby
require 'defaultDriver.rb'

endpoint_url = ARGV.shift
obj = ResponsysWS.new(endpoint_url)

# run ruby with -d to see SOAP wiredumps.
obj.wiredump_dev = STDERR if $DEBUG

# SYNOPSIS
#   login(parameters)
#
# ARGS
#   parameters      Login - {urn:ws.rsys.com}login
#
# RETURNS
#   parameters      LoginResponse - {urn:ws.rsys.com}loginResponse
#
# RAISES
#   fault           AccountFault - {urn:fault.ws.rsys.com}AccountFault
#   fault           UnexpectedErrorFault - {urn:fault.ws.rsys.com}UnexpectedErrorFault
#
parameters = nil
puts obj.login(parameters)

# SYNOPSIS
#   authenticateServer(parameters)
#
# ARGS
#   parameters      AuthenticateServer - {urn:ws.rsys.com}authenticateServer
#
# RETURNS
#   parameters      AuthenticateServerResponse - {urn:ws.rsys.com}authenticateServerResponse
#
# RAISES
#   fault           AccountFault - {urn:fault.ws.rsys.com}AccountFault
#   fault           UnexpectedErrorFault - {urn:fault.ws.rsys.com}UnexpectedErrorFault
#
parameters = nil
puts obj.authenticateServer(parameters)

# SYNOPSIS
#   loginWithCertificate(parameters)
#
# ARGS
#   parameters      LoginWithCertificate - {urn:ws.rsys.com}loginWithCertificate
#
# RETURNS
#   parameters      LoginWithCertificateResponse - {urn:ws.rsys.com}loginWithCertificateResponse
#
# RAISES
#   fault           AccountFault - {urn:fault.ws.rsys.com}AccountFault
#   fault           UnexpectedErrorFault - {urn:fault.ws.rsys.com}UnexpectedErrorFault
#
parameters = nil
puts obj.loginWithCertificate(parameters)

# SYNOPSIS
#   logout(parameters)
#
# ARGS
#   parameters      Logout - {urn:ws.rsys.com}logout
#
# RETURNS
#   parameters      LogoutResponse - {urn:ws.rsys.com}logoutResponse
#
# RAISES
#   fault           UnexpectedErrorFault - {urn:fault.ws.rsys.com}UnexpectedErrorFault
#
parameters = nil
puts obj.logout(parameters)

# SYNOPSIS
#   createFolder(parameters)
#
# ARGS
#   parameters      CreateFolder - {urn:ws.rsys.com}createFolder
#
# RETURNS
#   parameters      CreateFolderResponse - {urn:ws.rsys.com}createFolderResponse
#
# RAISES
#   fault           FolderFault - {urn:fault.ws.rsys.com}FolderFault
#   fault           UnexpectedErrorFault - {urn:fault.ws.rsys.com}UnexpectedErrorFault
#
parameters = nil
puts obj.createFolder(parameters)

# SYNOPSIS
#   deleteFolder(parameters)
#
# ARGS
#   parameters      DeleteFolder - {urn:ws.rsys.com}deleteFolder
#
# RETURNS
#   parameters      DeleteFolderResponse - {urn:ws.rsys.com}deleteFolderResponse
#
# RAISES
#   fault           FolderFault - {urn:fault.ws.rsys.com}FolderFault
#   fault           UnexpectedErrorFault - {urn:fault.ws.rsys.com}UnexpectedErrorFault
#
parameters = nil
puts obj.deleteFolder(parameters)

# SYNOPSIS
#   listFolders(parameters)
#
# ARGS
#   parameters      ListFolders - {urn:ws.rsys.com}listFolders
#
# RETURNS
#   parameters      ListFoldersResponse - {urn:ws.rsys.com}listFoldersResponse
#
# RAISES
#   fault           UnexpectedErrorFault - {urn:fault.ws.rsys.com}UnexpectedErrorFault
#
parameters = nil
puts obj.listFolders(parameters)

# SYNOPSIS
#   listFolderObjects(parameters)
#
# ARGS
#   parameters      ListFolderObjects - {urn:ws.rsys.com}listFolderObjects
#
# RETURNS
#   parameters      ListFolderObjectsResponse - {urn:ws.rsys.com}listFolderObjectsResponse
#
# RAISES
#   fault           FolderFault - {urn:fault.ws.rsys.com}FolderFault
#   fault           UnexpectedErrorFault - {urn:fault.ws.rsys.com}UnexpectedErrorFault
#
parameters = nil
puts obj.listFolderObjects(parameters)

# SYNOPSIS
#   triggerCampaignMessage(parameters)
#
# ARGS
#   parameters      TriggerCampaignMessage - {urn:ws.rsys.com}triggerCampaignMessage
#
# RETURNS
#   parameters      TriggerCampaignMessageResponse - {urn:ws.rsys.com}triggerCampaignMessageResponse
#
# RAISES
#   fault           UnexpectedErrorFault - {urn:fault.ws.rsys.com}UnexpectedErrorFault
#   fault           TriggeredMessageFault - {urn:fault.ws.rsys.com}TriggeredMessageFault
#
parameters = nil
puts obj.triggerCampaignMessage(parameters)

# SYNOPSIS
#   triggerCustomEvent(parameters)
#
# ARGS
#   parameters      TriggerCustomEvent - {urn:ws.rsys.com}triggerCustomEvent
#
# RETURNS
#   parameters      TriggerCustomEventResponse - {urn:ws.rsys.com}triggerCustomEventResponse
#
# RAISES
#   fault           CustomEventFault - {urn:fault.ws.rsys.com}CustomEventFault
#   fault           UnexpectedErrorFault - {urn:fault.ws.rsys.com}UnexpectedErrorFault
#
parameters = nil
puts obj.triggerCustomEvent(parameters)

# SYNOPSIS
#   createCampaign(parameters)
#
# ARGS
#   parameters      CreateCampaign - {urn:ws.rsys.com}createCampaign
#
# RETURNS
#   parameters      CreateCampaignResponse - {urn:ws.rsys.com}createCampaignResponse
#
# RAISES
#   fault           CampaignFault - {urn:fault.ws.rsys.com}CampaignFault
#   fault           UnexpectedErrorFault - {urn:fault.ws.rsys.com}UnexpectedErrorFault
#
parameters = nil
puts obj.createCampaign(parameters)

# SYNOPSIS
#   setCampaignProperties(parameters)
#
# ARGS
#   parameters      SetCampaignProperties - {urn:ws.rsys.com}setCampaignProperties
#
# RETURNS
#   parameters      SetCampaignPropertiesResponse - {urn:ws.rsys.com}setCampaignPropertiesResponse
#
# RAISES
#   fault           CampaignFault - {urn:fault.ws.rsys.com}CampaignFault
#   fault           UnexpectedErrorFault - {urn:fault.ws.rsys.com}UnexpectedErrorFault
#
parameters = nil
puts obj.setCampaignProperties(parameters)

# SYNOPSIS
#   getCampaignProperties(parameters)
#
# ARGS
#   parameters      GetCampaignProperties - {urn:ws.rsys.com}getCampaignProperties
#
# RETURNS
#   parameters      GetCampaignPropertiesResponse - {urn:ws.rsys.com}getCampaignPropertiesResponse
#
# RAISES
#   fault           CampaignFault - {urn:fault.ws.rsys.com}CampaignFault
#   fault           UnexpectedErrorFault - {urn:fault.ws.rsys.com}UnexpectedErrorFault
#
parameters = nil
puts obj.getCampaignProperties(parameters)

# SYNOPSIS
#   launchCampaign(parameters)
#
# ARGS
#   parameters      LaunchCampaign - {urn:ws.rsys.com}launchCampaign
#
# RETURNS
#   parameters      LaunchCampaignResponse - {urn:ws.rsys.com}launchCampaignResponse
#
# RAISES
#   fault           CampaignFault - {urn:fault.ws.rsys.com}CampaignFault
#   fault           UnexpectedErrorFault - {urn:fault.ws.rsys.com}UnexpectedErrorFault
#
parameters = nil
puts obj.launchCampaign(parameters)

# SYNOPSIS
#   scheduleCampaignLaunch(parameters)
#
# ARGS
#   parameters      ScheduleCampaignLaunch - {urn:ws.rsys.com}scheduleCampaignLaunch
#
# RETURNS
#   parameters      ScheduleCampaignLaunchResponse - {urn:ws.rsys.com}scheduleCampaignLaunchResponse
#
# RAISES
#   fault           CampaignFault - {urn:fault.ws.rsys.com}CampaignFault
#   fault           UnexpectedErrorFault - {urn:fault.ws.rsys.com}UnexpectedErrorFault
#
parameters = nil
puts obj.scheduleCampaignLaunch(parameters)

# SYNOPSIS
#   getLaunchStatus(parameters)
#
# ARGS
#   parameters      GetLaunchStatus - {urn:ws.rsys.com}getLaunchStatus
#
# RETURNS
#   parameters      GetLaunchStatusResponse - {urn:ws.rsys.com}getLaunchStatusResponse
#
# RAISES
#   fault           CampaignFault - {urn:fault.ws.rsys.com}CampaignFault
#   fault           UnexpectedErrorFault - {urn:fault.ws.rsys.com}UnexpectedErrorFault
#
parameters = nil
puts obj.getLaunchStatus(parameters)

# SYNOPSIS
#   getCampaignId(parameters)
#
# ARGS
#   parameters      GetCampaignId - {urn:ws.rsys.com}getCampaignId
#
# RETURNS
#   parameters      GetCampaignIdResponse - {urn:ws.rsys.com}getCampaignIdResponse
#
# RAISES
#   fault           CampaignFault - {urn:fault.ws.rsys.com}CampaignFault
#   fault           UnexpectedErrorFault - {urn:fault.ws.rsys.com}UnexpectedErrorFault
#
parameters = nil
puts obj.getCampaignId(parameters)

# SYNOPSIS
#   deleteCampaign(parameters)
#
# ARGS
#   parameters      DeleteCampaign - {urn:ws.rsys.com}deleteCampaign
#
# RETURNS
#   parameters      DeleteCampaignResponse - {urn:ws.rsys.com}deleteCampaignResponse
#
# RAISES
#   fault           CampaignFault - {urn:fault.ws.rsys.com}CampaignFault
#   fault           UnexpectedErrorFault - {urn:fault.ws.rsys.com}UnexpectedErrorFault
#
parameters = nil
puts obj.deleteCampaign(parameters)

# SYNOPSIS
#   getLaunchesForCampaign(parameters)
#
# ARGS
#   parameters      GetLaunchesForCampaign - {urn:ws.rsys.com}getLaunchesForCampaign
#
# RETURNS
#   parameters      GetLaunchesForCampaignResponse - {urn:ws.rsys.com}getLaunchesForCampaignResponse
#
# RAISES
#   fault           CampaignFault - {urn:fault.ws.rsys.com}CampaignFault
#   fault           UnexpectedErrorFault - {urn:fault.ws.rsys.com}UnexpectedErrorFault
#
parameters = nil
puts obj.getLaunchesForCampaign(parameters)

# SYNOPSIS
#   getOpenLaunches(parameters)
#
# ARGS
#   parameters      GetOpenLaunches - {urn:ws.rsys.com}getOpenLaunches
#
# RETURNS
#   parameters      GetOpenLaunchesResponse - {urn:ws.rsys.com}getOpenLaunchesResponse
#
# RAISES
#   fault           AccountFault - {urn:fault.ws.rsys.com}AccountFault
#   fault           UnexpectedErrorFault - {urn:fault.ws.rsys.com}UnexpectedErrorFault
#
parameters = nil
puts obj.getOpenLaunches(parameters)

# SYNOPSIS
#   closeCampaign(parameters)
#
# ARGS
#   parameters      CloseCampaign - {urn:ws.rsys.com}closeCampaign
#
# RETURNS
#   parameters      CloseCampaignResponse - {urn:ws.rsys.com}closeCampaignResponse
#
# RAISES
#   fault           CampaignFault - {urn:fault.ws.rsys.com}CampaignFault
#   fault           UnexpectedErrorFault - {urn:fault.ws.rsys.com}UnexpectedErrorFault
#
parameters = nil
puts obj.closeCampaign(parameters)

# SYNOPSIS
#   unscheduleCampaignLaunch(parameters)
#
# ARGS
#   parameters      UnscheduleCampaignLaunch - {urn:ws.rsys.com}unscheduleCampaignLaunch
#
# RETURNS
#   parameters      UnscheduleCampaignLaunchResponse - {urn:ws.rsys.com}unscheduleCampaignLaunchResponse
#
# RAISES
#   fault           CampaignFault - {urn:fault.ws.rsys.com}CampaignFault
#   fault           UnexpectedErrorFault - {urn:fault.ws.rsys.com}UnexpectedErrorFault
#
parameters = nil
puts obj.unscheduleCampaignLaunch(parameters)

# SYNOPSIS
#   createList(parameters)
#
# ARGS
#   parameters      CreateList - {urn:ws.rsys.com}createList
#
# RETURNS
#   parameters      CreateListResponse - {urn:ws.rsys.com}createListResponse
#
# RAISES
#   fault           ListFault - {urn:fault.ws.rsys.com}ListFault
#   fault           UnexpectedErrorFault - {urn:fault.ws.rsys.com}UnexpectedErrorFault
#
parameters = nil
puts obj.createList(parameters)

# SYNOPSIS
#   changeListSchema(parameters)
#
# ARGS
#   parameters      ChangeListSchema - {urn:ws.rsys.com}changeListSchema
#
# RETURNS
#   parameters      ChangeListSchemaResponse - {urn:ws.rsys.com}changeListSchemaResponse
#
# RAISES
#   fault           ListFault - {urn:fault.ws.rsys.com}ListFault
#   fault           UnexpectedErrorFault - {urn:fault.ws.rsys.com}UnexpectedErrorFault
#
parameters = nil
puts obj.changeListSchema(parameters)

# SYNOPSIS
#   deleteList(parameters)
#
# ARGS
#   parameters      DeleteList - {urn:ws.rsys.com}deleteList
#
# RETURNS
#   parameters      DeleteListResponse - {urn:ws.rsys.com}deleteListResponse
#
# RAISES
#   fault           ListFault - {urn:fault.ws.rsys.com}ListFault
#   fault           UnexpectedErrorFault - {urn:fault.ws.rsys.com}UnexpectedErrorFault
#
parameters = nil
puts obj.deleteList(parameters)

# SYNOPSIS
#   mergeListMembers(parameters)
#
# ARGS
#   parameters      MergeListMembers - {urn:ws.rsys.com}mergeListMembers
#
# RETURNS
#   parameters      MergeListMembersResponse - {urn:ws.rsys.com}mergeListMembersResponse
#
# RAISES
#   fault           ListFault - {urn:fault.ws.rsys.com}ListFault
#   fault           UnexpectedErrorFault - {urn:fault.ws.rsys.com}UnexpectedErrorFault
#
parameters = nil
puts obj.mergeListMembers(parameters)

# SYNOPSIS
#   retrieveListMembers(parameters)
#
# ARGS
#   parameters      RetrieveListMembers - {urn:ws.rsys.com}retrieveListMembers
#
# RETURNS
#   parameters      RetrieveListMembersResponse - {urn:ws.rsys.com}retrieveListMembersResponse
#
# RAISES
#   fault           ListFault - {urn:fault.ws.rsys.com}ListFault
#   fault           UnexpectedErrorFault - {urn:fault.ws.rsys.com}UnexpectedErrorFault
#
parameters = nil
puts obj.retrieveListMembers(parameters)

# SYNOPSIS
#   deleteListMembers(parameters)
#
# ARGS
#   parameters      DeleteListMembers - {urn:ws.rsys.com}deleteListMembers
#
# RETURNS
#   parameters      DeleteListMembersResponse - {urn:ws.rsys.com}deleteListMembersResponse
#
# RAISES
#   fault           ListFault - {urn:fault.ws.rsys.com}ListFault
#   fault           UnexpectedErrorFault - {urn:fault.ws.rsys.com}UnexpectedErrorFault
#
parameters = nil
puts obj.deleteListMembers(parameters)

# SYNOPSIS
#   getUpdated(parameters)
#
# ARGS
#   parameters      GetUpdated - {urn:ws.rsys.com}getUpdated
#
# RETURNS
#   parameters      GetUpdatedResponse - {urn:ws.rsys.com}getUpdatedResponse
#
# RAISES
#   fault           ListFault - {urn:fault.ws.rsys.com}ListFault
#   fault           UnexpectedErrorFault - {urn:fault.ws.rsys.com}UnexpectedErrorFault
#
parameters = nil
puts obj.getUpdated(parameters)

# SYNOPSIS
#   createTable(parameters)
#
# ARGS
#   parameters      CreateTable - {urn:ws.rsys.com}createTable
#
# RETURNS
#   parameters      CreateTableResponse - {urn:ws.rsys.com}createTableResponse
#
# RAISES
#   fault           TableFault - {urn:fault.ws.rsys.com}TableFault
#   fault           UnexpectedErrorFault - {urn:fault.ws.rsys.com}UnexpectedErrorFault
#
parameters = nil
puts obj.createTable(parameters)

# SYNOPSIS
#   deleteTable(parameters)
#
# ARGS
#   parameters      DeleteTable - {urn:ws.rsys.com}deleteTable
#
# RETURNS
#   parameters      DeleteTableResponse - {urn:ws.rsys.com}deleteTableResponse
#
# RAISES
#   fault           TableFault - {urn:fault.ws.rsys.com}TableFault
#   fault           UnexpectedErrorFault - {urn:fault.ws.rsys.com}UnexpectedErrorFault
#
parameters = nil
puts obj.deleteTable(parameters)

# SYNOPSIS
#   changeTableSchema(parameters)
#
# ARGS
#   parameters      ChangeTableSchema - {urn:ws.rsys.com}changeTableSchema
#
# RETURNS
#   parameters      ChangeTableSchemaResponse - {urn:ws.rsys.com}changeTableSchemaResponse
#
# RAISES
#   fault           TableFault - {urn:fault.ws.rsys.com}TableFault
#   fault           UnexpectedErrorFault - {urn:fault.ws.rsys.com}UnexpectedErrorFault
#
parameters = nil
puts obj.changeTableSchema(parameters)

# SYNOPSIS
#   mergeTableRecords(parameters)
#
# ARGS
#   parameters      MergeTableRecords - {urn:ws.rsys.com}mergeTableRecords
#
# RETURNS
#   parameters      MergeTableRecordsResponse - {urn:ws.rsys.com}mergeTableRecordsResponse
#
# RAISES
#   fault           TableFault - {urn:fault.ws.rsys.com}TableFault
#   fault           UnexpectedErrorFault - {urn:fault.ws.rsys.com}UnexpectedErrorFault
#
parameters = nil
puts obj.mergeTableRecords(parameters)

# SYNOPSIS
#   retrieveTableRecords(parameters)
#
# ARGS
#   parameters      RetrieveTableRecords - {urn:ws.rsys.com}retrieveTableRecords
#
# RETURNS
#   parameters      RetrieveTableRecordsResponse - {urn:ws.rsys.com}retrieveTableRecordsResponse
#
# RAISES
#   fault           TableFault - {urn:fault.ws.rsys.com}TableFault
#   fault           UnexpectedErrorFault - {urn:fault.ws.rsys.com}UnexpectedErrorFault
#
parameters = nil
puts obj.retrieveTableRecords(parameters)

# SYNOPSIS
#   deleteTableRecords(parameters)
#
# ARGS
#   parameters      DeleteTableRecords - {urn:ws.rsys.com}deleteTableRecords
#
# RETURNS
#   parameters      DeleteTableRecordsResponse - {urn:ws.rsys.com}deleteTableRecordsResponse
#
# RAISES
#   fault           TableFault - {urn:fault.ws.rsys.com}TableFault
#   fault           UnexpectedErrorFault - {urn:fault.ws.rsys.com}UnexpectedErrorFault
#
parameters = nil
puts obj.deleteTableRecords(parameters)

# SYNOPSIS
#   truncateTable(parameters)
#
# ARGS
#   parameters      TruncateTable - {urn:ws.rsys.com}truncateTable
#
# RETURNS
#   parameters      TruncateTableResponse - {urn:ws.rsys.com}truncateTableResponse
#
# RAISES
#   fault           TableFault - {urn:fault.ws.rsys.com}TableFault
#   fault           UnexpectedErrorFault - {urn:fault.ws.rsys.com}UnexpectedErrorFault
#
parameters = nil
puts obj.truncateTable(parameters)

# SYNOPSIS
#   createSQLView(parameters)
#
# ARGS
#   parameters      CreateSQLView - {urn:ws.rsys.com}createSQLView
#
# RETURNS
#   parameters      CreateSQLViewResponse - {urn:ws.rsys.com}createSQLViewResponse
#
# RAISES
#   fault           TableFault - {urn:fault.ws.rsys.com}TableFault
#   fault           UnexpectedErrorFault - {urn:fault.ws.rsys.com}UnexpectedErrorFault
#
parameters = nil
puts obj.createSQLView(parameters)

# SYNOPSIS
#   createLinkTable(parameters)
#
# ARGS
#   parameters      CreateLinkTable - {urn:ws.rsys.com}createLinkTable
#
# RETURNS
#   parameters      CreateLinkTableResponse - {urn:ws.rsys.com}createLinkTableResponse
#
# RAISES
#   fault           LinkTableFault - {urn:fault.ws.rsys.com}LinkTableFault
#   fault           UnexpectedErrorFault - {urn:fault.ws.rsys.com}UnexpectedErrorFault
#
parameters = nil
puts obj.createLinkTable(parameters)

# SYNOPSIS
#   deleteLinkTable(parameters)
#
# ARGS
#   parameters      DeleteLinkTable - {urn:ws.rsys.com}deleteLinkTable
#
# RETURNS
#   parameters      DeleteLinkTableResponse - {urn:ws.rsys.com}deleteLinkTableResponse
#
# RAISES
#   fault           LinkTableFault - {urn:fault.ws.rsys.com}LinkTableFault
#   fault           UnexpectedErrorFault - {urn:fault.ws.rsys.com}UnexpectedErrorFault
#
parameters = nil
puts obj.deleteLinkTable(parameters)

# SYNOPSIS
#   mergeLinkRecords(parameters)
#
# ARGS
#   parameters      MergeLinkRecords - {urn:ws.rsys.com}mergeLinkRecords
#
# RETURNS
#   parameters      MergeLinkRecordsResponse - {urn:ws.rsys.com}mergeLinkRecordsResponse
#
# RAISES
#   fault           LinkTableFault - {urn:fault.ws.rsys.com}LinkTableFault
#   fault           UnexpectedErrorFault - {urn:fault.ws.rsys.com}UnexpectedErrorFault
#
parameters = nil
puts obj.mergeLinkRecords(parameters)

# SYNOPSIS
#   retrieveLinkRecords(parameters)
#
# ARGS
#   parameters      RetrieveLinkRecords - {urn:ws.rsys.com}retrieveLinkRecords
#
# RETURNS
#   parameters      RetrieveLinkRecordsResponse - {urn:ws.rsys.com}retrieveLinkRecordsResponse
#
# RAISES
#   fault           LinkTableFault - {urn:fault.ws.rsys.com}LinkTableFault
#   fault           UnexpectedErrorFault - {urn:fault.ws.rsys.com}UnexpectedErrorFault
#
parameters = nil
puts obj.retrieveLinkRecords(parameters)

# SYNOPSIS
#   deleteLinkRecords(parameters)
#
# ARGS
#   parameters      DeleteLinkRecords - {urn:ws.rsys.com}deleteLinkRecords
#
# RETURNS
#   parameters      DeleteLinkRecordsResponse - {urn:ws.rsys.com}deleteLinkRecordsResponse
#
# RAISES
#   fault           LinkTableFault - {urn:fault.ws.rsys.com}LinkTableFault
#   fault           UnexpectedErrorFault - {urn:fault.ws.rsys.com}UnexpectedErrorFault
#
parameters = nil
puts obj.deleteLinkRecords(parameters)

# SYNOPSIS
#   createDocument(parameters)
#
# ARGS
#   parameters      CreateDocument - {urn:ws.rsys.com}createDocument
#
# RETURNS
#   parameters      CreateDocumentResponse - {urn:ws.rsys.com}createDocumentResponse
#
# RAISES
#   fault           DocumentFault - {urn:fault.ws.rsys.com}DocumentFault
#   fault           UnexpectedErrorFault - {urn:fault.ws.rsys.com}UnexpectedErrorFault
#
parameters = nil
puts obj.createDocument(parameters)

# SYNOPSIS
#   deleteDocument(parameters)
#
# ARGS
#   parameters      DeleteDocument - {urn:ws.rsys.com}deleteDocument
#
# RETURNS
#   parameters      DeleteDocumentResponse - {urn:ws.rsys.com}deleteDocumentResponse
#
# RAISES
#   fault           DocumentFault - {urn:fault.ws.rsys.com}DocumentFault
#   fault           UnexpectedErrorFault - {urn:fault.ws.rsys.com}UnexpectedErrorFault
#
parameters = nil
puts obj.deleteDocument(parameters)

# SYNOPSIS
#   setDocumentImages(parameters)
#
# ARGS
#   parameters      SetDocumentImages - {urn:ws.rsys.com}setDocumentImages
#
# RETURNS
#   parameters      SetDocumentImagesResponse - {urn:ws.rsys.com}setDocumentImagesResponse
#
# RAISES
#   fault           DocumentFault - {urn:fault.ws.rsys.com}DocumentFault
#   fault           UnexpectedErrorFault - {urn:fault.ws.rsys.com}UnexpectedErrorFault
#
parameters = nil
puts obj.setDocumentImages(parameters)

# SYNOPSIS
#   getDocumentImages(parameters)
#
# ARGS
#   parameters      GetDocumentImages - {urn:ws.rsys.com}getDocumentImages
#
# RETURNS
#   parameters      GetDocumentImagesResponse - {urn:ws.rsys.com}getDocumentImagesResponse
#
# RAISES
#   fault           DocumentFault - {urn:fault.ws.rsys.com}DocumentFault
#   fault           UnexpectedErrorFault - {urn:fault.ws.rsys.com}UnexpectedErrorFault
#
parameters = nil
puts obj.getDocumentImages(parameters)

# SYNOPSIS
#   setDocumentContent(parameters)
#
# ARGS
#   parameters      SetDocumentContent - {urn:ws.rsys.com}setDocumentContent
#
# RETURNS
#   parameters      SetDocumentContentResponse - {urn:ws.rsys.com}setDocumentContentResponse
#
# RAISES
#   fault           DocumentFault - {urn:fault.ws.rsys.com}DocumentFault
#   fault           UnexpectedErrorFault - {urn:fault.ws.rsys.com}UnexpectedErrorFault
#
parameters = nil
puts obj.setDocumentContent(parameters)

# SYNOPSIS
#   getDocumentContent(parameters)
#
# ARGS
#   parameters      GetDocumentContent - {urn:ws.rsys.com}getDocumentContent
#
# RETURNS
#   parameters      GetDocumentContentResponse - {urn:ws.rsys.com}getDocumentContentResponse
#
# RAISES
#   fault           DocumentFault - {urn:fault.ws.rsys.com}DocumentFault
#   fault           UnexpectedErrorFault - {urn:fault.ws.rsys.com}UnexpectedErrorFault
#
parameters = nil
puts obj.getDocumentContent(parameters)

# SYNOPSIS
#   copy(parameters)
#
# ARGS
#   parameters      Copy - {urn:ws.rsys.com}copy
#
# RETURNS
#   parameters      CopyResponse - {urn:ws.rsys.com}copyResponse
#
# RAISES
#   fault           UnexpectedErrorFault - {urn:fault.ws.rsys.com}UnexpectedErrorFault
#   fault           ObjectFault - {urn:fault.ws.rsys.com}ObjectFault
#
parameters = nil
puts obj.copy(parameters)

# SYNOPSIS
#   move(parameters)
#
# ARGS
#   parameters      Move - {urn:ws.rsys.com}move
#
# RETURNS
#   parameters      MoveResponse - {urn:ws.rsys.com}moveResponse
#
# RAISES
#   fault           UnexpectedErrorFault - {urn:fault.ws.rsys.com}UnexpectedErrorFault
#   fault           ObjectFault - {urn:fault.ws.rsys.com}ObjectFault
#
parameters = nil
puts obj.move(parameters)

# SYNOPSIS
#   getServerTimestamp(parameters)
#
# ARGS
#   parameters      GetServerTimestamp - {urn:ws.rsys.com}getServerTimestamp
#
# RETURNS
#   parameters      GetServerTimestampResponse - {urn:ws.rsys.com}getServerTimestampResponse
#
# RAISES
#   fault           UnexpectedErrorFault - {urn:fault.ws.rsys.com}UnexpectedErrorFault
#
parameters = nil
puts obj.getServerTimestamp(parameters)

# SYNOPSIS
#   describeObjects(parameters)
#
# ARGS
#   parameters      DescribeObjects - {urn:ws.rsys.com}describeObjects
#
# RETURNS
#   parameters      DescribeObjectsResponse - {urn:ws.rsys.com}describeObjectsResponse
#
# RAISES
#   fault           UnexpectedErrorFault - {urn:fault.ws.rsys.com}UnexpectedErrorFault
#   fault           ObjectFault - {urn:fault.ws.rsys.com}ObjectFault
#
parameters = nil
puts obj.describeObjects(parameters)

# SYNOPSIS
#   runJob(parameters)
#
# ARGS
#   parameters      RunJob - {urn:ws.rsys.com}runJob
#
# RETURNS
#   parameters      RunJobResponse - {urn:ws.rsys.com}runJobResponse
#
# RAISES
#   fault           ConnectFault - {urn:fault.ws.rsys.com}ConnectFault
#   fault           UnexpectedErrorFault - {urn:fault.ws.rsys.com}UnexpectedErrorFault
#
parameters = nil
puts obj.runJob(parameters)

# SYNOPSIS
#   getJobRunStatus(parameters)
#
# ARGS
#   parameters      GetJobRunStatus - {urn:ws.rsys.com}getJobRunStatus
#
# RETURNS
#   parameters      GetJobRunStatusResponse - {urn:ws.rsys.com}getJobRunStatusResponse
#
# RAISES
#   fault           ConnectFault - {urn:fault.ws.rsys.com}ConnectFault
#   fault           UnexpectedErrorFault - {urn:fault.ws.rsys.com}UnexpectedErrorFault
#
parameters = nil
puts obj.getJobRunStatus(parameters)

# SYNOPSIS
#   getJobs(parameters)
#
# ARGS
#   parameters      GetJobs - {urn:ws.rsys.com}getJobs
#
# RETURNS
#   parameters      GetJobsResponse - {urn:ws.rsys.com}getJobsResponse
#
# RAISES
#   fault           ConnectFault - {urn:fault.ws.rsys.com}ConnectFault
#   fault           UnexpectedErrorFault - {urn:fault.ws.rsys.com}UnexpectedErrorFault
#
parameters = nil
puts obj.getJobs(parameters)

# SYNOPSIS
#   getJobRuns(parameters)
#
# ARGS
#   parameters      GetJobRuns - {urn:ws.rsys.com}getJobRuns
#
# RETURNS
#   parameters      GetJobRunsResponse - {urn:ws.rsys.com}getJobRunsResponse
#
# RAISES
#   fault           ConnectFault - {urn:fault.ws.rsys.com}ConnectFault
#   fault           UnexpectedErrorFault - {urn:fault.ws.rsys.com}UnexpectedErrorFault
#
parameters = nil
puts obj.getJobRuns(parameters)

# SYNOPSIS
#   getJobRunLog(parameters)
#
# ARGS
#   parameters      GetJobRunLog - {urn:ws.rsys.com}getJobRunLog
#
# RETURNS
#   parameters      GetJobRunLogResponse - {urn:ws.rsys.com}getJobRunLogResponse
#
# RAISES
#   fault           ConnectFault - {urn:fault.ws.rsys.com}ConnectFault
#   fault           UnexpectedErrorFault - {urn:fault.ws.rsys.com}UnexpectedErrorFault
#
parameters = nil
puts obj.getJobRunLog(parameters)

# SYNOPSIS
#   mergeListMembersRIID(parameters)
#
# ARGS
#   parameters      MergeListMembersRIID - {urn:ws.rsys.com}mergeListMembersRIID
#
# RETURNS
#   parameters      MergeListMembersRIIDResponse - {urn:ws.rsys.com}mergeListMembersRIIDResponse
#
# RAISES
#   fault           ListFault - {urn:fault.ws.rsys.com}ListFault
#   fault           UnexpectedErrorFault - {urn:fault.ws.rsys.com}UnexpectedErrorFault
#
parameters = nil
puts obj.mergeListMembersRIID(parameters)

# SYNOPSIS
#   mergeIntoProfileExtension(parameters)
#
# ARGS
#   parameters      MergeIntoProfileExtension - {urn:ws.rsys.com}mergeIntoProfileExtension
#
# RETURNS
#   parameters      MergeIntoProfileExtensionResponse - {urn:ws.rsys.com}mergeIntoProfileExtensionResponse
#
# RAISES
#   fault           UnexpectedErrorFault - {urn:fault.ws.rsys.com}UnexpectedErrorFault
#   fault           ListExtensionFault - {urn:fault.ws.rsys.com}ListExtensionFault
#
parameters = nil
puts obj.mergeIntoProfileExtension(parameters)



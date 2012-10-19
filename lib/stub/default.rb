require 'xsd/qname'

module SunDawg
  module Responsys
    # {urn:ws.rsys.com}LoginResult
    #   sessionId - SOAP::SOAPString
    class LoginResult
      attr_accessor :sessionId

      def initialize(sessionId = nil)
        @sessionId = sessionId
      end
    end

    # {urn:ws.rsys.com}ServerAuthResult
    #   authSessionId - SOAP::SOAPString
    #   encryptedClientChallenge - SOAP::SOAPByte
    #   serverChallenge - SOAP::SOAPByte
    class ServerAuthResult
      attr_accessor :authSessionId
      attr_accessor :encryptedClientChallenge
      attr_accessor :serverChallenge

      def initialize(authSessionId = nil, encryptedClientChallenge = [], serverChallenge = [])
        @authSessionId = authSessionId
        @encryptedClientChallenge = encryptedClientChallenge
        @serverChallenge = serverChallenge
      end
    end

    # {urn:ws.rsys.com}FolderResult
    #   name - SOAP::SOAPString
    class FolderResult
      attr_accessor :name

      def initialize(name = nil)
        @name = name
      end
    end

    # {urn:ws.rsys.com}InteractObject
    #   folderName - SOAP::SOAPString
    #   objectName - SOAP::SOAPString
    class InteractObject
      attr_accessor :folderName
      attr_accessor :objectName

      def initialize(folderName = nil, objectName = nil)
        @folderName = folderName
        @objectName = objectName
      end
    end

    # {urn:ws.rsys.com}FolderObjectResult
    #   id - SOAP::SOAPLong
    #   name - InteractObject
    #   type - FolderObjectType
    #   subType - SOAP::SOAPString
    class FolderObjectResult
      attr_accessor :id
      attr_accessor :name
      attr_accessor :type
      attr_accessor :subType

      def initialize(id = nil, name = nil, type = nil, subType = nil)
        @id = id
        @name = name
        @type = type
        @subType = subType
      end
    end

    # {urn:ws.rsys.com}Recipient
    #   listName - InteractObject
    #   recipientId - SOAP::SOAPLong
    #   customerId - SOAP::SOAPString
    #   emailAddress - SOAP::SOAPString
    #   mobileNumber - SOAP::SOAPString
    #   emailFormat - EmailFormat
    class Recipient
      attr_accessor :listName
      attr_accessor :recipientId
      attr_accessor :customerId
      attr_accessor :emailAddress
      attr_accessor :mobileNumber
      attr_accessor :emailFormat

      def initialize(listName = nil, recipientId = nil, customerId = nil, emailAddress = nil, mobileNumber = nil, emailFormat = nil)
        @listName = listName
        @recipientId = recipientId
        @customerId = customerId
        @emailAddress = emailAddress
        @mobileNumber = mobileNumber
        @emailFormat = emailFormat
      end
    end

    # {urn:ws.rsys.com}OptionalData
    #   name - SOAP::SOAPString
    #   value - SOAP::SOAPString
    class OptionalData
      attr_accessor :name
      attr_accessor :value

      def initialize(name = nil, value = nil)
        @name = name
        @value = value
      end
    end

    # {urn:ws.rsys.com}CampaignProperties
    #   campaign - InteractObject
    #   campaignId - SOAP::SOAPLong
    #   campaignType - CampaignType
    #   description - SOAP::SOAPString
    #   marketingProgram - SOAP::SOAPString
    #   marketingStrategy - SOAP::SOAPString
    #   list - InteractObject
    #   refiningFilters - InteractObject
    #   refiningDataSource - InteractObject
    #   governanceFilter - InteractObject
    #   supplementalCampaignDataSources - InteractObject
    #   suppressionLists - InteractObject
    #   supplementalProofDataSources - InteractObject
    #   supplementalSeedDataSources - InteractObject
    #   proofList - InteractObject
    #   seedList - InteractObject
    #   segmentation - InteractObject
    #   fromName - SOAP::SOAPString
    #   fromEmail - SOAP::SOAPString
    #   replyToEmail - SOAP::SOAPString
    #   bccEmail - SOAP::SOAPString
    #   subject - SOAP::SOAPString
    #   htmlMessage - InteractObject
    #   textMessage - InteractObject
    #   enableLinkTracking - SOAP::SOAPBoolean
    #   linkTable - InteractObject
    #   enableExternalTracking - SOAP::SOAPBoolean
    #   externalTrackingParams - OptionalData
    #   attachments - InteractObject
    #   campaignVariables - OptionalData
    #   campaignPurpose - CampaignPurpose
    #   useUTF8 - SOAP::SOAPBoolean
    #   locale - RecipientLocale
    #   trackHtmlOpens - SOAP::SOAPBoolean
    #   trackConversions - SOAP::SOAPBoolean
    #   sendTextIfHTMLUnknown - SOAP::SOAPBoolean
    #   segmentTrackingColumnName - SOAP::SOAPString
    #   unsubscribeOption - UnsubscribeOption
    #   unsubscribeForm - SOAP::SOAPString
    #   autoCloseOption - AutoCloseOption
    #   autoCloseValue - SOAP::SOAPString
    #   closedCampaignURL - SOAP::SOAPString
    #   externalCampaignCode - SOAP::SOAPString
    #   salesForceCampaignId - SOAP::SOAPString
    class CampaignProperties
      attr_accessor :campaign
      attr_accessor :campaignId
      attr_accessor :campaignType
      attr_accessor :description
      attr_accessor :marketingProgram
      attr_accessor :marketingStrategy
      attr_accessor :list
      attr_accessor :refiningFilters
      attr_accessor :refiningDataSource
      attr_accessor :governanceFilter
      attr_accessor :supplementalCampaignDataSources
      attr_accessor :suppressionLists
      attr_accessor :supplementalProofDataSources
      attr_accessor :supplementalSeedDataSources
      attr_accessor :proofList
      attr_accessor :seedList
      attr_accessor :segmentation
      attr_accessor :fromName
      attr_accessor :fromEmail
      attr_accessor :replyToEmail
      attr_accessor :bccEmail
      attr_accessor :subject
      attr_accessor :htmlMessage
      attr_accessor :textMessage
      attr_accessor :enableLinkTracking
      attr_accessor :linkTable
      attr_accessor :enableExternalTracking
      attr_accessor :externalTrackingParams
      attr_accessor :attachments
      attr_accessor :campaignVariables
      attr_accessor :campaignPurpose
      attr_accessor :useUTF8
      attr_accessor :locale
      attr_accessor :trackHtmlOpens
      attr_accessor :trackConversions
      attr_accessor :sendTextIfHTMLUnknown
      attr_accessor :segmentTrackingColumnName
      attr_accessor :unsubscribeOption
      attr_accessor :unsubscribeForm
      attr_accessor :autoCloseOption
      attr_accessor :autoCloseValue
      attr_accessor :closedCampaignURL
      attr_accessor :externalCampaignCode
      attr_accessor :salesForceCampaignId

      def initialize(campaign = nil, campaignId = nil, campaignType = nil, description = nil, marketingProgram = nil, marketingStrategy = nil, list = nil, refiningFilters = [], refiningDataSource = nil, governanceFilter = nil, supplementalCampaignDataSources = [], suppressionLists = [], supplementalProofDataSources = [], supplementalSeedDataSources = [], proofList = nil, seedList = nil, segmentation = [], fromName = nil, fromEmail = nil, replyToEmail = nil, bccEmail = nil, subject = nil, htmlMessage = nil, textMessage = nil, enableLinkTracking = nil, linkTable = nil, enableExternalTracking = nil, externalTrackingParams = [], attachments = [], campaignVariables = [], campaignPurpose = nil, useUTF8 = nil, locale = nil, trackHtmlOpens = nil, trackConversions = nil, sendTextIfHTMLUnknown = nil, segmentTrackingColumnName = nil, unsubscribeOption = nil, unsubscribeForm = nil, autoCloseOption = nil, autoCloseValue = nil, closedCampaignURL = nil, externalCampaignCode = nil, salesForceCampaignId = nil)
        @campaign = campaign
        @campaignId = campaignId
        @campaignType = campaignType
        @description = description
        @marketingProgram = marketingProgram
        @marketingStrategy = marketingStrategy
        @list = list
        @refiningFilters = refiningFilters
        @refiningDataSource = refiningDataSource
        @governanceFilter = governanceFilter
        @supplementalCampaignDataSources = supplementalCampaignDataSources
        @suppressionLists = suppressionLists
        @supplementalProofDataSources = supplementalProofDataSources
        @supplementalSeedDataSources = supplementalSeedDataSources
        @proofList = proofList
        @seedList = seedList
        @segmentation = segmentation
        @fromName = fromName
        @fromEmail = fromEmail
        @replyToEmail = replyToEmail
        @bccEmail = bccEmail
        @subject = subject
        @htmlMessage = htmlMessage
        @textMessage = textMessage
        @enableLinkTracking = enableLinkTracking
        @linkTable = linkTable
        @enableExternalTracking = enableExternalTracking
        @externalTrackingParams = externalTrackingParams
        @attachments = attachments
        @campaignVariables = campaignVariables
        @campaignPurpose = campaignPurpose
        @useUTF8 = useUTF8
        @locale = locale
        @trackHtmlOpens = trackHtmlOpens
        @trackConversions = trackConversions
        @sendTextIfHTMLUnknown = sendTextIfHTMLUnknown
        @segmentTrackingColumnName = segmentTrackingColumnName
        @unsubscribeOption = unsubscribeOption
        @unsubscribeForm = unsubscribeForm
        @autoCloseOption = autoCloseOption
        @autoCloseValue = autoCloseValue
        @closedCampaignURL = closedCampaignURL
        @externalCampaignCode = externalCampaignCode
        @salesForceCampaignId = salesForceCampaignId
      end
    end

    # {urn:ws.rsys.com}RecipientData
    #   recipient - Recipient
    #   optionalData - OptionalData
    class RecipientData
      attr_accessor :recipient
      attr_accessor :optionalData

      def initialize(recipient = nil, optionalData = [])
        @recipient = recipient
        @optionalData = optionalData
      end
    end

    # {urn:ws.rsys.com}TriggerResult
    #   recipientId - SOAP::SOAPLong
    #   success - SOAP::SOAPBoolean
    #   errorMessage - SOAP::SOAPString
    class TriggerResult
      attr_accessor :recipientId
      attr_accessor :success
      attr_accessor :errorMessage

      def initialize(recipientId = nil, success = nil, errorMessage = nil)
        @recipientId = recipientId
        @success = success
        @errorMessage = errorMessage
      end
    end

    # {urn:ws.rsys.com}CustomEvent
    #   eventName - SOAP::SOAPString
    #   eventId - SOAP::SOAPLong
    #   eventStringDataMapping - SOAP::SOAPString
    #   eventDateDataMapping - SOAP::SOAPString
    #   eventNumberDataMapping - SOAP::SOAPString
    class CustomEvent
      attr_accessor :eventName
      attr_accessor :eventId
      attr_accessor :eventStringDataMapping
      attr_accessor :eventDateDataMapping
      attr_accessor :eventNumberDataMapping

      def initialize(eventName = nil, eventId = nil, eventStringDataMapping = nil, eventDateDataMapping = nil, eventNumberDataMapping = nil)
        @eventName = eventName
        @eventId = eventId
        @eventStringDataMapping = eventStringDataMapping
        @eventDateDataMapping = eventDateDataMapping
        @eventNumberDataMapping = eventNumberDataMapping
      end
    end

    # {urn:ws.rsys.com}ProofLaunchOptions
    #   proofEmailAddress - SOAP::SOAPString
    #   proofLaunchType - ProofLaunchType
    class ProofLaunchOptions
      attr_accessor :proofEmailAddress
      attr_accessor :proofLaunchType

      def initialize(proofEmailAddress = nil, proofLaunchType = nil)
        @proofEmailAddress = proofEmailAddress
        @proofLaunchType = proofLaunchType
      end
    end

    # {urn:ws.rsys.com}LaunchPreferences
    #   enableLimit - SOAP::SOAPBoolean
    #   recipientLimit - SOAP::SOAPLong
    #   enableNthSampling - SOAP::SOAPBoolean
    #   samplingNthSelection - SOAP::SOAPInt
    #   samplingNthInterval - SOAP::SOAPInt
    #   samplingNthOffset - SOAP::SOAPInt
    #   enableProgressAlerts - SOAP::SOAPBoolean
    #   progressEmailAddresses - SOAP::SOAPString
    #   progressChunk - ProgressChunk
    class LaunchPreferences
      attr_accessor :enableLimit
      attr_accessor :recipientLimit
      attr_accessor :enableNthSampling
      attr_accessor :samplingNthSelection
      attr_accessor :samplingNthInterval
      attr_accessor :samplingNthOffset
      attr_accessor :enableProgressAlerts
      attr_accessor :progressEmailAddresses
      attr_accessor :progressChunk

      def initialize(enableLimit = nil, recipientLimit = nil, enableNthSampling = nil, samplingNthSelection = nil, samplingNthInterval = nil, samplingNthOffset = nil, enableProgressAlerts = nil, progressEmailAddresses = nil, progressChunk = nil)
        @enableLimit = enableLimit
        @recipientLimit = recipientLimit
        @enableNthSampling = enableNthSampling
        @samplingNthSelection = samplingNthSelection
        @samplingNthInterval = samplingNthInterval
        @samplingNthOffset = samplingNthOffset
        @enableProgressAlerts = enableProgressAlerts
        @progressEmailAddresses = progressEmailAddresses
        @progressChunk = progressChunk
      end
    end

    # {urn:ws.rsys.com}LaunchResult
    #   launchId - SOAP::SOAPLong
    class LaunchResult
      attr_accessor :launchId

      def initialize(launchId = nil)
        @launchId = launchId
      end
    end

    # {urn:ws.rsys.com}LaunchStatusResult
    #   launchId - SOAP::SOAPLong
    #   launchState - SOAP::SOAPString
    #   launchType - SOAP::SOAPString
    #   launchDate - SOAP::SOAPDateTime
    #   campaign - SOAP::SOAPString
    class LaunchStatusResult
      attr_accessor :launchId
      attr_accessor :launchState
      attr_accessor :launchType
      attr_accessor :launchDate
      attr_accessor :campaign

      def initialize(launchId = nil, launchState = nil, launchType = nil, launchDate = nil, campaign = nil)
        @launchId = launchId
        @launchState = launchState
        @launchType = launchType
        @launchDate = launchDate
        @campaign = campaign
      end
    end

    # {urn:ws.rsys.com}Field
    #   fieldName - SOAP::SOAPString
    #   fieldType - FieldType
    #   custom - SOAP::SOAPBoolean
    #   dataExtractionKey - SOAP::SOAPBoolean
    class Field
      attr_accessor :fieldName
      attr_accessor :fieldType
      attr_accessor :custom
      attr_accessor :dataExtractionKey

      def initialize(fieldName = nil, fieldType = nil, custom = nil, dataExtractionKey = nil)
        @fieldName = fieldName
        @fieldType = fieldType
        @custom = custom
        @dataExtractionKey = dataExtractionKey
      end
    end

    # {urn:ws.rsys.com}ListMergeRule
    #   insertOnNoMatch - SOAP::SOAPBoolean
    #   updateOnMatch - UpdateOnMatch
    #   matchColumnName1 - SOAP::SOAPString
    #   matchColumnName2 - SOAP::SOAPString
    #   matchColumnName3 - SOAP::SOAPString
    #   matchOperator - MatchOperator
    #   optinValue - SOAP::SOAPString
    #   optoutValue - SOAP::SOAPString
    #   htmlValue - SOAP::SOAPString
    #   textValue - SOAP::SOAPString
    #   rejectRecordIfChannelEmpty - SOAP::SOAPString
    #   defaultPermissionStatus - PermissionStatus
    class ListMergeRule
      attr_accessor :insertOnNoMatch
      attr_accessor :updateOnMatch
      attr_accessor :matchColumnName1
      attr_accessor :matchColumnName2
      attr_accessor :matchColumnName3
      attr_accessor :matchOperator
      attr_accessor :optinValue
      attr_accessor :optoutValue
      attr_accessor :htmlValue
      attr_accessor :textValue
      attr_accessor :rejectRecordIfChannelEmpty
      attr_accessor :defaultPermissionStatus

      def initialize(insertOnNoMatch = nil, updateOnMatch = nil, matchColumnName1 = nil, matchColumnName2 = nil, matchColumnName3 = nil, matchOperator = nil, optinValue = nil, optoutValue = nil, htmlValue = nil, textValue = nil, rejectRecordIfChannelEmpty = nil, defaultPermissionStatus = nil)
        @insertOnNoMatch = insertOnNoMatch
        @updateOnMatch = updateOnMatch
        @matchColumnName1 = matchColumnName1
        @matchColumnName2 = matchColumnName2
        @matchColumnName3 = matchColumnName3
        @matchOperator = matchOperator
        @optinValue = optinValue
        @optoutValue = optoutValue
        @htmlValue = htmlValue
        @textValue = textValue
        @rejectRecordIfChannelEmpty = rejectRecordIfChannelEmpty
        @defaultPermissionStatus = defaultPermissionStatus
      end
    end

    # {urn:ws.rsys.com}DeleteResult
    #   id - SOAP::SOAPString
    #   success - SOAP::SOAPBoolean
    #   exceptionCode - ExceptionCode
    #   errorMessage - SOAP::SOAPString
    class DeleteResult
      attr_accessor :id
      attr_accessor :success
      attr_accessor :exceptionCode
      attr_accessor :errorMessage

      def initialize(id = nil, success = nil, exceptionCode = nil, errorMessage = nil)
        @id = id
        @success = success
        @exceptionCode = exceptionCode
        @errorMessage = errorMessage
      end
    end

    # {urn:ws.rsys.com}GetUpdatedResult
    #   id - SOAP::SOAPLong
    #   latestDateCovered - SOAP::SOAPDateTime
    class GetUpdatedResult
      attr_accessor :id
      attr_accessor :latestDateCovered

      def initialize(id = [], latestDateCovered = nil)
        @id = id
        @latestDateCovered = latestDateCovered
      end
    end

    # {urn:ws.rsys.com}Record
    class Record < ::Array
    end

    # {urn:ws.rsys.com}RetrieveResult
    #   recordData - RecordData
    class RetrieveResult
      attr_accessor :recordData

      def initialize(recordData = nil)
        @recordData = recordData
      end
    end

    # {urn:ws.rsys.com}RecordData
    #   fieldNames - SOAP::SOAPString
    #   records - Record
    class RecordData
      attr_accessor :fieldNames
      attr_accessor :records

      def initialize(fieldNames = [], records = [])
        @fieldNames = fieldNames
        @records = records
      end
    end

    # {urn:ws.rsys.com}MergeResult
    #   insertCount - SOAP::SOAPLong
    #   updateCount - SOAP::SOAPLong
    #   rejectedCount - SOAP::SOAPLong
    #   totalCount - SOAP::SOAPLong
    #   errorMessage - SOAP::SOAPString
    class MergeResult
      attr_accessor :insertCount
      attr_accessor :updateCount
      attr_accessor :rejectedCount
      attr_accessor :totalCount
      attr_accessor :errorMessage

      def initialize(insertCount = nil, updateCount = nil, rejectedCount = nil, totalCount = nil, errorMessage = nil)
        @insertCount = insertCount
        @updateCount = updateCount
        @rejectedCount = rejectedCount
        @totalCount = totalCount
        @errorMessage = errorMessage
      end
    end

    # {urn:ws.rsys.com}ImageData
    #   image - SOAP::SOAPBase64
    #   imageName - SOAP::SOAPString
    class ImageData
      attr_accessor :image
      attr_accessor :imageName

      def initialize(image = nil, imageName = nil)
        @image = image
        @imageName = imageName
      end
    end

    # {urn:ws.rsys.com}ContentResult
    #   content - SOAP::SOAPString
    #   format - ContentFormat
    #   characterEncoding - CharacterEncoding
    class ContentResult
      attr_accessor :content
      attr_accessor :format
      attr_accessor :characterEncoding

      def initialize(content = nil, format = nil, characterEncoding = nil)
        @content = content
        @format = format
        @characterEncoding = characterEncoding
      end
    end

    # {urn:ws.rsys.com}DescribeObjectResult
    #   createdBy - SOAP::SOAPString
    #   createdDate - SOAP::SOAPDateTime
    #   lastModifiedBy - SOAP::SOAPString
    #   lastModifiedDate - SOAP::SOAPDateTime
    #   exceptionCode - ExceptionCode
    #   errorMessage - SOAP::SOAPString
    #   fields - Field
    #   objectType - FolderObjectType
    class DescribeObjectResult
      attr_accessor :createdBy
      attr_accessor :createdDate
      attr_accessor :lastModifiedBy
      attr_accessor :lastModifiedDate
      attr_accessor :exceptionCode
      attr_accessor :errorMessage
      attr_accessor :fields
      attr_accessor :objectType
      attr_reader :__xmlele_any

      def set_any(elements)
        @__xmlele_any = elements
      end

      def initialize(createdBy = nil, createdDate = nil, lastModifiedBy = nil, lastModifiedDate = nil, exceptionCode = nil, errorMessage = nil, fields = [], objectType = nil)
        @createdBy = createdBy
        @createdDate = createdDate
        @lastModifiedBy = lastModifiedBy
        @lastModifiedDate = lastModifiedDate
        @exceptionCode = exceptionCode
        @errorMessage = errorMessage
        @fields = fields
        @objectType = objectType
        @__xmlele_any = nil
      end
    end

    # {urn:ws.rsys.com}RunJobResult
    #   success - SOAP::SOAPBoolean
    #   errorMessage - SOAP::SOAPString
    #   jobRunId - SOAP::SOAPLong
    class RunJobResult
      attr_accessor :success
      attr_accessor :errorMessage
      attr_accessor :jobRunId

      def initialize(success = nil, errorMessage = nil, jobRunId = nil)
        @success = success
        @errorMessage = errorMessage
        @jobRunId = jobRunId
      end
    end

    # {urn:ws.rsys.com}JobRunStatusResult
    #   jobRunStatus - JobRunStatus
    #   errorMessage - SOAP::SOAPString
    #   recordsProcessed - SOAP::SOAPLong
    #   recordsAdded - SOAP::SOAPLong
    #   recordsRejected - SOAP::SOAPLong
    #   recordsUpdated - SOAP::SOAPLong
    #   durationInSeconds - SOAP::SOAPLong
    class JobRunStatusResult
      attr_accessor :jobRunStatus
      attr_accessor :errorMessage
      attr_accessor :recordsProcessed
      attr_accessor :recordsAdded
      attr_accessor :recordsRejected
      attr_accessor :recordsUpdated
      attr_accessor :durationInSeconds

      def initialize(jobRunStatus = nil, errorMessage = nil, recordsProcessed = nil, recordsAdded = nil, recordsRejected = nil, recordsUpdated = nil, durationInSeconds = nil)
        @jobRunStatus = jobRunStatus
        @errorMessage = errorMessage
        @recordsProcessed = recordsProcessed
        @recordsAdded = recordsAdded
        @recordsRejected = recordsRejected
        @recordsUpdated = recordsUpdated
        @durationInSeconds = durationInSeconds
      end
    end

    # {urn:ws.rsys.com}ConnectJob
    #   jobId - SOAP::SOAPLong
    #   jobName - SOAP::SOAPString
    #   jobType - SOAP::SOAPString
    #   nextJobRun - SOAP::SOAPDateTime
    #   lastJobRun - SOAP::SOAPDateTime
    #   scheduleType - SOAP::SOAPString
    #   active - SOAP::SOAPBoolean
    #   running - SOAP::SOAPBoolean
    class ConnectJob
      attr_accessor :jobId
      attr_accessor :jobName
      attr_accessor :jobType
      attr_accessor :nextJobRun
      attr_accessor :lastJobRun
      attr_accessor :scheduleType
      attr_accessor :active
      attr_accessor :running

      def initialize(jobId = nil, jobName = nil, jobType = nil, nextJobRun = nil, lastJobRun = nil, scheduleType = nil, active = nil, running = nil)
        @jobId = jobId
        @jobName = jobName
        @jobType = jobType
        @nextJobRun = nextJobRun
        @lastJobRun = lastJobRun
        @scheduleType = scheduleType
        @active = active
        @running = running
      end
    end

    # {urn:ws.rsys.com}ConnectJobRun
    #   jobRunId - SOAP::SOAPLong
    #   jobName - SOAP::SOAPString
    #   jobStartTime - SOAP::SOAPDateTime
    #   durationInSeconds - SOAP::SOAPLong
    #   jobRunStatus - JobRunStatus
    class ConnectJobRun
      attr_accessor :jobRunId
      attr_accessor :jobName
      attr_accessor :jobStartTime
      attr_accessor :durationInSeconds
      attr_accessor :jobRunStatus

      def initialize(jobRunId = nil, jobName = nil, jobStartTime = nil, durationInSeconds = nil, jobRunStatus = nil)
        @jobRunId = jobRunId
        @jobName = jobName
        @jobStartTime = jobStartTime
        @durationInSeconds = durationInSeconds
        @jobRunStatus = jobRunStatus
      end
    end

    # {urn:ws.rsys.com}ConnectJobRunLog
    #   logLevel - SOAP::SOAPString
    #   logTime - SOAP::SOAPDateTime
    #   logMessage - SOAP::SOAPString
    class ConnectJobRunLog
      attr_accessor :logLevel
      attr_accessor :logTime
      attr_accessor :logMessage

      def initialize(logLevel = nil, logTime = nil, logMessage = nil)
        @logLevel = logLevel
        @logTime = logTime
        @logMessage = logMessage
      end
    end

    # {urn:ws.rsys.com}RecipientResult
    #   recipientId - SOAP::SOAPLong
    #   errorMessage - SOAP::SOAPString
    class RecipientResult
      attr_accessor :recipientId
      attr_accessor :errorMessage

      def initialize(recipientId = nil, errorMessage = nil)
        @recipientId = recipientId
        @errorMessage = errorMessage
      end
    end

    # {urn:fault.ws.rsys.com}ApiFault
    #   exceptionCode - ExceptionCode
    #   exceptionMessage - SOAP::SOAPString
    class ApiFault
      attr_accessor :exceptionCode
      attr_accessor :exceptionMessage

      def initialize(exceptionCode = nil, exceptionMessage = nil)
        @exceptionCode = exceptionCode
        @exceptionMessage = exceptionMessage
      end
    end

    # {urn:ws.rsys.com}FolderObjectType
    class FolderObjectType < ::String
      ALL_TYPES = FolderObjectType.new("ALL_TYPES")
      ATTACHMENT = FolderObjectType.new("ATTACHMENT")
      CAMPAIGN = FolderObjectType.new("CAMPAIGN")
      DOCUMENT = FolderObjectType.new("DOCUMENT")
      FORM = FolderObjectType.new("FORM")
      LINK_TABLE = FolderObjectType.new("LINK_TABLE")
      LIST = FolderObjectType.new("LIST")
      LIST_FILTER = FolderObjectType.new("LIST_FILTER")
      PROGRAM = FolderObjectType.new("PROGRAM")
      SUPPLEMENTAL_FILTER = FolderObjectType.new("SUPPLEMENTAL_FILTER")
      SUPPLEMENTAL_JOIN = FolderObjectType.new("SUPPLEMENTAL_JOIN")
      SUPPLEMENTAL_SQL = FolderObjectType.new("SUPPLEMENTAL_SQL")
      SUPPLEMENTAL_TABLE = FolderObjectType.new("SUPPLEMENTAL_TABLE")
    end

    # {urn:ws.rsys.com}EmailFormat
    class EmailFormat < ::String
      HTML_FORMAT = EmailFormat.new("HTML_FORMAT")
      MULTIPART_FORMAT = EmailFormat.new("MULTIPART_FORMAT")
      NO_FORMAT = EmailFormat.new("NO_FORMAT")
      TEXT_FORMAT = EmailFormat.new("TEXT_FORMAT")
    end

    # {urn:ws.rsys.com}RecipientLocale
    class RecipientLocale < ::String
      Cs = RecipientLocale.new("cs")
      Da = RecipientLocale.new("da")
      De = RecipientLocale.new("de")
      El = RecipientLocale.new("el")
      En = RecipientLocale.new("en")
      En_US_ASCII = RecipientLocale.new("en_US_ASCII")
      Es = RecipientLocale.new("es")
      Et = RecipientLocale.new("et")
      Fi = RecipientLocale.new("fi")
      Fr = RecipientLocale.new("fr")
      Hr = RecipientLocale.new("hr")
      Hu = RecipientLocale.new("hu")
      Is = RecipientLocale.new("is")
      It = RecipientLocale.new("it")
      Ja = RecipientLocale.new("ja")
      Ko = RecipientLocale.new("ko")
      Lt = RecipientLocale.new("lt")
      Lv = RecipientLocale.new("lv")
      Nl = RecipientLocale.new("nl")
      Pl = RecipientLocale.new("pl")
      Pt = RecipientLocale.new("pt")
      Ro = RecipientLocale.new("ro")
      Ru = RecipientLocale.new("ru")
      Sk = RecipientLocale.new("sk")
      Sl = RecipientLocale.new("sl")
      Sq = RecipientLocale.new("sq")
      Sv = RecipientLocale.new("sv")
      Tr = RecipientLocale.new("tr")
      Zh = RecipientLocale.new("zh")
      Zh_TW = RecipientLocale.new("zh_TW")
    end

    # {urn:ws.rsys.com}CharacterEncoding
    class CharacterEncoding < ::String
      Big5 = CharacterEncoding.new("big5")
      Euc_kr = CharacterEncoding.new("euc_kr")
      Gb2312 = CharacterEncoding.new("gb2312")
      ISO_8859_1 = CharacterEncoding.new("ISO_8859_1")
      ISO_8859_2 = CharacterEncoding.new("ISO_8859_2")
      ISO_8859_7 = CharacterEncoding.new("ISO_8859_7")
      ISO_8859_9 = CharacterEncoding.new("ISO_8859_9")
      Koi8_r = CharacterEncoding.new("koi8_r")
      SJIS = CharacterEncoding.new("SJIS")
      UTF_8 = CharacterEncoding.new("UTF_8")
      Windows_1257 = CharacterEncoding.new("windows_1257")
    end

    # {urn:ws.rsys.com}CampaignType
    class CampaignType < ::String
      EMAIL = CampaignType.new("EMAIL")
      MOBILE = CampaignType.new("MOBILE")
    end

    # {urn:ws.rsys.com}UnsubscribeOption
    class UnsubscribeOption < ::String
      NO_OPTOUT_BUTTON = UnsubscribeOption.new("NO_OPTOUT_BUTTON")
      OPTOUT_FORM = UnsubscribeOption.new("OPTOUT_FORM")
      OPTOUT_SINGLE_CLICK = UnsubscribeOption.new("OPTOUT_SINGLE_CLICK")
    end

    # {urn:ws.rsys.com}AutoCloseOption
    class AutoCloseOption < ::String
      AUTO_CLOSE_ON_DATE = AutoCloseOption.new("AUTO_CLOSE_ON_DATE")
      AUTO_CLOSE_X_DAYS_AFTER_LAST_RESPONSE = AutoCloseOption.new("AUTO_CLOSE_X_DAYS_AFTER_LAST_RESPONSE")
      AUTO_CLOSE_X_DAYS_AFTER_LAUNCH = AutoCloseOption.new("AUTO_CLOSE_X_DAYS_AFTER_LAUNCH")
      NO_AUTO_CLOSE = AutoCloseOption.new("NO_AUTO_CLOSE")
    end

    # {urn:ws.rsys.com}CampaignPurpose
    class CampaignPurpose < ::String
      PROMOTIONAL = CampaignPurpose.new("PROMOTIONAL")
      TRANSACTIONAL = CampaignPurpose.new("TRANSACTIONAL")
    end

    # {urn:ws.rsys.com}ProofLaunchType
    class ProofLaunchType < ::String
      LAUNCH_TO_ADDRESS = ProofLaunchType.new("LAUNCH_TO_ADDRESS")
      LAUNCH_TO_ADDRESS_USING_PROOFLIST = ProofLaunchType.new("LAUNCH_TO_ADDRESS_USING_PROOFLIST")
      LAUNCH_TO_PROOFLIST = ProofLaunchType.new("LAUNCH_TO_PROOFLIST")
    end

    # {urn:ws.rsys.com}ProgressChunk
    class ProgressChunk < ::String
      CHUNK_100K = ProgressChunk.new("CHUNK_100K")
      CHUNK_10K = ProgressChunk.new("CHUNK_10K")
      CHUNK_1M = ProgressChunk.new("CHUNK_1M")
      CHUNK_500K = ProgressChunk.new("CHUNK_500K")
      CHUNK_50K = ProgressChunk.new("CHUNK_50K")
    end

    # {urn:ws.rsys.com}FieldType
    class FieldType < ::String
      INTEGER = FieldType.new("INTEGER")
      NUMBER = FieldType.new("NUMBER")
      STR4000 = FieldType.new("STR4000")
      STR500 = FieldType.new("STR500")
      TIMESTAMP = FieldType.new("TIMESTAMP")
    end

    # {urn:ws.rsys.com}UpdateOnMatch
    class UpdateOnMatch < ::String
      NO_UPDATE = UpdateOnMatch.new("NO_UPDATE")
      REPLACE_ALL = UpdateOnMatch.new("REPLACE_ALL")
    end

    # {urn:ws.rsys.com}MatchOperator
    class MatchOperator < ::String
      AND = MatchOperator.new("AND")
      NONE = MatchOperator.new("NONE")
      OR = MatchOperator.new("OR")
    end

    # {urn:ws.rsys.com}PermissionStatus
    class PermissionStatus < ::String
      OPTIN = PermissionStatus.new("OPTIN")
      OPTOUT = PermissionStatus.new("OPTOUT")
    end

    # {urn:ws.rsys.com}QueryColumn
    class QueryColumn < ::String
      CUSTOMER_ID = QueryColumn.new("CUSTOMER_ID")
      EMAIL_ADDRESS = QueryColumn.new("EMAIL_ADDRESS")
      MOBILE_NUMBER = QueryColumn.new("MOBILE_NUMBER")
      RIID = QueryColumn.new("RIID")
    end

    # {urn:ws.rsys.com}ContentFormat
    class ContentFormat < ::String
      HTML = ContentFormat.new("HTML")
      TEXT = ContentFormat.new("TEXT")
    end

    # {urn:ws.rsys.com}JobRunStatus
    class JobRunStatus < ::String
      ABORTED = JobRunStatus.new("ABORTED")
      FAILED = JobRunStatus.new("FAILED")
      RUNNING = JobRunStatus.new("RUNNING")
      SUCCEEDED = JobRunStatus.new("SUCCEEDED")
    end

    # {urn:fault.ws.rsys.com}ExceptionCode
    class ExceptionCode < ::String
      API_DISABLED_FOR_USER = ExceptionCode.new("API_DISABLED_FOR_USER")
      AUTHENTICATION_FAILED = ExceptionCode.new("AUTHENTICATION_FAILED")
      CAMPAIGN_ALREADY_EXISTS = ExceptionCode.new("CAMPAIGN_ALREADY_EXISTS")
      CAMPAIGN_IS_INVALID = ExceptionCode.new("CAMPAIGN_IS_INVALID")
      CAMPAIGN_LAUNCH_IN_PROGRESS = ExceptionCode.new("CAMPAIGN_LAUNCH_IN_PROGRESS")
      CAMPAIGN_LAUNCH_NOT_SCHEDULED = ExceptionCode.new("CAMPAIGN_LAUNCH_NOT_SCHEDULED")
      CAMPAIGN_LAUNCH_NOT_UNSCHEDULED = ExceptionCode.new("CAMPAIGN_LAUNCH_NOT_UNSCHEDULED")
      CAMPAIGN_NOT_APPROVED_FOR_LAUNCH = ExceptionCode.new("CAMPAIGN_NOT_APPROVED_FOR_LAUNCH")
      CAMPAIGN_NOT_FOUND = ExceptionCode.new("CAMPAIGN_NOT_FOUND")
      CAMPAIGN_NOT_LISTENING = ExceptionCode.new("CAMPAIGN_NOT_LISTENING")
      CANNOT_RUN_CONNECT_JOB = ExceptionCode.new("CANNOT_RUN_CONNECT_JOB")
      CLIENT_CERTIFICATE_EXPIRED = ExceptionCode.new("CLIENT_CERTIFICATE_EXPIRED")
      CLIENT_CERTIFICATE_NOT_FOUND = ExceptionCode.new("CLIENT_CERTIFICATE_NOT_FOUND")
      CLIENT_CERTIFICATE_NOT_YET_VALID = ExceptionCode.new("CLIENT_CERTIFICATE_NOT_YET_VALID")
      CONNECT_DISABLED_FOR_USER = ExceptionCode.new("CONNECT_DISABLED_FOR_USER")
      CONNECT_JOB_ALREADY_RUNNING = ExceptionCode.new("CONNECT_JOB_ALREADY_RUNNING")
      CONNECT_JOB_INACTIVE = ExceptionCode.new("CONNECT_JOB_INACTIVE")
      CONNECT_JOB_NOT_FOUND = ExceptionCode.new("CONNECT_JOB_NOT_FOUND")
      CONNECT_JOB_RUN_LOG_NOT_FOUND = ExceptionCode.new("CONNECT_JOB_RUN_LOG_NOT_FOUND")
      CONNECT_JOB_RUN_NOT_FOUND = ExceptionCode.new("CONNECT_JOB_RUN_NOT_FOUND")
      CUSTOM_EVENT_NOT_FOUND = ExceptionCode.new("CUSTOM_EVENT_NOT_FOUND")
      DOCUMENT_ALREADY_EXISTS = ExceptionCode.new("DOCUMENT_ALREADY_EXISTS")
      DOCUMENT_NOT_FOUND = ExceptionCode.new("DOCUMENT_NOT_FOUND")
      FOLDER_ALREADY_EXISTS = ExceptionCode.new("FOLDER_ALREADY_EXISTS")
      FOLDER_NOT_FOUND = ExceptionCode.new("FOLDER_NOT_FOUND")
      IMAGES_NOT_FOUND = ExceptionCode.new("IMAGES_NOT_FOUND")
      INSUFFICIENT_ACCESS = ExceptionCode.new("INSUFFICIENT_ACCESS")
      INVALID_AUTHENTICATION_OPTION = ExceptionCode.new("INVALID_AUTHENTICATION_OPTION")
      INVALID_DATE = ExceptionCode.new("INVALID_DATE")
      INVALID_FIELD_NAME = ExceptionCode.new("INVALID_FIELD_NAME")
      INVALID_NUMBER = ExceptionCode.new("INVALID_NUMBER")
      INVALID_OBJECT = ExceptionCode.new("INVALID_OBJECT")
      INVALID_PARAMETER = ExceptionCode.new("INVALID_PARAMETER")
      INVALID_PASSWORD = ExceptionCode.new("INVALID_PASSWORD")
      INVALID_SESSION_ID = ExceptionCode.new("INVALID_SESSION_ID")
      INVALID_SOAP_HEADER = ExceptionCode.new("INVALID_SOAP_HEADER")
      INVALID_USER_NAME = ExceptionCode.new("INVALID_USER_NAME")
      LINK_TABLE_ALREADY_EXISTS = ExceptionCode.new("LINK_TABLE_ALREADY_EXISTS")
      LINK_TABLE_NOT_FOUND = ExceptionCode.new("LINK_TABLE_NOT_FOUND")
      LIST_ALREADY_EXISTS = ExceptionCode.new("LIST_ALREADY_EXISTS")
      LIST_NOT_FOUND = ExceptionCode.new("LIST_NOT_FOUND")
      MAX_ATTACHMENT_SIZE_EXCEEDED = ExceptionCode.new("MAX_ATTACHMENT_SIZE_EXCEEDED")
      MOBILE_CAMPAIGN_DISABLED_FOR_USER = ExceptionCode.new("MOBILE_CAMPAIGN_DISABLED_FOR_USER")
      MULTIPLE_OBJECTS_FOUND = ExceptionCode.new("MULTIPLE_OBJECTS_FOUND")
      NO_CAMPAIGNS_IN_THIS_FOLDER = ExceptionCode.new("NO_CAMPAIGNS_IN_THIS_FOLDER")
      NO_CONNECT_JOBS_FOUND = ExceptionCode.new("NO_CONNECT_JOBS_FOUND")
      NO_LAUNCHES_FOR_THIS_CAMPAIGN = ExceptionCode.new("NO_LAUNCHES_FOR_THIS_CAMPAIGN")
      NO_OBJECTS_IN_THIS_FOLDER = ExceptionCode.new("NO_OBJECTS_IN_THIS_FOLDER")
      NO_OPEN_LAUNCHES_FOR_THIS_ACCOUNT = ExceptionCode.new("NO_OPEN_LAUNCHES_FOR_THIS_ACCOUNT")
      OBJECT_ALREADY_EXISTS = ExceptionCode.new("OBJECT_ALREADY_EXISTS")
      OBJECT_NOT_FOUND = ExceptionCode.new("OBJECT_NOT_FOUND")
      OPERATION_NOT_SUPPORTED = ExceptionCode.new("OPERATION_NOT_SUPPORTED")
      PASSWORD_EXPIRED = ExceptionCode.new("PASSWORD_EXPIRED")
      PASSWORD_LOCKOUT = ExceptionCode.new("PASSWORD_LOCKOUT")
      PROFILE_EXTENSION_NOT_FOUND = ExceptionCode.new("PROFILE_EXTENSION_NOT_FOUND")
      PROOF_LIST_NOT_FOUND = ExceptionCode.new("PROOF_LIST_NOT_FOUND")
      RECIPIENT_LIMIT_EXCEEDED = ExceptionCode.new("RECIPIENT_LIMIT_EXCEEDED")
      RECORD_LIMIT_EXCEEDED = ExceptionCode.new("RECORD_LIMIT_EXCEEDED")
      RECORD_NOT_FOUND = ExceptionCode.new("RECORD_NOT_FOUND")
      REQUEST_LIMIT_EXCEEDED = ExceptionCode.new("REQUEST_LIMIT_EXCEEDED")
      SCHEDULED_LAUNCH_NOT_FOUND = ExceptionCode.new("SCHEDULED_LAUNCH_NOT_FOUND")
      SERVER_CERTIFICATE_EXPIRED = ExceptionCode.new("SERVER_CERTIFICATE_EXPIRED")
      SERVER_CERTIFICATE_NOT_FOUND = ExceptionCode.new("SERVER_CERTIFICATE_NOT_FOUND")
      SERVER_CERTIFICATE_NOT_YET_VALID = ExceptionCode.new("SERVER_CERTIFICATE_NOT_YET_VALID")
      TABLE_ALREADY_EXISTS = ExceptionCode.new("TABLE_ALREADY_EXISTS")
      TABLE_NOT_FOUND = ExceptionCode.new("TABLE_NOT_FOUND")
      UNEXPECTED_EXCEPTION = ExceptionCode.new("UNEXPECTED_EXCEPTION")
    end

    # {urn:ws.rsys.com}login
    #   username - SOAP::SOAPString
    #   password - SOAP::SOAPString
    class Login
      attr_accessor :username
      attr_accessor :password

      def initialize(username = nil, password = nil)
        @username = username
        @password = password
      end
    end

    # {urn:ws.rsys.com}loginResponse
    #   result - LoginResult
    class LoginResponse
      attr_accessor :result

      def initialize(result = nil)
        @result = result
      end
    end

    # {urn:ws.rsys.com}authenticateServer
    #   username - SOAP::SOAPString
    #   clientChallenge - SOAP::SOAPByte
    class AuthenticateServer
      attr_accessor :username
      attr_accessor :clientChallenge

      def initialize(username = nil, clientChallenge = [])
        @username = username
        @clientChallenge = clientChallenge
      end
    end

    # {urn:ws.rsys.com}authenticateServerResponse
    #   result - ServerAuthResult
    class AuthenticateServerResponse
      attr_accessor :result

      def initialize(result = nil)
        @result = result
      end
    end

    # {urn:ws.rsys.com}loginWithCertificate
    class LoginWithCertificate < ::Array
    end

    # {urn:ws.rsys.com}loginWithCertificateResponse
    #   result - LoginResult
    class LoginWithCertificateResponse
      attr_accessor :result

      def initialize(result = nil)
        @result = result
      end
    end

    # {urn:ws.rsys.com}logout
    class Logout
      def initialize
      end
    end

    # {urn:ws.rsys.com}logoutResponse
    #   result - SOAP::SOAPBoolean
    class LogoutResponse
      attr_accessor :result

      def initialize(result = nil)
        @result = result
      end
    end

    # {urn:ws.rsys.com}createFolder
    #   folderName - SOAP::SOAPString
    class CreateFolder
      attr_accessor :folderName

      def initialize(folderName = nil)
        @folderName = folderName
      end
    end

    # {urn:ws.rsys.com}createFolderResponse
    #   result - SOAP::SOAPBoolean
    class CreateFolderResponse
      attr_accessor :result

      def initialize(result = nil)
        @result = result
      end
    end

    # {urn:ws.rsys.com}deleteFolder
    #   folderName - SOAP::SOAPString
    class DeleteFolder
      attr_accessor :folderName

      def initialize(folderName = nil)
        @folderName = folderName
      end
    end

    # {urn:ws.rsys.com}deleteFolderResponse
    #   result - SOAP::SOAPBoolean
    class DeleteFolderResponse
      attr_accessor :result

      def initialize(result = nil)
        @result = result
      end
    end

    # {urn:ws.rsys.com}listFolders
    class ListFolders
      def initialize
      end
    end

    # {urn:ws.rsys.com}listFoldersResponse
    class ListFoldersResponse < ::Array
    end

    # {urn:ws.rsys.com}listFolderObjects
    #   folderName - SOAP::SOAPString
    #   type - FolderObjectType
    class ListFolderObjects
      attr_accessor :folderName
      attr_accessor :type

      def initialize(folderName = nil, type = nil)
        @folderName = folderName
        @type = type
      end
    end

    # {urn:ws.rsys.com}listFolderObjectsResponse
    class ListFolderObjectsResponse < ::Array
    end

    # {urn:ws.rsys.com}SessionHeader
    #   sessionId - SOAP::SOAPString
    class SessionHeader
      attr_accessor :sessionId

      def initialize(sessionId = nil)
        @sessionId = sessionId
      end

      # CLS - Added this hackery
      def on_outbound_headeritem(test)
        sobj = SOAP::SOAPElement.new(XSD::QName.new("ns1", 'SessionHeader'))
        sobj.add(SOAP::SOAPElement.new(XSD::QName.new("ns1", "sessionId"), @sessionId))
        ::SOAP::SOAPHeaderItem.new(sobj, false)
      end
    end

    # {urn:ws.rsys.com}AuthSessionHeader
    #   authSessionId - SOAP::SOAPString
    class AuthSessionHeader
      attr_accessor :authSessionId

      def initialize(authSessionId = nil)
        @authSessionId = authSessionId
      end
    end

    # {urn:ws.rsys.com}triggerCampaignMessage
    #   campaign - InteractObject
    #   recipientData - RecipientData
    class TriggerCampaignMessage
      attr_accessor :campaign
      attr_accessor :recipientData

      def initialize(campaign = nil, recipientData = [])
        @campaign = campaign
        @recipientData = recipientData
      end
    end

    # {urn:ws.rsys.com}triggerCampaignMessageResponse
    class TriggerCampaignMessageResponse < ::Array
    end

    # {urn:ws.rsys.com}triggerCustomEvent
    #   customEvent - CustomEvent
    #   recipientData - RecipientData
    class TriggerCustomEvent
      attr_accessor :customEvent
      attr_accessor :recipientData

      def initialize(customEvent = nil, recipientData = [])
        @customEvent = customEvent
        @recipientData = recipientData
      end
    end

    # {urn:ws.rsys.com}triggerCustomEventResponse
    class TriggerCustomEventResponse < ::Array
    end

    # {urn:ws.rsys.com}createCampaign
    #   campaign - InteractObject
    #   campaignType - CampaignType
    class CreateCampaign
      attr_accessor :campaign
      attr_accessor :campaignType

      def initialize(campaign = nil, campaignType = nil)
        @campaign = campaign
        @campaignType = campaignType
      end
    end

    # {urn:ws.rsys.com}createCampaignResponse
    #   result - SOAP::SOAPLong
    class CreateCampaignResponse
      attr_accessor :result

      def initialize(result = nil)
        @result = result
      end
    end

    # {urn:ws.rsys.com}setCampaignProperties
    #   campaignProperties - CampaignProperties
    class SetCampaignProperties
      attr_accessor :campaignProperties

      def initialize(campaignProperties = nil)
        @campaignProperties = campaignProperties
      end
    end

    # {urn:ws.rsys.com}setCampaignPropertiesResponse
    #   result - SOAP::SOAPBoolean
    class SetCampaignPropertiesResponse
      attr_accessor :result

      def initialize(result = nil)
        @result = result
      end
    end

    # {urn:ws.rsys.com}getCampaignProperties
    #   campaign - InteractObject
    #   campaignId - SOAP::SOAPLong
    class GetCampaignProperties
      attr_accessor :campaign
      attr_accessor :campaignId

      def initialize(campaign = nil, campaignId = nil)
        @campaign = campaign
        @campaignId = campaignId
      end
    end

    # {urn:ws.rsys.com}getCampaignPropertiesResponse
    #   result - CampaignProperties
    class GetCampaignPropertiesResponse
      attr_accessor :result

      def initialize(result = nil)
        @result = result
      end
    end

    # {urn:ws.rsys.com}launchCampaign
    #   campaign - InteractObject
    #   proofLaunchOptions - ProofLaunchOptions
    #   launchPreferences - LaunchPreferences
    class LaunchCampaign
      attr_accessor :campaign
      attr_accessor :proofLaunchOptions
      attr_accessor :launchPreferences

      def initialize(campaign = nil, proofLaunchOptions = nil, launchPreferences = nil)
        @campaign = campaign
        @proofLaunchOptions = proofLaunchOptions
        @launchPreferences = launchPreferences
      end
    end

    # {urn:ws.rsys.com}launchCampaignResponse
    #   result - LaunchResult
    class LaunchCampaignResponse
      attr_accessor :result

      def initialize(result = nil)
        @result = result
      end
    end

    # {urn:ws.rsys.com}scheduleCampaignLaunch
    #   campaign - InteractObject
    #   proofLaunchOptions - ProofLaunchOptions
    #   launchPreferences - LaunchPreferences
    #   scheduleDate - SOAP::SOAPDateTime
    class ScheduleCampaignLaunch
      attr_accessor :campaign
      attr_accessor :proofLaunchOptions
      attr_accessor :launchPreferences
      attr_accessor :scheduleDate

      def initialize(campaign = nil, proofLaunchOptions = nil, launchPreferences = nil, scheduleDate = nil)
        @campaign = campaign
        @proofLaunchOptions = proofLaunchOptions
        @launchPreferences = launchPreferences
        @scheduleDate = scheduleDate
      end
    end

    # {urn:ws.rsys.com}scheduleCampaignLaunchResponse
    #   result - SOAP::SOAPBoolean
    class ScheduleCampaignLaunchResponse
      attr_accessor :result

      def initialize(result = nil)
        @result = result
      end
    end

    # {urn:ws.rsys.com}getLaunchStatus
    class GetLaunchStatus < ::Array
    end

    # {urn:ws.rsys.com}getLaunchStatusResponse
    class GetLaunchStatusResponse < ::Array
    end

    # {urn:ws.rsys.com}getCampaignId
    #   campaign - InteractObject
    class GetCampaignId
      attr_accessor :campaign

      def initialize(campaign = nil)
        @campaign = campaign
      end
    end

    # {urn:ws.rsys.com}getCampaignIdResponse
    #   result - SOAP::SOAPLong
    class GetCampaignIdResponse
      attr_accessor :result

      def initialize(result = nil)
        @result = result
      end
    end

    # {urn:ws.rsys.com}deleteCampaign
    #   campaign - InteractObject
    class DeleteCampaign
      attr_accessor :campaign

      def initialize(campaign = nil)
        @campaign = campaign
      end
    end

    # {urn:ws.rsys.com}deleteCampaignResponse
    #   result - SOAP::SOAPBoolean
    class DeleteCampaignResponse
      attr_accessor :result

      def initialize(result = nil)
        @result = result
      end
    end

    # {urn:ws.rsys.com}getLaunchesForCampaign
    #   campaign - InteractObject
    #   campaignId - SOAP::SOAPLong
    #   fromDate - SOAP::SOAPDateTime
    #   toDate - SOAP::SOAPDateTime
    class GetLaunchesForCampaign
      attr_accessor :campaign
      attr_accessor :campaignId
      attr_accessor :fromDate
      attr_accessor :toDate

      def initialize(campaign = nil, campaignId = nil, fromDate = nil, toDate = nil)
        @campaign = campaign
        @campaignId = campaignId
        @fromDate = fromDate
        @toDate = toDate
      end
    end

    # {urn:ws.rsys.com}getLaunchesForCampaignResponse
    class GetLaunchesForCampaignResponse < ::Array
    end

    # {urn:ws.rsys.com}getOpenLaunches
    class GetOpenLaunches
      def initialize
      end
    end

    # {urn:ws.rsys.com}getOpenLaunchesResponse
    class GetOpenLaunchesResponse < ::Array
    end

    # {urn:ws.rsys.com}closeCampaign
    #   campaign - InteractObject
    #   campaignId - SOAP::SOAPLong
    class CloseCampaign
      attr_accessor :campaign
      attr_accessor :campaignId

      def initialize(campaign = nil, campaignId = nil)
        @campaign = campaign
        @campaignId = campaignId
      end
    end

    # {urn:ws.rsys.com}closeCampaignResponse
    #   result - SOAP::SOAPBoolean
    class CloseCampaignResponse
      attr_accessor :result

      def initialize(result = nil)
        @result = result
      end
    end

    # {urn:ws.rsys.com}unscheduleCampaignLaunch
    #   campaign - InteractObject
    #   campaignId - SOAP::SOAPLong
    #   scheduleDate - SOAP::SOAPDateTime
    class UnscheduleCampaignLaunch
      attr_accessor :campaign
      attr_accessor :campaignId
      attr_accessor :scheduleDate

      def initialize(campaign = nil, campaignId = nil, scheduleDate = nil)
        @campaign = campaign
        @campaignId = campaignId
        @scheduleDate = scheduleDate
      end
    end

    # {urn:ws.rsys.com}unscheduleCampaignLaunchResponse
    #   result - SOAP::SOAPBoolean
    class UnscheduleCampaignLaunchResponse
      attr_accessor :result

      def initialize(result = nil)
        @result = result
      end
    end

    # {urn:ws.rsys.com}createList
    #   list - InteractObject
    #   description - SOAP::SOAPString
    #   fields - Field
    class CreateList
      attr_accessor :list
      attr_accessor :description
      attr_accessor :fields

      def initialize(list = nil, description = nil, fields = [])
        @list = list
        @description = description
        @fields = fields
      end
    end

    # {urn:ws.rsys.com}createListResponse
    #   result - SOAP::SOAPBoolean
    class CreateListResponse
      attr_accessor :result

      def initialize(result = nil)
        @result = result
      end
    end

    # {urn:ws.rsys.com}changeListSchema
    #   list - InteractObject
    #   addFields - Field
    #   removeFields - SOAP::SOAPString
    #   renameFields - SOAP::SOAPString
    class ChangeListSchema
      attr_accessor :list
      attr_accessor :addFields
      attr_accessor :removeFields
      attr_accessor :renameFields

      def initialize(list = nil, addFields = [], removeFields = [], renameFields = [])
        @list = list
        @addFields = addFields
        @removeFields = removeFields
        @renameFields = renameFields
      end
    end

    # {urn:ws.rsys.com}changeListSchemaResponse
    #   result - SOAP::SOAPBoolean
    class ChangeListSchemaResponse
      attr_accessor :result

      def initialize(result = nil)
        @result = result
      end
    end

    # {urn:ws.rsys.com}deleteList
    #   list - InteractObject
    class DeleteList
      attr_accessor :list

      def initialize(list = nil)
        @list = list
      end
    end

    # {urn:ws.rsys.com}deleteListResponse
    #   result - SOAP::SOAPBoolean
    class DeleteListResponse
      attr_accessor :result

      def initialize(result = nil)
        @result = result
      end
    end

    # {urn:ws.rsys.com}mergeListMembers
    #   list - InteractObject
    #   recordData - RecordData
    #   mergeRule - ListMergeRule
    class MergeListMembers
      attr_accessor :list
      attr_accessor :recordData
      attr_accessor :mergeRule

      def initialize(list = nil, recordData = nil, mergeRule = nil)
        @list = list
        @recordData = recordData
        @mergeRule = mergeRule
      end
    end

    # {urn:ws.rsys.com}mergeListMembersResponse
    #   result - MergeResult
    class MergeListMembersResponse
      attr_accessor :result

      def initialize(result = nil)
        @result = result
      end
    end

    # {urn:ws.rsys.com}retrieveListMembers
    #   list - InteractObject
    #   queryColumn - QueryColumn
    #   fieldList - SOAP::SOAPString
    #   idsToRetrieve - SOAP::SOAPString
    class RetrieveListMembers
      attr_accessor :list
      attr_accessor :queryColumn
      attr_accessor :fieldList
      attr_accessor :idsToRetrieve

      def initialize(list = nil, queryColumn = nil, fieldList = [], idsToRetrieve = [])
        @list = list
        @queryColumn = queryColumn
        @fieldList = fieldList
        @idsToRetrieve = idsToRetrieve
      end
    end

    # {urn:ws.rsys.com}retrieveListMembersResponse
    #   result - RetrieveResult
    class RetrieveListMembersResponse
      attr_accessor :result

      def initialize(result = nil)
        @result = result
      end
    end

    # {urn:ws.rsys.com}deleteListMembers
    #   list - InteractObject
    #   queryColumn - QueryColumn
    #   idsToDelete - SOAP::SOAPString
    class DeleteListMembers
      attr_accessor :list
      attr_accessor :queryColumn
      attr_accessor :idsToDelete

      def initialize(list = nil, queryColumn = nil, idsToDelete = [])
        @list = list
        @queryColumn = queryColumn
        @idsToDelete = idsToDelete
      end
    end

    # {urn:ws.rsys.com}deleteListMembersResponse
    class DeleteListMembersResponse < ::Array
    end

    # {urn:ws.rsys.com}getUpdated
    #   list - InteractObject
    #   startTime - SOAP::SOAPDateTime
    #   endTime - SOAP::SOAPDateTime
    class GetUpdated
      attr_accessor :list
      attr_accessor :startTime
      attr_accessor :endTime

      def initialize(list = nil, startTime = nil, endTime = nil)
        @list = list
        @startTime = startTime
        @endTime = endTime
      end
    end

    # {urn:ws.rsys.com}getUpdatedResponse
    #   result - GetUpdatedResult
    class GetUpdatedResponse
      attr_accessor :result

      def initialize(result = nil)
        @result = result
      end
    end

    # {urn:ws.rsys.com}createTable
    #   table - InteractObject
    #   fields - Field
    class CreateTable
      attr_accessor :table
      attr_accessor :fields

      def initialize(table = nil, fields = [])
        @table = table
        @fields = fields
      end
    end

    # {urn:ws.rsys.com}createTableResponse
    #   result - SOAP::SOAPBoolean
    class CreateTableResponse
      attr_accessor :result

      def initialize(result = nil)
        @result = result
      end
    end

    # {urn:ws.rsys.com}deleteTable
    #   table - InteractObject
    class DeleteTable
      attr_accessor :table

      def initialize(table = nil)
        @table = table
      end
    end

    # {urn:ws.rsys.com}deleteTableResponse
    #   result - SOAP::SOAPBoolean
    class DeleteTableResponse
      attr_accessor :result

      def initialize(result = nil)
        @result = result
      end
    end

    # {urn:ws.rsys.com}changeTableSchema
    #   table - InteractObject
    #   addFields - Field
    #   removeFields - SOAP::SOAPString
    class ChangeTableSchema
      attr_accessor :table
      attr_accessor :addFields
      attr_accessor :removeFields

      def initialize(table = nil, addFields = [], removeFields = [])
        @table = table
        @addFields = addFields
        @removeFields = removeFields
      end
    end

    # {urn:ws.rsys.com}changeTableSchemaResponse
    #   result - SOAP::SOAPBoolean
    class ChangeTableSchemaResponse
      attr_accessor :result

      def initialize(result = nil)
        @result = result
      end
    end

    # {urn:ws.rsys.com}mergeTableRecords
    #   table - InteractObject
    #   recordData - RecordData
    #   matchColumnNames - SOAP::SOAPString
    class MergeTableRecords
      attr_accessor :table
      attr_accessor :recordData
      attr_accessor :matchColumnNames

      def initialize(table = nil, recordData = nil, matchColumnNames = [])
        @table = table
        @recordData = recordData
        @matchColumnNames = matchColumnNames
      end
    end

    # {urn:ws.rsys.com}mergeTableRecordsWithPK
    class MergeTableRecordsWithPK
      @@schema_type = "mergeTableRecordsWithPK"
      @@schema_ns = "urn:ws.rsys.com"
      @@schema_qualified = "true"
      @@schema_element = [["table", "InteractObject"], ["recordData", "RecordData"], ["insertOnNoMatch", "SOAP::SOAPBoolean"], ["updateOnMatch", "SOAP::SOAPString"]]

      attr_accessor :table
      attr_accessor :recordData
      attr_accessor :insertOnNoMatch
      attr_accessor :updateOnMatch

      def initialize(table = nil, recordData = nil, insertOnNoMatch = nil, updateOnMatch = nil)
        @table = table
        @recordData = recordData
        @insertOnNoMatch = insertOnNoMatch
        @updateOnMatch = updateOnMatch
      end
    end

    # {urn:ws.rsys.com}mergeTableRecordsWithPKResponse
    class MergeTableRecordsWithPKResponse
      @@schema_type = "mergeTableRecordsWithPKResponse"
      @@schema_ns = "urn:ws.rsys.com"
      @@schema_qualified = "true"
      @@schema_element = [["result", "MergeResult"]]

      attr_accessor :result

      def initialize(result = nil)
        @result = result
      end
    end


    # {urn:ws.rsys.com}mergeTableRecordsResponse
    #   result - MergeResult
    class MergeTableRecordsResponse
      attr_accessor :result

      def initialize(result = nil)
        @result = result
      end
    end

    # {urn:ws.rsys.com}retrieveTableRecords
    #   table - InteractObject
    #   queryColumn - SOAP::SOAPString
    #   fieldList - SOAP::SOAPString
    #   idsToRetrieve - SOAP::SOAPString
    class RetrieveTableRecords
      attr_accessor :table
      attr_accessor :queryColumn
      attr_accessor :fieldList
      attr_accessor :idsToRetrieve

      def initialize(table = nil, queryColumn = nil, fieldList = [], idsToRetrieve = [])
        @table = table
        @queryColumn = queryColumn
        @fieldList = fieldList
        @idsToRetrieve = idsToRetrieve
      end
    end

    # {urn:ws.rsys.com}retrieveTableRecordsResponse
    #   result - RetrieveResult
    class RetrieveTableRecordsResponse
      attr_accessor :result

      def initialize(result = nil)
        @result = result
      end
    end

    # {urn:ws.rsys.com}deleteTableRecords
    #   table - InteractObject
    #   queryColumn - SOAP::SOAPString
    #   idsToDelete - SOAP::SOAPString
    class DeleteTableRecords
      attr_accessor :table
      attr_accessor :queryColumn
      attr_accessor :idsToDelete

      def initialize(table = nil, queryColumn = nil, idsToDelete = [])
        @table = table
        @queryColumn = queryColumn
        @idsToDelete = idsToDelete
      end
    end

    # {urn:ws.rsys.com}deleteTableRecordsResponse
    class DeleteTableRecordsResponse < ::Array
    end

    # {urn:ws.rsys.com}truncateTable
    #   table - InteractObject
    class TruncateTable
      attr_accessor :table

      def initialize(table = nil)
        @table = table
      end
    end

    # {urn:ws.rsys.com}truncateTableResponse
    #   result - SOAP::SOAPBoolean
    class TruncateTableResponse
      attr_accessor :result

      def initialize(result = nil)
        @result = result
      end
    end

    # {urn:ws.rsys.com}createSQLView
    #   sqlView - InteractObject
    #   tables - InteractObject
    #   sqlQuery - SOAP::SOAPString
    #   dataExtractionKey - SOAP::SOAPString
    class CreateSQLView
      attr_accessor :sqlView
      attr_accessor :tables
      attr_accessor :sqlQuery
      attr_accessor :dataExtractionKey

      def initialize(sqlView = nil, tables = [], sqlQuery = nil, dataExtractionKey = nil)
        @sqlView = sqlView
        @tables = tables
        @sqlQuery = sqlQuery
        @dataExtractionKey = dataExtractionKey
      end
    end

    # {urn:ws.rsys.com}createSQLViewResponse
    #   result - SOAP::SOAPBoolean
    class CreateSQLViewResponse
      attr_accessor :result

      def initialize(result = nil)
        @result = result
      end
    end

    # {urn:ws.rsys.com}createLinkTable
    #   linkTable - InteractObject
    #   description - SOAP::SOAPString
    class CreateLinkTable
      attr_accessor :linkTable
      attr_accessor :description

      def initialize(linkTable = nil, description = nil)
        @linkTable = linkTable
        @description = description
      end
    end

    # {urn:ws.rsys.com}createLinkTableResponse
    #   result - SOAP::SOAPBoolean
    class CreateLinkTableResponse
      attr_accessor :result

      def initialize(result = nil)
        @result = result
      end
    end

    # {urn:ws.rsys.com}deleteLinkTable
    #   linkTable - InteractObject
    class DeleteLinkTable
      attr_accessor :linkTable

      def initialize(linkTable = nil)
        @linkTable = linkTable
      end
    end

    # {urn:ws.rsys.com}deleteLinkTableResponse
    #   result - SOAP::SOAPBoolean
    class DeleteLinkTableResponse
      attr_accessor :result

      def initialize(result = nil)
        @result = result
      end
    end

    # {urn:ws.rsys.com}mergeLinkRecords
    #   linkTable - InteractObject
    #   recordData - RecordData
    class MergeLinkRecords
      attr_accessor :linkTable
      attr_accessor :recordData

      def initialize(linkTable = nil, recordData = nil)
        @linkTable = linkTable
        @recordData = recordData
      end
    end

    # {urn:ws.rsys.com}mergeLinkRecordsResponse
    #   result - MergeResult
    class MergeLinkRecordsResponse
      attr_accessor :result

      def initialize(result = nil)
        @result = result
      end
    end

    # {urn:ws.rsys.com}retrieveLinkRecords
    #   linkTable - InteractObject
    class RetrieveLinkRecords
      attr_accessor :linkTable

      def initialize(linkTable = nil)
        @linkTable = linkTable
      end
    end

    # {urn:ws.rsys.com}retrieveLinkRecordsResponse
    #   result - RetrieveResult
    class RetrieveLinkRecordsResponse
      attr_accessor :result

      def initialize(result = nil)
        @result = result
      end
    end

    # {urn:ws.rsys.com}deleteLinkRecords
    #   linkTable - InteractObject
    #   linkNamesToDelete - SOAP::SOAPString
    class DeleteLinkRecords
      attr_accessor :linkTable
      attr_accessor :linkNamesToDelete

      def initialize(linkTable = nil, linkNamesToDelete = [])
        @linkTable = linkTable
        @linkNamesToDelete = linkNamesToDelete
      end
    end

    # {urn:ws.rsys.com}deleteLinkRecordsResponse
    class DeleteLinkRecordsResponse < ::Array
    end

    # {urn:ws.rsys.com}createDocument
    #   document - InteractObject
    #   content - SOAP::SOAPString
    #   characterEncoding - CharacterEncoding
    class CreateDocument
      attr_accessor :document
      attr_accessor :content
      attr_accessor :characterEncoding

      def initialize(document = nil, content = nil, characterEncoding = nil)
        @document = document
        @content = content
        @characterEncoding = characterEncoding
      end
    end

    # {urn:ws.rsys.com}createDocumentResponse
    #   result - SOAP::SOAPBoolean
    class CreateDocumentResponse
      attr_accessor :result

      def initialize(result = nil)
        @result = result
      end
    end

    # {urn:ws.rsys.com}deleteDocument
    #   document - InteractObject
    class DeleteDocument
      attr_accessor :document

      def initialize(document = nil)
        @document = document
      end
    end

    # {urn:ws.rsys.com}deleteDocumentResponse
    #   result - SOAP::SOAPBoolean
    class DeleteDocumentResponse
      attr_accessor :result

      def initialize(result = nil)
        @result = result
      end
    end

    # {urn:ws.rsys.com}setDocumentImages
    #   document - InteractObject
    #   imageData - ImageData
    class SetDocumentImages
      attr_accessor :document
      attr_accessor :imageData

      def initialize(document = nil, imageData = [])
        @document = document
        @imageData = imageData
      end
    end

    # {urn:ws.rsys.com}setDocumentImagesResponse
    #   result - SOAP::SOAPBoolean
    class SetDocumentImagesResponse
      attr_accessor :result

      def initialize(result = nil)
        @result = result
      end
    end

    # {urn:ws.rsys.com}getDocumentImages
    #   document - InteractObject
    class GetDocumentImages
      attr_accessor :document

      def initialize(document = nil)
        @document = document
      end
    end

    # {urn:ws.rsys.com}getDocumentImagesResponse
    class GetDocumentImagesResponse < ::Array
    end

    # {urn:ws.rsys.com}setDocumentContent
    #   document - InteractObject
    #   content - SOAP::SOAPString
    class SetDocumentContent
      attr_accessor :document
      attr_accessor :content

      def initialize(document = nil, content = nil)
        @document = document
        @content = content
      end
    end

    # {urn:ws.rsys.com}setDocumentContentResponse
    #   result - SOAP::SOAPBoolean
    class SetDocumentContentResponse
      attr_accessor :result

      def initialize(result = nil)
        @result = result
      end
    end

    # {urn:ws.rsys.com}getDocumentContent
    #   document - InteractObject
    class GetDocumentContent
      attr_accessor :document

      def initialize(document = nil)
        @document = document
      end
    end

    # {urn:ws.rsys.com}getDocumentContentResponse
    #   result - ContentResult
    class GetDocumentContentResponse
      attr_accessor :result

      def initialize(result = nil)
        @result = result
      end
    end

    # {urn:ws.rsys.com}copy
    #   existingObject - InteractObject
    #   newObject - InteractObject
    class Copy
      attr_accessor :existingObject
      attr_accessor :newObject

      def initialize(existingObject = nil, newObject = nil)
        @existingObject = existingObject
        @newObject = newObject
      end
    end

    # {urn:ws.rsys.com}copyResponse
    #   result - SOAP::SOAPBoolean
    class CopyResponse
      attr_accessor :result

      def initialize(result = nil)
        @result = result
      end
    end

    # {urn:ws.rsys.com}move
    #   existingObject - InteractObject
    #   newObject - InteractObject
    class Move
      attr_accessor :existingObject
      attr_accessor :newObject

      def initialize(existingObject = nil, newObject = nil)
        @existingObject = existingObject
        @newObject = newObject
      end
    end

    # {urn:ws.rsys.com}moveResponse
    #   result - SOAP::SOAPBoolean
    class MoveResponse
      attr_accessor :result

      def initialize(result = nil)
        @result = result
      end
    end

    # {urn:ws.rsys.com}getServerTimestamp
    class GetServerTimestamp
      def initialize
      end
    end

    # {urn:ws.rsys.com}getServerTimestampResponse
    #   result - SOAP::SOAPDateTime
    class GetServerTimestampResponse
      attr_accessor :result

      def initialize(result = nil)
        @result = result
      end
    end

    # {urn:ws.rsys.com}describeObjects
    class DescribeObjects < ::Array
    end

    # {urn:ws.rsys.com}describeObjectsResponse
    class DescribeObjectsResponse < ::Array
    end

    # {urn:ws.rsys.com}runJob
    #   jobId - SOAP::SOAPLong
    class RunJob
      attr_accessor :jobId

      def initialize(jobId = nil)
        @jobId = jobId
      end
    end

    # {urn:ws.rsys.com}runJobResponse
    #   result - RunJobResult
    class RunJobResponse
      attr_accessor :result

      def initialize(result = nil)
        @result = result
      end
    end

    # {urn:ws.rsys.com}getJobRunStatus
    #   jobRunId - SOAP::SOAPLong
    class GetJobRunStatus
      attr_accessor :jobRunId

      def initialize(jobRunId = nil)
        @jobRunId = jobRunId
      end
    end

    # {urn:ws.rsys.com}getJobRunStatusResponse
    #   result - JobRunStatusResult
    class GetJobRunStatusResponse
      attr_accessor :result

      def initialize(result = nil)
        @result = result
      end
    end

    # {urn:ws.rsys.com}getJobs
    class GetJobs
      def initialize
      end
    end

    # {urn:ws.rsys.com}getJobsResponse
    class GetJobsResponse < ::Array
    end

    # {urn:ws.rsys.com}getJobRuns
    #   jobId - SOAP::SOAPLong
    #   startDate - SOAP::SOAPDateTime
    #   endDate - SOAP::SOAPDateTime
    class GetJobRuns
      attr_accessor :jobId
      attr_accessor :startDate
      attr_accessor :endDate

      def initialize(jobId = nil, startDate = nil, endDate = nil)
        @jobId = jobId
        @startDate = startDate
        @endDate = endDate
      end
    end

    # {urn:ws.rsys.com}getJobRunsResponse
    class GetJobRunsResponse < ::Array
    end

    # {urn:ws.rsys.com}getJobRunLog
    #   jobRunId - SOAP::SOAPLong
    class GetJobRunLog
      attr_accessor :jobRunId

      def initialize(jobRunId = nil)
        @jobRunId = jobRunId
      end
    end

    # {urn:ws.rsys.com}getJobRunLogResponse
    class GetJobRunLogResponse < ::Array
    end

    # {urn:ws.rsys.com}mergeListMembersRIID
    #   list - InteractObject
    #   recordData - RecordData
    #   mergeRule - ListMergeRule
    class MergeListMembersRIID
      attr_accessor :list
      attr_accessor :recordData
      attr_accessor :mergeRule

      def initialize(list = nil, recordData = nil, mergeRule = nil)
        @list = list
        @recordData = recordData
        @mergeRule = mergeRule
      end
    end

    # {urn:ws.rsys.com}mergeListMembersRIIDResponse
    class MergeListMembersRIIDResponse < ::Array
    end

    # {urn:ws.rsys.com}mergeIntoProfileExtension
    #   profileExtension - InteractObject
    #   recordData - RecordData
    #   matchColumn - QueryColumn
    #   insertOnNoMatch - SOAP::SOAPBoolean
    #   updateOnMatch - UpdateOnMatch
    class MergeIntoProfileExtension
      attr_accessor :profileExtension
      attr_accessor :recordData
      attr_accessor :matchColumn
      attr_accessor :insertOnNoMatch
      attr_accessor :updateOnMatch

      def initialize(profileExtension = nil, recordData = nil, matchColumn = nil, insertOnNoMatch = nil, updateOnMatch = nil)
        @profileExtension = profileExtension
        @recordData = recordData
        @matchColumn = matchColumn
        @insertOnNoMatch = insertOnNoMatch
        @updateOnMatch = updateOnMatch
      end
    end

    # {urn:ws.rsys.com}mergeIntoProfileExtensionResponse
    class MergeIntoProfileExtensionResponse < ::Array
    end

    module RubyFriendlyMethods
      def exception_code
        @exceptionCode
      end

      def exception_message
        @exceptionMessage
      end
    end

    # {urn:fault.ws.rsys.com}AccountFault
    #   exceptionCode - ExceptionCode
    #   exceptionMessage - SOAP::SOAPString
    class AccountFault < ::StandardError
      include RubyFriendlyMethods
      attr_accessor :exceptionCode
      attr_accessor :exceptionMessage

      def initialize(exceptionCode = nil, exceptionMessage = nil)
        @exceptionCode = exceptionCode
        @exceptionMessage = exceptionMessage
      end
    end

    # {urn:fault.ws.rsys.com}FolderFault
    #   exceptionCode - ExceptionCode
    #   exceptionMessage - SOAP::SOAPString
    class FolderFault < ::StandardError
      include RubyFriendlyMethods
      attr_accessor :exceptionCode
      attr_accessor :exceptionMessage

      def initialize(exceptionCode = nil, exceptionMessage = nil)
        @exceptionCode = exceptionCode
        @exceptionMessage = exceptionMessage
      end
    end

    # {urn:fault.ws.rsys.com}TriggeredMessageFault
    #   exceptionCode - ExceptionCode
    #   exceptionMessage - SOAP::SOAPString
    class TriggeredMessageFault < ::StandardError
      include RubyFriendlyMethods
      attr_accessor :exceptionCode
      attr_accessor :exceptionMessage

      def initialize(exceptionCode = nil, exceptionMessage = nil)
        @exceptionCode = exceptionCode
        @exceptionMessage = exceptionMessage
      end
    end

    # {urn:fault.ws.rsys.com}CustomEventFault
    #   exceptionCode - ExceptionCode
    #   exceptionMessage - SOAP::SOAPString
    class CustomEventFault < ::StandardError
      include RubyFriendlyMethods
      attr_accessor :exceptionCode
      attr_accessor :exceptionMessage

      def initialize(exceptionCode = nil, exceptionMessage = nil)
        @exceptionCode = exceptionCode
        @exceptionMessage = exceptionMessage
      end
    end

    # {urn:fault.ws.rsys.com}CampaignFault
    #   exceptionCode - ExceptionCode
    #   exceptionMessage - SOAP::SOAPString
    class CampaignFault < ::StandardError
      include RubyFriendlyMethods
      attr_accessor :exceptionCode
      attr_accessor :exceptionMessage

      def initialize(exceptionCode = nil, exceptionMessage = nil)
        @exceptionCode = exceptionCode
        @exceptionMessage = exceptionMessage
      end
    end

    # {urn:fault.ws.rsys.com}ListFault
    #   exceptionCode - ExceptionCode
    #   exceptionMessage - SOAP::SOAPString
    class ListFault < ::StandardError
      include RubyFriendlyMethods
      attr_accessor :exceptionCode
      attr_accessor :exceptionMessage

      def initialize(exceptionCode = nil, exceptionMessage = nil)
        @exceptionCode = exceptionCode
        @exceptionMessage = exceptionMessage
      end
    end

    # {urn:fault.ws.rsys.com}TableFault
    #   exceptionCode - ExceptionCode
    #   exceptionMessage - SOAP::SOAPString
    class TableFault < ::StandardError
      include RubyFriendlyMethods
      attr_accessor :exceptionCode
      attr_accessor :exceptionMessage

      def initialize(exceptionCode = nil, exceptionMessage = nil)
        @exceptionCode = exceptionCode
        @exceptionMessage = exceptionMessage
      end
    end

    # {urn:fault.ws.rsys.com}LinkTableFault
    #   exceptionCode - ExceptionCode
    #   exceptionMessage - SOAP::SOAPString
    class LinkTableFault < ::StandardError
      include RubyFriendlyMethods
      attr_accessor :exceptionCode
      attr_accessor :exceptionMessage

      def initialize(exceptionCode = nil, exceptionMessage = nil)
        @exceptionCode = exceptionCode
        @exceptionMessage = exceptionMessage
      end
    end

    # {urn:fault.ws.rsys.com}DocumentFault
    #   exceptionCode - ExceptionCode
    #   exceptionMessage - SOAP::SOAPString
    class DocumentFault < ::StandardError
      include RubyFriendlyMethods
      attr_accessor :exceptionCode
      attr_accessor :exceptionMessage

      def initialize(exceptionCode = nil, exceptionMessage = nil)
        @exceptionCode = exceptionCode
        @exceptionMessage = exceptionMessage
      end
    end

    # {urn:fault.ws.rsys.com}ObjectFault
    #   exceptionCode - ExceptionCode
    #   exceptionMessage - SOAP::SOAPString
    class ObjectFault < ::StandardError
      include RubyFriendlyMethods
      attr_accessor :exceptionCode
      attr_accessor :exceptionMessage

      def initialize(exceptionCode = nil, exceptionMessage = nil)
        @exceptionCode = exceptionCode
        @exceptionMessage = exceptionMessage
      end
    end

    # {urn:fault.ws.rsys.com}ConnectFault
    #   exceptionCode - ExceptionCode
    #   exceptionMessage - SOAP::SOAPString
    class ConnectFault < ::StandardError
      include RubyFriendlyMethods
      attr_accessor :exceptionCode
      attr_accessor :exceptionMessage

      def initialize(exceptionCode = nil, exceptionMessage = nil)
        @exceptionCode = exceptionCode
        @exceptionMessage = exceptionMessage
      end
    end

    # {urn:fault.ws.rsys.com}ListExtensionFault
    #   exceptionCode - ExceptionCode
    #   exceptionMessage - SOAP::SOAPString
    class ListExtensionFault < ::StandardError
      include RubyFriendlyMethods
      attr_accessor :exceptionCode
      attr_accessor :exceptionMessage

      def initialize(exceptionCode = nil, exceptionMessage = nil)
        @exceptionCode = exceptionCode
        @exceptionMessage = exceptionMessage
      end
    end

    # {urn:fault.ws.rsys.com}UnexpectedErrorFault
    #   exceptionCode - ExceptionCode
    #   exceptionMessage - SOAP::SOAPString
    class UnexpectedErrorFault < ::StandardError
      include RubyFriendlyMethods
      attr_accessor :exceptionCode
      attr_accessor :exceptionMessage

      def initialize(exceptionCode = nil, exceptionMessage = nil)
        @exceptionCode = exceptionCode
        @exceptionMessage = exceptionMessage
      end
    end
  end
end

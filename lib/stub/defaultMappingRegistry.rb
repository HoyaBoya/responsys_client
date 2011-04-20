require 'stub/default.rb'
require 'soap/mapping'

module DefaultMappingRegistry
  EncodedRegistry = ::SOAP::Mapping::EncodedRegistry.new
  LiteralRegistry = ::SOAP::Mapping::LiteralRegistry.new
  NsFaultWsRsysCom = "urn:fault.ws.rsys.com"
  NsWsRsysCom = "urn:ws.rsys.com"
  NsXMLSchema = "http://www.w3.org/2001/XMLSchema"

  EncodedRegistry.register(
    :class => LoginResult,
    :schema_type => XSD::QName.new(NsWsRsysCom, "LoginResult"),
    :schema_element => [
      ["sessionId", "SOAP::SOAPString"]
    ]
  )

  EncodedRegistry.register(
    :class => ServerAuthResult,
    :schema_type => XSD::QName.new(NsWsRsysCom, "ServerAuthResult"),
    :schema_element => [
      ["authSessionId", "SOAP::SOAPString"],
      ["encryptedClientChallenge", "SOAP::SOAPByte[]", [1, nil]],
      ["serverChallenge", "SOAP::SOAPByte[]", [1, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => FolderResult,
    :schema_type => XSD::QName.new(NsWsRsysCom, "FolderResult"),
    :schema_element => [
      ["name", "SOAP::SOAPString"]
    ]
  )

  EncodedRegistry.register(
    :class => InteractObject,
    :schema_type => XSD::QName.new(NsWsRsysCom, "InteractObject"),
    :schema_element => [
      ["folderName", "SOAP::SOAPString"],
      ["objectName", "SOAP::SOAPString"]
    ]
  )

  EncodedRegistry.register(
    :class => FolderObjectResult,
    :schema_type => XSD::QName.new(NsWsRsysCom, "FolderObjectResult"),
    :schema_element => [
      ["id", "SOAP::SOAPLong"],
      ["name", "InteractObject"],
      ["type", "FolderObjectType"],
      ["subType", "SOAP::SOAPString"]
    ]
  )

  EncodedRegistry.register(
    :class => Recipient,
    :schema_type => XSD::QName.new(NsWsRsysCom, "Recipient"),
    :schema_element => [
      ["listName", "InteractObject"],
      ["recipientId", "SOAP::SOAPLong"],
      ["customerId", "SOAP::SOAPString"],
      ["emailAddress", "SOAP::SOAPString"],
      ["mobileNumber", "SOAP::SOAPString"],
      ["emailFormat", "EmailFormat"]
    ]
  )

  EncodedRegistry.register(
    :class => OptionalData,
    :schema_type => XSD::QName.new(NsWsRsysCom, "OptionalData"),
    :schema_element => [
      ["name", "SOAP::SOAPString"],
      ["value", "SOAP::SOAPString"]
    ]
  )

  EncodedRegistry.register(
    :class => CampaignProperties,
    :schema_type => XSD::QName.new(NsWsRsysCom, "CampaignProperties"),
    :schema_element => [
      ["campaign", "InteractObject"],
      ["campaignId", "SOAP::SOAPLong"],
      ["campaignType", "CampaignType"],
      ["description", "SOAP::SOAPString"],
      ["marketingProgram", "SOAP::SOAPString"],
      ["marketingStrategy", "SOAP::SOAPString"],
      ["list", "InteractObject"],
      ["refiningFilters", "InteractObject[]", [1, nil]],
      ["refiningDataSource", "InteractObject"],
      ["governanceFilter", "InteractObject"],
      ["supplementalCampaignDataSources", "InteractObject[]", [1, nil]],
      ["suppressionLists", "InteractObject[]", [1, nil]],
      ["supplementalProofDataSources", "InteractObject[]", [1, nil]],
      ["supplementalSeedDataSources", "InteractObject[]", [1, nil]],
      ["proofList", "InteractObject"],
      ["seedList", "InteractObject"],
      ["segmentation", "InteractObject[]", [1, nil]],
      ["fromName", "SOAP::SOAPString"],
      ["fromEmail", "SOAP::SOAPString"],
      ["replyToEmail", "SOAP::SOAPString"],
      ["bccEmail", "SOAP::SOAPString"],
      ["subject", "SOAP::SOAPString"],
      ["htmlMessage", "InteractObject"],
      ["textMessage", "InteractObject"],
      ["enableLinkTracking", "SOAP::SOAPBoolean"],
      ["linkTable", "InteractObject"],
      ["enableExternalTracking", "SOAP::SOAPBoolean"],
      ["externalTrackingParams", "OptionalData[]", [1, nil]],
      ["attachments", "InteractObject[]", [1, nil]],
      ["campaignVariables", "OptionalData[]", [1, nil]],
      ["campaignPurpose", "CampaignPurpose"],
      ["useUTF8", "SOAP::SOAPBoolean"],
      ["locale", "RecipientLocale"],
      ["trackHtmlOpens", "SOAP::SOAPBoolean"],
      ["trackConversions", "SOAP::SOAPBoolean"],
      ["sendTextIfHTMLUnknown", "SOAP::SOAPBoolean"],
      ["segmentTrackingColumnName", "SOAP::SOAPString"],
      ["unsubscribeOption", "UnsubscribeOption"],
      ["unsubscribeForm", "SOAP::SOAPString"],
      ["autoCloseOption", "AutoCloseOption"],
      ["autoCloseValue", "SOAP::SOAPString"],
      ["closedCampaignURL", "SOAP::SOAPString"],
      ["externalCampaignCode", "SOAP::SOAPString"],
      ["salesForceCampaignId", "SOAP::SOAPString"]
    ]
  )

  EncodedRegistry.register(
    :class => RecipientData,
    :schema_type => XSD::QName.new(NsWsRsysCom, "RecipientData"),
    :schema_element => [
      ["recipient", "Recipient"],
      ["optionalData", "OptionalData[]", [1, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => TriggerResult,
    :schema_type => XSD::QName.new(NsWsRsysCom, "TriggerResult"),
    :schema_element => [
      ["recipientId", "SOAP::SOAPLong"],
      ["success", "SOAP::SOAPBoolean"],
      ["errorMessage", "SOAP::SOAPString"]
    ]
  )

  EncodedRegistry.register(
    :class => CustomEvent,
    :schema_type => XSD::QName.new(NsWsRsysCom, "CustomEvent"),
    :schema_element => [
      ["eventName", "SOAP::SOAPString"],
      ["eventId", "SOAP::SOAPLong"],
      ["eventStringDataMapping", "SOAP::SOAPString"],
      ["eventDateDataMapping", "SOAP::SOAPString"],
      ["eventNumberDataMapping", "SOAP::SOAPString"]
    ]
  )

  EncodedRegistry.register(
    :class => ProofLaunchOptions,
    :schema_type => XSD::QName.new(NsWsRsysCom, "ProofLaunchOptions"),
    :schema_element => [
      ["proofEmailAddress", "SOAP::SOAPString"],
      ["proofLaunchType", "ProofLaunchType"]
    ]
  )

  EncodedRegistry.register(
    :class => LaunchPreferences,
    :schema_type => XSD::QName.new(NsWsRsysCom, "LaunchPreferences"),
    :schema_element => [
      ["enableLimit", "SOAP::SOAPBoolean"],
      ["recipientLimit", "SOAP::SOAPLong"],
      ["enableNthSampling", "SOAP::SOAPBoolean"],
      ["samplingNthSelection", "SOAP::SOAPInt"],
      ["samplingNthInterval", "SOAP::SOAPInt"],
      ["samplingNthOffset", "SOAP::SOAPInt"],
      ["enableProgressAlerts", "SOAP::SOAPBoolean"],
      ["progressEmailAddresses", "SOAP::SOAPString"],
      ["progressChunk", "ProgressChunk"]
    ]
  )

  EncodedRegistry.register(
    :class => LaunchResult,
    :schema_type => XSD::QName.new(NsWsRsysCom, "LaunchResult"),
    :schema_element => [
      ["launchId", "SOAP::SOAPLong"]
    ]
  )

  EncodedRegistry.register(
    :class => LaunchStatusResult,
    :schema_type => XSD::QName.new(NsWsRsysCom, "LaunchStatusResult"),
    :schema_element => [
      ["launchId", "SOAP::SOAPLong"],
      ["launchState", "SOAP::SOAPString"],
      ["launchType", "SOAP::SOAPString"],
      ["launchDate", "SOAP::SOAPDateTime"],
      ["campaign", "SOAP::SOAPString"]
    ]
  )

  EncodedRegistry.register(
    :class => Field,
    :schema_type => XSD::QName.new(NsWsRsysCom, "Field"),
    :schema_element => [
      ["fieldName", "SOAP::SOAPString"],
      ["fieldType", "FieldType"],
      ["custom", "SOAP::SOAPBoolean"],
      ["dataExtractionKey", "SOAP::SOAPBoolean"]
    ]
  )

  EncodedRegistry.register(
    :class => ListMergeRule,
    :schema_type => XSD::QName.new(NsWsRsysCom, "ListMergeRule"),
    :schema_element => [
      ["insertOnNoMatch", "SOAP::SOAPBoolean"],
      ["updateOnMatch", "UpdateOnMatch"],
      ["matchColumnName1", "SOAP::SOAPString"],
      ["matchColumnName2", "SOAP::SOAPString"],
      ["matchColumnName3", "SOAP::SOAPString"],
      ["matchOperator", "MatchOperator"],
      ["optinValue", "SOAP::SOAPString"],
      ["optoutValue", "SOAP::SOAPString"],
      ["htmlValue", "SOAP::SOAPString"],
      ["textValue", "SOAP::SOAPString"],
      ["rejectRecordIfChannelEmpty", "SOAP::SOAPString"],
      ["defaultPermissionStatus", "PermissionStatus"]
    ]
  )

  EncodedRegistry.register(
    :class => DeleteResult,
    :schema_type => XSD::QName.new(NsWsRsysCom, "DeleteResult"),
    :schema_element => [
      ["id", "SOAP::SOAPString"],
      ["success", "SOAP::SOAPBoolean"],
      ["exceptionCode", "ExceptionCode"],
      ["errorMessage", "SOAP::SOAPString"]
    ]
  )

  EncodedRegistry.register(
    :class => GetUpdatedResult,
    :schema_type => XSD::QName.new(NsWsRsysCom, "GetUpdatedResult"),
    :schema_element => [
      ["id", "SOAP::SOAPLong[]", [1, nil]],
      ["latestDateCovered", "SOAP::SOAPDateTime"]
    ]
  )

  EncodedRegistry.register(
    :class => Record,
    :schema_type => XSD::QName.new(NsWsRsysCom, "Record"),
    :schema_element => [
      ["fieldValues", "SOAP::SOAPString[]", [1, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => RetrieveResult,
    :schema_type => XSD::QName.new(NsWsRsysCom, "RetrieveResult"),
    :schema_element => [
      ["recordData", "RecordData"]
    ]
  )

  EncodedRegistry.register(
    :class => RecordData,
    :schema_type => XSD::QName.new(NsWsRsysCom, "RecordData"),
    :schema_element => [
      ["fieldNames", "SOAP::SOAPString[]", [1, nil]],
      ["records", "Record[]", [1, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => MergeResult,
    :schema_type => XSD::QName.new(NsWsRsysCom, "MergeResult"),
    :schema_element => [
      ["insertCount", "SOAP::SOAPLong"],
      ["updateCount", "SOAP::SOAPLong"],
      ["rejectedCount", "SOAP::SOAPLong"],
      ["totalCount", "SOAP::SOAPLong"],
      ["errorMessage", "SOAP::SOAPString"]
    ]
  )

  EncodedRegistry.register(
    :class => ImageData,
    :schema_type => XSD::QName.new(NsWsRsysCom, "ImageData"),
    :schema_element => [
      ["image", "SOAP::SOAPBase64"],
      ["imageName", "SOAP::SOAPString"]
    ]
  )

  EncodedRegistry.register(
    :class => ContentResult,
    :schema_type => XSD::QName.new(NsWsRsysCom, "ContentResult"),
    :schema_element => [
      ["content", "SOAP::SOAPString"],
      ["format", "ContentFormat"],
      ["characterEncoding", "CharacterEncoding"]
    ]
  )

  EncodedRegistry.register(
    :class => DescribeObjectResult,
    :schema_type => XSD::QName.new(NsWsRsysCom, "DescribeObjectResult"),
    :schema_element => [
      ["createdBy", "SOAP::SOAPString"],
      ["createdDate", "SOAP::SOAPDateTime"],
      ["lastModifiedBy", "SOAP::SOAPString"],
      ["lastModifiedDate", "SOAP::SOAPDateTime"],
      ["exceptionCode", "ExceptionCode"],
      ["errorMessage", "SOAP::SOAPString"],
      ["fields", "Field[]", [1, nil]],
      ["objectType", "FolderObjectType"],
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )

  EncodedRegistry.register(
    :class => RunJobResult,
    :schema_type => XSD::QName.new(NsWsRsysCom, "RunJobResult"),
    :schema_element => [
      ["success", "SOAP::SOAPBoolean"],
      ["errorMessage", "SOAP::SOAPString"],
      ["jobRunId", "SOAP::SOAPLong"]
    ]
  )

  EncodedRegistry.register(
    :class => JobRunStatusResult,
    :schema_type => XSD::QName.new(NsWsRsysCom, "JobRunStatusResult"),
    :schema_element => [
      ["jobRunStatus", "JobRunStatus"],
      ["errorMessage", "SOAP::SOAPString"],
      ["recordsProcessed", "SOAP::SOAPLong"],
      ["recordsAdded", "SOAP::SOAPLong"],
      ["recordsRejected", "SOAP::SOAPLong"],
      ["recordsUpdated", "SOAP::SOAPLong"],
      ["durationInSeconds", "SOAP::SOAPLong"]
    ]
  )

  EncodedRegistry.register(
    :class => ConnectJob,
    :schema_type => XSD::QName.new(NsWsRsysCom, "ConnectJob"),
    :schema_element => [
      ["jobId", "SOAP::SOAPLong"],
      ["jobName", "SOAP::SOAPString"],
      ["jobType", "SOAP::SOAPString"],
      ["nextJobRun", "SOAP::SOAPDateTime"],
      ["lastJobRun", "SOAP::SOAPDateTime"],
      ["scheduleType", "SOAP::SOAPString"],
      ["active", "SOAP::SOAPBoolean"],
      ["running", "SOAP::SOAPBoolean"]
    ]
  )

  EncodedRegistry.register(
    :class => ConnectJobRun,
    :schema_type => XSD::QName.new(NsWsRsysCom, "ConnectJobRun"),
    :schema_element => [
      ["jobRunId", "SOAP::SOAPLong"],
      ["jobName", "SOAP::SOAPString"],
      ["jobStartTime", "SOAP::SOAPDateTime"],
      ["durationInSeconds", "SOAP::SOAPLong"],
      ["jobRunStatus", "JobRunStatus"]
    ]
  )

  EncodedRegistry.register(
    :class => ConnectJobRunLog,
    :schema_type => XSD::QName.new(NsWsRsysCom, "ConnectJobRunLog"),
    :schema_element => [
      ["logLevel", "SOAP::SOAPString"],
      ["logTime", "SOAP::SOAPDateTime"],
      ["logMessage", "SOAP::SOAPString"]
    ]
  )

  EncodedRegistry.register(
    :class => RecipientResult,
    :schema_type => XSD::QName.new(NsWsRsysCom, "RecipientResult"),
    :schema_element => [
      ["recipientId", "SOAP::SOAPLong"],
      ["errorMessage", "SOAP::SOAPString"]
    ]
  )

  EncodedRegistry.register(
    :class => ApiFault,
    :schema_type => XSD::QName.new(NsFaultWsRsysCom, "ApiFault"),
    :schema_element => [
      ["exceptionCode", "ExceptionCode"],
      ["exceptionMessage", "SOAP::SOAPString"]
    ]
  )

  EncodedRegistry.register(
    :class => FolderObjectType,
    :schema_type => XSD::QName.new(NsWsRsysCom, "FolderObjectType")
  )

  EncodedRegistry.register(
    :class => EmailFormat,
    :schema_type => XSD::QName.new(NsWsRsysCom, "EmailFormat")
  )

  EncodedRegistry.register(
    :class => RecipientLocale,
    :schema_type => XSD::QName.new(NsWsRsysCom, "RecipientLocale")
  )

  EncodedRegistry.register(
    :class => CharacterEncoding,
    :schema_type => XSD::QName.new(NsWsRsysCom, "CharacterEncoding")
  )

  EncodedRegistry.register(
    :class => CampaignType,
    :schema_type => XSD::QName.new(NsWsRsysCom, "CampaignType")
  )

  EncodedRegistry.register(
    :class => UnsubscribeOption,
    :schema_type => XSD::QName.new(NsWsRsysCom, "UnsubscribeOption")
  )

  EncodedRegistry.register(
    :class => AutoCloseOption,
    :schema_type => XSD::QName.new(NsWsRsysCom, "AutoCloseOption")
  )

  EncodedRegistry.register(
    :class => CampaignPurpose,
    :schema_type => XSD::QName.new(NsWsRsysCom, "CampaignPurpose")
  )

  EncodedRegistry.register(
    :class => ProofLaunchType,
    :schema_type => XSD::QName.new(NsWsRsysCom, "ProofLaunchType")
  )

  EncodedRegistry.register(
    :class => ProgressChunk,
    :schema_type => XSD::QName.new(NsWsRsysCom, "ProgressChunk")
  )

  EncodedRegistry.register(
    :class => FieldType,
    :schema_type => XSD::QName.new(NsWsRsysCom, "FieldType")
  )

  EncodedRegistry.register(
    :class => UpdateOnMatch,
    :schema_type => XSD::QName.new(NsWsRsysCom, "UpdateOnMatch")
  )

  EncodedRegistry.register(
    :class => MatchOperator,
    :schema_type => XSD::QName.new(NsWsRsysCom, "MatchOperator")
  )

  EncodedRegistry.register(
    :class => PermissionStatus,
    :schema_type => XSD::QName.new(NsWsRsysCom, "PermissionStatus")
  )

  EncodedRegistry.register(
    :class => QueryColumn,
    :schema_type => XSD::QName.new(NsWsRsysCom, "QueryColumn")
  )

  EncodedRegistry.register(
    :class => ContentFormat,
    :schema_type => XSD::QName.new(NsWsRsysCom, "ContentFormat")
  )

  EncodedRegistry.register(
    :class => JobRunStatus,
    :schema_type => XSD::QName.new(NsWsRsysCom, "JobRunStatus")
  )

  EncodedRegistry.register(
    :class => ExceptionCode,
    :schema_type => XSD::QName.new(NsFaultWsRsysCom, "ExceptionCode")
  )

  LiteralRegistry.register(
    :class => LoginResult,
    :schema_type => XSD::QName.new(NsWsRsysCom, "LoginResult"),
    :schema_element => [
      ["sessionId", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => ServerAuthResult,
    :schema_type => XSD::QName.new(NsWsRsysCom, "ServerAuthResult"),
    :schema_element => [
      ["authSessionId", "SOAP::SOAPString"],
      ["encryptedClientChallenge", "SOAP::SOAPByte[]", [1, nil]],
      ["serverChallenge", "SOAP::SOAPByte[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => FolderResult,
    :schema_type => XSD::QName.new(NsWsRsysCom, "FolderResult"),
    :schema_element => [
      ["name", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => InteractObject,
    :schema_type => XSD::QName.new(NsWsRsysCom, "InteractObject"),
    :schema_element => [
      ["folderName", "SOAP::SOAPString"],
      ["objectName", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => FolderObjectResult,
    :schema_type => XSD::QName.new(NsWsRsysCom, "FolderObjectResult"),
    :schema_element => [
      ["id", "SOAP::SOAPLong"],
      ["name", "InteractObject"],
      ["type", "FolderObjectType"],
      ["subType", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => Recipient,
    :schema_type => XSD::QName.new(NsWsRsysCom, "Recipient"),
    :schema_element => [
      ["listName", "InteractObject"],
      ["recipientId", "SOAP::SOAPLong"],
      ["customerId", "SOAP::SOAPString"],
      ["emailAddress", "SOAP::SOAPString"],
      ["mobileNumber", "SOAP::SOAPString"],
      ["emailFormat", "EmailFormat"]
    ]
  )

  LiteralRegistry.register(
    :class => OptionalData,
    :schema_type => XSD::QName.new(NsWsRsysCom, "OptionalData"),
    :schema_element => [
      ["name", "SOAP::SOAPString"],
      ["value", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => CampaignProperties,
    :schema_type => XSD::QName.new(NsWsRsysCom, "CampaignProperties"),
    :schema_element => [
      ["campaign", "InteractObject"],
      ["campaignId", "SOAP::SOAPLong"],
      ["campaignType", "CampaignType"],
      ["description", "SOAP::SOAPString"],
      ["marketingProgram", "SOAP::SOAPString"],
      ["marketingStrategy", "SOAP::SOAPString"],
      ["list", "InteractObject"],
      ["refiningFilters", "InteractObject[]", [1, nil]],
      ["refiningDataSource", "InteractObject"],
      ["governanceFilter", "InteractObject"],
      ["supplementalCampaignDataSources", "InteractObject[]", [1, nil]],
      ["suppressionLists", "InteractObject[]", [1, nil]],
      ["supplementalProofDataSources", "InteractObject[]", [1, nil]],
      ["supplementalSeedDataSources", "InteractObject[]", [1, nil]],
      ["proofList", "InteractObject"],
      ["seedList", "InteractObject"],
      ["segmentation", "InteractObject[]", [1, nil]],
      ["fromName", "SOAP::SOAPString"],
      ["fromEmail", "SOAP::SOAPString"],
      ["replyToEmail", "SOAP::SOAPString"],
      ["bccEmail", "SOAP::SOAPString"],
      ["subject", "SOAP::SOAPString"],
      ["htmlMessage", "InteractObject"],
      ["textMessage", "InteractObject"],
      ["enableLinkTracking", "SOAP::SOAPBoolean"],
      ["linkTable", "InteractObject"],
      ["enableExternalTracking", "SOAP::SOAPBoolean"],
      ["externalTrackingParams", "OptionalData[]", [1, nil]],
      ["attachments", "InteractObject[]", [1, nil]],
      ["campaignVariables", "OptionalData[]", [1, nil]],
      ["campaignPurpose", "CampaignPurpose"],
      ["useUTF8", "SOAP::SOAPBoolean"],
      ["locale", "RecipientLocale"],
      ["trackHtmlOpens", "SOAP::SOAPBoolean"],
      ["trackConversions", "SOAP::SOAPBoolean"],
      ["sendTextIfHTMLUnknown", "SOAP::SOAPBoolean"],
      ["segmentTrackingColumnName", "SOAP::SOAPString"],
      ["unsubscribeOption", "UnsubscribeOption"],
      ["unsubscribeForm", "SOAP::SOAPString"],
      ["autoCloseOption", "AutoCloseOption"],
      ["autoCloseValue", "SOAP::SOAPString"],
      ["closedCampaignURL", "SOAP::SOAPString"],
      ["externalCampaignCode", "SOAP::SOAPString"],
      ["salesForceCampaignId", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => RecipientData,
    :schema_type => XSD::QName.new(NsWsRsysCom, "RecipientData"),
    :schema_element => [
      ["recipient", "Recipient"],
      ["optionalData", "OptionalData[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => TriggerResult,
    :schema_type => XSD::QName.new(NsWsRsysCom, "TriggerResult"),
    :schema_element => [
      ["recipientId", "SOAP::SOAPLong"],
      ["success", "SOAP::SOAPBoolean"],
      ["errorMessage", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => CustomEvent,
    :schema_type => XSD::QName.new(NsWsRsysCom, "CustomEvent"),
    :schema_element => [
      ["eventName", "SOAP::SOAPString"],
      ["eventId", "SOAP::SOAPLong"],
      ["eventStringDataMapping", "SOAP::SOAPString"],
      ["eventDateDataMapping", "SOAP::SOAPString"],
      ["eventNumberDataMapping", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => ProofLaunchOptions,
    :schema_type => XSD::QName.new(NsWsRsysCom, "ProofLaunchOptions"),
    :schema_element => [
      ["proofEmailAddress", "SOAP::SOAPString"],
      ["proofLaunchType", "ProofLaunchType"]
    ]
  )

  LiteralRegistry.register(
    :class => LaunchPreferences,
    :schema_type => XSD::QName.new(NsWsRsysCom, "LaunchPreferences"),
    :schema_element => [
      ["enableLimit", "SOAP::SOAPBoolean"],
      ["recipientLimit", "SOAP::SOAPLong"],
      ["enableNthSampling", "SOAP::SOAPBoolean"],
      ["samplingNthSelection", "SOAP::SOAPInt"],
      ["samplingNthInterval", "SOAP::SOAPInt"],
      ["samplingNthOffset", "SOAP::SOAPInt"],
      ["enableProgressAlerts", "SOAP::SOAPBoolean"],
      ["progressEmailAddresses", "SOAP::SOAPString"],
      ["progressChunk", "ProgressChunk"]
    ]
  )

  LiteralRegistry.register(
    :class => LaunchResult,
    :schema_type => XSD::QName.new(NsWsRsysCom, "LaunchResult"),
    :schema_element => [
      ["launchId", "SOAP::SOAPLong"]
    ]
  )

  LiteralRegistry.register(
    :class => LaunchStatusResult,
    :schema_type => XSD::QName.new(NsWsRsysCom, "LaunchStatusResult"),
    :schema_element => [
      ["launchId", "SOAP::SOAPLong"],
      ["launchState", "SOAP::SOAPString"],
      ["launchType", "SOAP::SOAPString"],
      ["launchDate", "SOAP::SOAPDateTime"],
      ["campaign", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => Field,
    :schema_type => XSD::QName.new(NsWsRsysCom, "Field"),
    :schema_element => [
      ["fieldName", "SOAP::SOAPString"],
      ["fieldType", "FieldType"],
      ["custom", "SOAP::SOAPBoolean"],
      ["dataExtractionKey", "SOAP::SOAPBoolean"]
    ]
  )

  LiteralRegistry.register(
    :class => ListMergeRule,
    :schema_type => XSD::QName.new(NsWsRsysCom, "ListMergeRule"),
    :schema_element => [
      ["insertOnNoMatch", "SOAP::SOAPBoolean"],
      ["updateOnMatch", "UpdateOnMatch"],
      ["matchColumnName1", "SOAP::SOAPString"],
      ["matchColumnName2", "SOAP::SOAPString"],
      ["matchColumnName3", "SOAP::SOAPString"],
      ["matchOperator", "MatchOperator"],
      ["optinValue", "SOAP::SOAPString"],
      ["optoutValue", "SOAP::SOAPString"],
      ["htmlValue", "SOAP::SOAPString"],
      ["textValue", "SOAP::SOAPString"],
      ["rejectRecordIfChannelEmpty", "SOAP::SOAPString"],
      ["defaultPermissionStatus", "PermissionStatus"]
    ]
  )

  LiteralRegistry.register(
    :class => DeleteResult,
    :schema_type => XSD::QName.new(NsWsRsysCom, "DeleteResult"),
    :schema_element => [
      ["id", "SOAP::SOAPString"],
      ["success", "SOAP::SOAPBoolean"],
      ["exceptionCode", "ExceptionCode"],
      ["errorMessage", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => GetUpdatedResult,
    :schema_type => XSD::QName.new(NsWsRsysCom, "GetUpdatedResult"),
    :schema_element => [
      ["id", "SOAP::SOAPLong[]", [1, nil]],
      ["latestDateCovered", "SOAP::SOAPDateTime"]
    ]
  )

  LiteralRegistry.register(
    :class => Record,
    :schema_type => XSD::QName.new(NsWsRsysCom, "Record"),
    :schema_element => [
      ["fieldValues", "SOAP::SOAPString[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => RetrieveResult,
    :schema_type => XSD::QName.new(NsWsRsysCom, "RetrieveResult"),
    :schema_element => [
      ["recordData", "RecordData"]
    ]
  )

  LiteralRegistry.register(
    :class => RecordData,
    :schema_type => XSD::QName.new(NsWsRsysCom, "RecordData"),
    :schema_element => [
      ["fieldNames", "SOAP::SOAPString[]", [1, nil]],
      ["records", "Record[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => MergeResult,
    :schema_type => XSD::QName.new(NsWsRsysCom, "MergeResult"),
    :schema_element => [
      ["insertCount", "SOAP::SOAPLong"],
      ["updateCount", "SOAP::SOAPLong"],
      ["rejectedCount", "SOAP::SOAPLong"],
      ["totalCount", "SOAP::SOAPLong"],
      ["errorMessage", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => ImageData,
    :schema_type => XSD::QName.new(NsWsRsysCom, "ImageData"),
    :schema_element => [
      ["image", "SOAP::SOAPBase64"],
      ["imageName", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => ContentResult,
    :schema_type => XSD::QName.new(NsWsRsysCom, "ContentResult"),
    :schema_element => [
      ["content", "SOAP::SOAPString"],
      ["format", "ContentFormat"],
      ["characterEncoding", "CharacterEncoding"]
    ]
  )

  LiteralRegistry.register(
    :class => DescribeObjectResult,
    :schema_type => XSD::QName.new(NsWsRsysCom, "DescribeObjectResult"),
    :schema_element => [
      ["createdBy", "SOAP::SOAPString"],
      ["createdDate", "SOAP::SOAPDateTime"],
      ["lastModifiedBy", "SOAP::SOAPString"],
      ["lastModifiedDate", "SOAP::SOAPDateTime"],
      ["exceptionCode", "ExceptionCode"],
      ["errorMessage", "SOAP::SOAPString"],
      ["fields", "Field[]", [1, nil]],
      ["objectType", "FolderObjectType"],
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )

  LiteralRegistry.register(
    :class => RunJobResult,
    :schema_type => XSD::QName.new(NsWsRsysCom, "RunJobResult"),
    :schema_element => [
      ["success", "SOAP::SOAPBoolean"],
      ["errorMessage", "SOAP::SOAPString"],
      ["jobRunId", "SOAP::SOAPLong"]
    ]
  )

  LiteralRegistry.register(
    :class => JobRunStatusResult,
    :schema_type => XSD::QName.new(NsWsRsysCom, "JobRunStatusResult"),
    :schema_element => [
      ["jobRunStatus", "JobRunStatus"],
      ["errorMessage", "SOAP::SOAPString"],
      ["recordsProcessed", "SOAP::SOAPLong"],
      ["recordsAdded", "SOAP::SOAPLong"],
      ["recordsRejected", "SOAP::SOAPLong"],
      ["recordsUpdated", "SOAP::SOAPLong"],
      ["durationInSeconds", "SOAP::SOAPLong"]
    ]
  )

  LiteralRegistry.register(
    :class => ConnectJob,
    :schema_type => XSD::QName.new(NsWsRsysCom, "ConnectJob"),
    :schema_element => [
      ["jobId", "SOAP::SOAPLong"],
      ["jobName", "SOAP::SOAPString"],
      ["jobType", "SOAP::SOAPString"],
      ["nextJobRun", "SOAP::SOAPDateTime"],
      ["lastJobRun", "SOAP::SOAPDateTime"],
      ["scheduleType", "SOAP::SOAPString"],
      ["active", "SOAP::SOAPBoolean"],
      ["running", "SOAP::SOAPBoolean"]
    ]
  )

  LiteralRegistry.register(
    :class => ConnectJobRun,
    :schema_type => XSD::QName.new(NsWsRsysCom, "ConnectJobRun"),
    :schema_element => [
      ["jobRunId", "SOAP::SOAPLong"],
      ["jobName", "SOAP::SOAPString"],
      ["jobStartTime", "SOAP::SOAPDateTime"],
      ["durationInSeconds", "SOAP::SOAPLong"],
      ["jobRunStatus", "JobRunStatus"]
    ]
  )

  LiteralRegistry.register(
    :class => ConnectJobRunLog,
    :schema_type => XSD::QName.new(NsWsRsysCom, "ConnectJobRunLog"),
    :schema_element => [
      ["logLevel", "SOAP::SOAPString"],
      ["logTime", "SOAP::SOAPDateTime"],
      ["logMessage", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => RecipientResult,
    :schema_type => XSD::QName.new(NsWsRsysCom, "RecipientResult"),
    :schema_element => [
      ["recipientId", "SOAP::SOAPLong"],
      ["errorMessage", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => ApiFault,
    :schema_type => XSD::QName.new(NsFaultWsRsysCom, "ApiFault"),
    :schema_element => [
      ["exceptionCode", "ExceptionCode"],
      ["exceptionMessage", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => FolderObjectType,
    :schema_type => XSD::QName.new(NsWsRsysCom, "FolderObjectType")
  )

  LiteralRegistry.register(
    :class => EmailFormat,
    :schema_type => XSD::QName.new(NsWsRsysCom, "EmailFormat")
  )

  LiteralRegistry.register(
    :class => RecipientLocale,
    :schema_type => XSD::QName.new(NsWsRsysCom, "RecipientLocale")
  )

  LiteralRegistry.register(
    :class => CharacterEncoding,
    :schema_type => XSD::QName.new(NsWsRsysCom, "CharacterEncoding")
  )

  LiteralRegistry.register(
    :class => CampaignType,
    :schema_type => XSD::QName.new(NsWsRsysCom, "CampaignType")
  )

  LiteralRegistry.register(
    :class => UnsubscribeOption,
    :schema_type => XSD::QName.new(NsWsRsysCom, "UnsubscribeOption")
  )

  LiteralRegistry.register(
    :class => AutoCloseOption,
    :schema_type => XSD::QName.new(NsWsRsysCom, "AutoCloseOption")
  )

  LiteralRegistry.register(
    :class => CampaignPurpose,
    :schema_type => XSD::QName.new(NsWsRsysCom, "CampaignPurpose")
  )

  LiteralRegistry.register(
    :class => ProofLaunchType,
    :schema_type => XSD::QName.new(NsWsRsysCom, "ProofLaunchType")
  )

  LiteralRegistry.register(
    :class => ProgressChunk,
    :schema_type => XSD::QName.new(NsWsRsysCom, "ProgressChunk")
  )

  LiteralRegistry.register(
    :class => FieldType,
    :schema_type => XSD::QName.new(NsWsRsysCom, "FieldType")
  )

  LiteralRegistry.register(
    :class => UpdateOnMatch,
    :schema_type => XSD::QName.new(NsWsRsysCom, "UpdateOnMatch")
  )

  LiteralRegistry.register(
    :class => MatchOperator,
    :schema_type => XSD::QName.new(NsWsRsysCom, "MatchOperator")
  )

  LiteralRegistry.register(
    :class => PermissionStatus,
    :schema_type => XSD::QName.new(NsWsRsysCom, "PermissionStatus")
  )

  LiteralRegistry.register(
    :class => QueryColumn,
    :schema_type => XSD::QName.new(NsWsRsysCom, "QueryColumn")
  )

  LiteralRegistry.register(
    :class => ContentFormat,
    :schema_type => XSD::QName.new(NsWsRsysCom, "ContentFormat")
  )

  LiteralRegistry.register(
    :class => JobRunStatus,
    :schema_type => XSD::QName.new(NsWsRsysCom, "JobRunStatus")
  )

  LiteralRegistry.register(
    :class => ExceptionCode,
    :schema_type => XSD::QName.new(NsFaultWsRsysCom, "ExceptionCode")
  )

  LiteralRegistry.register(
    :class => Login,
    :schema_name => XSD::QName.new(NsWsRsysCom, "login"),
    :schema_element => [
      ["username", "SOAP::SOAPString"],
      ["password", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => LoginResponse,
    :schema_name => XSD::QName.new(NsWsRsysCom, "loginResponse"),
    :schema_element => [
      ["result", "LoginResult"]
    ]
  )

  LiteralRegistry.register(
    :class => AuthenticateServer,
    :schema_name => XSD::QName.new(NsWsRsysCom, "authenticateServer"),
    :schema_element => [
      ["username", "SOAP::SOAPString"],
      ["clientChallenge", "SOAP::SOAPByte[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AuthenticateServerResponse,
    :schema_name => XSD::QName.new(NsWsRsysCom, "authenticateServerResponse"),
    :schema_element => [
      ["result", "ServerAuthResult"]
    ]
  )

  LiteralRegistry.register(
    :class => LoginWithCertificate,
    :schema_name => XSD::QName.new(NsWsRsysCom, "loginWithCertificate"),
    :schema_element => [
      ["encryptedServerChallenge", "SOAP::SOAPByte[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => LoginWithCertificateResponse,
    :schema_name => XSD::QName.new(NsWsRsysCom, "loginWithCertificateResponse"),
    :schema_element => [
      ["result", "LoginResult"]
    ]
  )

  LiteralRegistry.register(
    :class => Logout,
    :schema_name => XSD::QName.new(NsWsRsysCom, "logout"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => LogoutResponse,
    :schema_name => XSD::QName.new(NsWsRsysCom, "logoutResponse"),
    :schema_element => [
      ["result", "SOAP::SOAPBoolean"]
    ]
  )

  LiteralRegistry.register(
    :class => CreateFolder,
    :schema_name => XSD::QName.new(NsWsRsysCom, "createFolder"),
    :schema_element => [
      ["folderName", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => CreateFolderResponse,
    :schema_name => XSD::QName.new(NsWsRsysCom, "createFolderResponse"),
    :schema_element => [
      ["result", "SOAP::SOAPBoolean"]
    ]
  )

  LiteralRegistry.register(
    :class => DeleteFolder,
    :schema_name => XSD::QName.new(NsWsRsysCom, "deleteFolder"),
    :schema_element => [
      ["folderName", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => DeleteFolderResponse,
    :schema_name => XSD::QName.new(NsWsRsysCom, "deleteFolderResponse"),
    :schema_element => [
      ["result", "SOAP::SOAPBoolean"]
    ]
  )

  LiteralRegistry.register(
    :class => ListFolders,
    :schema_name => XSD::QName.new(NsWsRsysCom, "listFolders"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => ListFoldersResponse,
    :schema_name => XSD::QName.new(NsWsRsysCom, "listFoldersResponse"),
    :schema_element => [
      ["result", "FolderResult[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => ListFolderObjects,
    :schema_name => XSD::QName.new(NsWsRsysCom, "listFolderObjects"),
    :schema_element => [
      ["folderName", "SOAP::SOAPString"],
      ["type", "FolderObjectType"]
    ]
  )

  LiteralRegistry.register(
    :class => ListFolderObjectsResponse,
    :schema_name => XSD::QName.new(NsWsRsysCom, "listFolderObjectsResponse"),
    :schema_element => [
      ["result", "FolderObjectResult[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => SessionHeader,
    :schema_name => XSD::QName.new(NsWsRsysCom, "SessionHeader"),
    :schema_element => [
      ["sessionId", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => AuthSessionHeader,
    :schema_name => XSD::QName.new(NsWsRsysCom, "AuthSessionHeader"),
    :schema_element => [
      ["authSessionId", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => TriggerCampaignMessage,
    :schema_name => XSD::QName.new(NsWsRsysCom, "triggerCampaignMessage"),
    :schema_element => [
      ["campaign", "InteractObject"],
      ["recipientData", "RecipientData[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => TriggerCampaignMessageResponse,
    :schema_name => XSD::QName.new(NsWsRsysCom, "triggerCampaignMessageResponse"),
    :schema_element => [
      ["result", "TriggerResult[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => TriggerCustomEvent,
    :schema_name => XSD::QName.new(NsWsRsysCom, "triggerCustomEvent"),
    :schema_element => [
      ["customEvent", "CustomEvent"],
      ["recipientData", "RecipientData[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => TriggerCustomEventResponse,
    :schema_name => XSD::QName.new(NsWsRsysCom, "triggerCustomEventResponse"),
    :schema_element => [
      ["result", "TriggerResult[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => CreateCampaign,
    :schema_name => XSD::QName.new(NsWsRsysCom, "createCampaign"),
    :schema_element => [
      ["campaign", "InteractObject"],
      ["campaignType", "CampaignType"]
    ]
  )

  LiteralRegistry.register(
    :class => CreateCampaignResponse,
    :schema_name => XSD::QName.new(NsWsRsysCom, "createCampaignResponse"),
    :schema_element => [
      ["result", "SOAP::SOAPLong"]
    ]
  )

  LiteralRegistry.register(
    :class => SetCampaignProperties,
    :schema_name => XSD::QName.new(NsWsRsysCom, "setCampaignProperties"),
    :schema_element => [
      ["campaignProperties", "CampaignProperties"]
    ]
  )

  LiteralRegistry.register(
    :class => SetCampaignPropertiesResponse,
    :schema_name => XSD::QName.new(NsWsRsysCom, "setCampaignPropertiesResponse"),
    :schema_element => [
      ["result", "SOAP::SOAPBoolean"]
    ]
  )

  LiteralRegistry.register(
    :class => GetCampaignProperties,
    :schema_name => XSD::QName.new(NsWsRsysCom, "getCampaignProperties"),
    :schema_element => [
      ["campaign", "InteractObject"],
      ["campaignId", "SOAP::SOAPLong"]
    ]
  )

  LiteralRegistry.register(
    :class => GetCampaignPropertiesResponse,
    :schema_name => XSD::QName.new(NsWsRsysCom, "getCampaignPropertiesResponse"),
    :schema_element => [
      ["result", "CampaignProperties"]
    ]
  )

  LiteralRegistry.register(
    :class => LaunchCampaign,
    :schema_name => XSD::QName.new(NsWsRsysCom, "launchCampaign"),
    :schema_element => [
      ["campaign", "InteractObject"],
      ["proofLaunchOptions", "ProofLaunchOptions"],
      ["launchPreferences", "LaunchPreferences"]
    ]
  )

  LiteralRegistry.register(
    :class => LaunchCampaignResponse,
    :schema_name => XSD::QName.new(NsWsRsysCom, "launchCampaignResponse"),
    :schema_element => [
      ["result", "LaunchResult"]
    ]
  )

  LiteralRegistry.register(
    :class => ScheduleCampaignLaunch,
    :schema_name => XSD::QName.new(NsWsRsysCom, "scheduleCampaignLaunch"),
    :schema_element => [
      ["campaign", "InteractObject"],
      ["proofLaunchOptions", "ProofLaunchOptions"],
      ["launchPreferences", "LaunchPreferences"],
      ["scheduleDate", "SOAP::SOAPDateTime"]
    ]
  )

  LiteralRegistry.register(
    :class => ScheduleCampaignLaunchResponse,
    :schema_name => XSD::QName.new(NsWsRsysCom, "scheduleCampaignLaunchResponse"),
    :schema_element => [
      ["result", "SOAP::SOAPBoolean"]
    ]
  )

  LiteralRegistry.register(
    :class => GetLaunchStatus,
    :schema_name => XSD::QName.new(NsWsRsysCom, "getLaunchStatus"),
    :schema_element => [
      ["launchIds", "SOAP::SOAPLong[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => GetLaunchStatusResponse,
    :schema_name => XSD::QName.new(NsWsRsysCom, "getLaunchStatusResponse"),
    :schema_element => [
      ["result", "LaunchStatusResult[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => GetCampaignId,
    :schema_name => XSD::QName.new(NsWsRsysCom, "getCampaignId"),
    :schema_element => [
      ["campaign", "InteractObject"]
    ]
  )

  LiteralRegistry.register(
    :class => GetCampaignIdResponse,
    :schema_name => XSD::QName.new(NsWsRsysCom, "getCampaignIdResponse"),
    :schema_element => [
      ["result", "SOAP::SOAPLong"]
    ]
  )

  LiteralRegistry.register(
    :class => DeleteCampaign,
    :schema_name => XSD::QName.new(NsWsRsysCom, "deleteCampaign"),
    :schema_element => [
      ["campaign", "InteractObject"]
    ]
  )

  LiteralRegistry.register(
    :class => DeleteCampaignResponse,
    :schema_name => XSD::QName.new(NsWsRsysCom, "deleteCampaignResponse"),
    :schema_element => [
      ["result", "SOAP::SOAPBoolean"]
    ]
  )

  LiteralRegistry.register(
    :class => GetLaunchesForCampaign,
    :schema_name => XSD::QName.new(NsWsRsysCom, "getLaunchesForCampaign"),
    :schema_element => [
      ["campaign", "InteractObject"],
      ["campaignId", "SOAP::SOAPLong"],
      ["fromDate", "SOAP::SOAPDateTime"],
      ["toDate", "SOAP::SOAPDateTime"]
    ]
  )

  LiteralRegistry.register(
    :class => GetLaunchesForCampaignResponse,
    :schema_name => XSD::QName.new(NsWsRsysCom, "getLaunchesForCampaignResponse"),
    :schema_element => [
      ["result", "LaunchStatusResult[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => GetOpenLaunches,
    :schema_name => XSD::QName.new(NsWsRsysCom, "getOpenLaunches"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => GetOpenLaunchesResponse,
    :schema_name => XSD::QName.new(NsWsRsysCom, "getOpenLaunchesResponse"),
    :schema_element => [
      ["result", "LaunchStatusResult[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => CloseCampaign,
    :schema_name => XSD::QName.new(NsWsRsysCom, "closeCampaign"),
    :schema_element => [
      ["campaign", "InteractObject"],
      ["campaignId", "SOAP::SOAPLong"]
    ]
  )

  LiteralRegistry.register(
    :class => CloseCampaignResponse,
    :schema_name => XSD::QName.new(NsWsRsysCom, "closeCampaignResponse"),
    :schema_element => [
      ["result", "SOAP::SOAPBoolean"]
    ]
  )

  LiteralRegistry.register(
    :class => UnscheduleCampaignLaunch,
    :schema_name => XSD::QName.new(NsWsRsysCom, "unscheduleCampaignLaunch"),
    :schema_element => [
      ["campaign", "InteractObject"],
      ["campaignId", "SOAP::SOAPLong"],
      ["scheduleDate", "SOAP::SOAPDateTime"]
    ]
  )

  LiteralRegistry.register(
    :class => UnscheduleCampaignLaunchResponse,
    :schema_name => XSD::QName.new(NsWsRsysCom, "unscheduleCampaignLaunchResponse"),
    :schema_element => [
      ["result", "SOAP::SOAPBoolean"]
    ]
  )

  LiteralRegistry.register(
    :class => CreateList,
    :schema_name => XSD::QName.new(NsWsRsysCom, "createList"),
    :schema_element => [
      ["list", "InteractObject"],
      ["description", "SOAP::SOAPString"],
      ["fields", "Field[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => CreateListResponse,
    :schema_name => XSD::QName.new(NsWsRsysCom, "createListResponse"),
    :schema_element => [
      ["result", "SOAP::SOAPBoolean"]
    ]
  )

  LiteralRegistry.register(
    :class => ChangeListSchema,
    :schema_name => XSD::QName.new(NsWsRsysCom, "changeListSchema"),
    :schema_element => [
      ["list", "InteractObject"],
      ["addFields", "Field[]", [1, nil]],
      ["removeFields", "SOAP::SOAPString[]", [1, nil]],
      ["renameFields", "SOAP::SOAPString[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => ChangeListSchemaResponse,
    :schema_name => XSD::QName.new(NsWsRsysCom, "changeListSchemaResponse"),
    :schema_element => [
      ["result", "SOAP::SOAPBoolean"]
    ]
  )

  LiteralRegistry.register(
    :class => DeleteList,
    :schema_name => XSD::QName.new(NsWsRsysCom, "deleteList"),
    :schema_element => [
      ["list", "InteractObject"]
    ]
  )

  LiteralRegistry.register(
    :class => DeleteListResponse,
    :schema_name => XSD::QName.new(NsWsRsysCom, "deleteListResponse"),
    :schema_element => [
      ["result", "SOAP::SOAPBoolean"]
    ]
  )

  LiteralRegistry.register(
    :class => MergeListMembers,
    :schema_name => XSD::QName.new(NsWsRsysCom, "mergeListMembers"),
    :schema_element => [
      ["list", "InteractObject"],
      ["recordData", "RecordData"],
      ["mergeRule", "ListMergeRule"]
    ]
  )

  LiteralRegistry.register(
    :class => MergeListMembersResponse,
    :schema_name => XSD::QName.new(NsWsRsysCom, "mergeListMembersResponse"),
    :schema_element => [
      ["result", "MergeResult"]
    ]
  )

  LiteralRegistry.register(
    :class => RetrieveListMembers,
    :schema_name => XSD::QName.new(NsWsRsysCom, "retrieveListMembers"),
    :schema_element => [
      ["list", "InteractObject"],
      ["queryColumn", "QueryColumn"],
      ["fieldList", "SOAP::SOAPString[]", [1, nil]],
      ["idsToRetrieve", "SOAP::SOAPString[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => RetrieveListMembersResponse,
    :schema_name => XSD::QName.new(NsWsRsysCom, "retrieveListMembersResponse"),
    :schema_element => [
      ["result", "RetrieveResult"]
    ]
  )

  LiteralRegistry.register(
    :class => DeleteListMembers,
    :schema_name => XSD::QName.new(NsWsRsysCom, "deleteListMembers"),
    :schema_element => [
      ["list", "InteractObject"],
      ["queryColumn", "QueryColumn"],
      ["idsToDelete", "SOAP::SOAPString[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => DeleteListMembersResponse,
    :schema_name => XSD::QName.new(NsWsRsysCom, "deleteListMembersResponse"),
    :schema_element => [
      ["result", "DeleteResult[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => GetUpdated,
    :schema_name => XSD::QName.new(NsWsRsysCom, "getUpdated"),
    :schema_element => [
      ["list", "InteractObject"],
      ["startTime", "SOAP::SOAPDateTime"],
      ["endTime", "SOAP::SOAPDateTime"]
    ]
  )

  LiteralRegistry.register(
    :class => GetUpdatedResponse,
    :schema_name => XSD::QName.new(NsWsRsysCom, "getUpdatedResponse"),
    :schema_element => [
      ["result", "GetUpdatedResult"]
    ]
  )

  LiteralRegistry.register(
    :class => CreateTable,
    :schema_name => XSD::QName.new(NsWsRsysCom, "createTable"),
    :schema_element => [
      ["table", "InteractObject"],
      ["fields", "Field[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => CreateTableResponse,
    :schema_name => XSD::QName.new(NsWsRsysCom, "createTableResponse"),
    :schema_element => [
      ["result", "SOAP::SOAPBoolean"]
    ]
  )

  LiteralRegistry.register(
    :class => DeleteTable,
    :schema_name => XSD::QName.new(NsWsRsysCom, "deleteTable"),
    :schema_element => [
      ["table", "InteractObject"]
    ]
  )

  LiteralRegistry.register(
    :class => DeleteTableResponse,
    :schema_name => XSD::QName.new(NsWsRsysCom, "deleteTableResponse"),
    :schema_element => [
      ["result", "SOAP::SOAPBoolean"]
    ]
  )

  LiteralRegistry.register(
    :class => ChangeTableSchema,
    :schema_name => XSD::QName.new(NsWsRsysCom, "changeTableSchema"),
    :schema_element => [
      ["table", "InteractObject"],
      ["addFields", "Field[]", [1, nil]],
      ["removeFields", "SOAP::SOAPString[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => ChangeTableSchemaResponse,
    :schema_name => XSD::QName.new(NsWsRsysCom, "changeTableSchemaResponse"),
    :schema_element => [
      ["result", "SOAP::SOAPBoolean"]
    ]
  )

  LiteralRegistry.register(
    :class => MergeTableRecords,
    :schema_name => XSD::QName.new(NsWsRsysCom, "mergeTableRecords"),
    :schema_element => [
      ["table", "InteractObject"],
      ["recordData", "RecordData"],
      ["matchColumnNames", "SOAP::SOAPString[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => MergeTableRecordsResponse,
    :schema_name => XSD::QName.new(NsWsRsysCom, "mergeTableRecordsResponse"),
    :schema_element => [
      ["result", "MergeResult"]
    ]
  )

  LiteralRegistry.register(
    :class => RetrieveTableRecords,
    :schema_name => XSD::QName.new(NsWsRsysCom, "retrieveTableRecords"),
    :schema_element => [
      ["table", "InteractObject"],
      ["queryColumn", "SOAP::SOAPString"],
      ["fieldList", "SOAP::SOAPString[]", [1, nil]],
      ["idsToRetrieve", "SOAP::SOAPString[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => RetrieveTableRecordsResponse,
    :schema_name => XSD::QName.new(NsWsRsysCom, "retrieveTableRecordsResponse"),
    :schema_element => [
      ["result", "RetrieveResult"]
    ]
  )

  LiteralRegistry.register(
    :class => DeleteTableRecords,
    :schema_name => XSD::QName.new(NsWsRsysCom, "deleteTableRecords"),
    :schema_element => [
      ["table", "InteractObject"],
      ["queryColumn", "SOAP::SOAPString"],
      ["idsToDelete", "SOAP::SOAPString[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => DeleteTableRecordsResponse,
    :schema_name => XSD::QName.new(NsWsRsysCom, "deleteTableRecordsResponse"),
    :schema_element => [
      ["result", "DeleteResult[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => TruncateTable,
    :schema_name => XSD::QName.new(NsWsRsysCom, "truncateTable"),
    :schema_element => [
      ["table", "InteractObject"]
    ]
  )

  LiteralRegistry.register(
    :class => TruncateTableResponse,
    :schema_name => XSD::QName.new(NsWsRsysCom, "truncateTableResponse"),
    :schema_element => [
      ["result", "SOAP::SOAPBoolean"]
    ]
  )

  LiteralRegistry.register(
    :class => CreateSQLView,
    :schema_name => XSD::QName.new(NsWsRsysCom, "createSQLView"),
    :schema_element => [
      ["sqlView", "InteractObject"],
      ["tables", "InteractObject[]", [1, nil]],
      ["sqlQuery", "SOAP::SOAPString"],
      ["dataExtractionKey", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => CreateSQLViewResponse,
    :schema_name => XSD::QName.new(NsWsRsysCom, "createSQLViewResponse"),
    :schema_element => [
      ["result", "SOAP::SOAPBoolean"]
    ]
  )

  LiteralRegistry.register(
    :class => CreateLinkTable,
    :schema_name => XSD::QName.new(NsWsRsysCom, "createLinkTable"),
    :schema_element => [
      ["linkTable", "InteractObject"],
      ["description", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => CreateLinkTableResponse,
    :schema_name => XSD::QName.new(NsWsRsysCom, "createLinkTableResponse"),
    :schema_element => [
      ["result", "SOAP::SOAPBoolean"]
    ]
  )

  LiteralRegistry.register(
    :class => DeleteLinkTable,
    :schema_name => XSD::QName.new(NsWsRsysCom, "deleteLinkTable"),
    :schema_element => [
      ["linkTable", "InteractObject"]
    ]
  )

  LiteralRegistry.register(
    :class => DeleteLinkTableResponse,
    :schema_name => XSD::QName.new(NsWsRsysCom, "deleteLinkTableResponse"),
    :schema_element => [
      ["result", "SOAP::SOAPBoolean"]
    ]
  )

  LiteralRegistry.register(
    :class => MergeLinkRecords,
    :schema_name => XSD::QName.new(NsWsRsysCom, "mergeLinkRecords"),
    :schema_element => [
      ["linkTable", "InteractObject"],
      ["recordData", "RecordData"]
    ]
  )

  LiteralRegistry.register(
    :class => MergeLinkRecordsResponse,
    :schema_name => XSD::QName.new(NsWsRsysCom, "mergeLinkRecordsResponse"),
    :schema_element => [
      ["result", "MergeResult"]
    ]
  )

  LiteralRegistry.register(
    :class => RetrieveLinkRecords,
    :schema_name => XSD::QName.new(NsWsRsysCom, "retrieveLinkRecords"),
    :schema_element => [
      ["linkTable", "InteractObject"]
    ]
  )

  LiteralRegistry.register(
    :class => RetrieveLinkRecordsResponse,
    :schema_name => XSD::QName.new(NsWsRsysCom, "retrieveLinkRecordsResponse"),
    :schema_element => [
      ["result", "RetrieveResult"]
    ]
  )

  LiteralRegistry.register(
    :class => DeleteLinkRecords,
    :schema_name => XSD::QName.new(NsWsRsysCom, "deleteLinkRecords"),
    :schema_element => [
      ["linkTable", "InteractObject"],
      ["linkNamesToDelete", "SOAP::SOAPString[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => DeleteLinkRecordsResponse,
    :schema_name => XSD::QName.new(NsWsRsysCom, "deleteLinkRecordsResponse"),
    :schema_element => [
      ["result", "DeleteResult[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => CreateDocument,
    :schema_name => XSD::QName.new(NsWsRsysCom, "createDocument"),
    :schema_element => [
      ["document", "InteractObject"],
      ["content", "SOAP::SOAPString"],
      ["characterEncoding", "CharacterEncoding"]
    ]
  )

  LiteralRegistry.register(
    :class => CreateDocumentResponse,
    :schema_name => XSD::QName.new(NsWsRsysCom, "createDocumentResponse"),
    :schema_element => [
      ["result", "SOAP::SOAPBoolean"]
    ]
  )

  LiteralRegistry.register(
    :class => DeleteDocument,
    :schema_name => XSD::QName.new(NsWsRsysCom, "deleteDocument"),
    :schema_element => [
      ["document", "InteractObject"]
    ]
  )

  LiteralRegistry.register(
    :class => DeleteDocumentResponse,
    :schema_name => XSD::QName.new(NsWsRsysCom, "deleteDocumentResponse"),
    :schema_element => [
      ["result", "SOAP::SOAPBoolean"]
    ]
  )

  LiteralRegistry.register(
    :class => SetDocumentImages,
    :schema_name => XSD::QName.new(NsWsRsysCom, "setDocumentImages"),
    :schema_element => [
      ["document", "InteractObject"],
      ["imageData", "ImageData[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => SetDocumentImagesResponse,
    :schema_name => XSD::QName.new(NsWsRsysCom, "setDocumentImagesResponse"),
    :schema_element => [
      ["result", "SOAP::SOAPBoolean"]
    ]
  )

  LiteralRegistry.register(
    :class => GetDocumentImages,
    :schema_name => XSD::QName.new(NsWsRsysCom, "getDocumentImages"),
    :schema_element => [
      ["document", "InteractObject"]
    ]
  )

  LiteralRegistry.register(
    :class => GetDocumentImagesResponse,
    :schema_name => XSD::QName.new(NsWsRsysCom, "getDocumentImagesResponse"),
    :schema_element => [
      ["result", "ImageData[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => SetDocumentContent,
    :schema_name => XSD::QName.new(NsWsRsysCom, "setDocumentContent"),
    :schema_element => [
      ["document", "InteractObject"],
      ["content", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => SetDocumentContentResponse,
    :schema_name => XSD::QName.new(NsWsRsysCom, "setDocumentContentResponse"),
    :schema_element => [
      ["result", "SOAP::SOAPBoolean"]
    ]
  )

  LiteralRegistry.register(
    :class => GetDocumentContent,
    :schema_name => XSD::QName.new(NsWsRsysCom, "getDocumentContent"),
    :schema_element => [
      ["document", "InteractObject"]
    ]
  )

  LiteralRegistry.register(
    :class => GetDocumentContentResponse,
    :schema_name => XSD::QName.new(NsWsRsysCom, "getDocumentContentResponse"),
    :schema_element => [
      ["result", "ContentResult"]
    ]
  )

  LiteralRegistry.register(
    :class => Copy,
    :schema_name => XSD::QName.new(NsWsRsysCom, "copy"),
    :schema_element => [
      ["existingObject", "InteractObject"],
      ["newObject", "InteractObject"]
    ]
  )

  LiteralRegistry.register(
    :class => CopyResponse,
    :schema_name => XSD::QName.new(NsWsRsysCom, "copyResponse"),
    :schema_element => [
      ["result", "SOAP::SOAPBoolean"]
    ]
  )

  LiteralRegistry.register(
    :class => Move,
    :schema_name => XSD::QName.new(NsWsRsysCom, "move"),
    :schema_element => [
      ["existingObject", "InteractObject"],
      ["newObject", "InteractObject"]
    ]
  )

  LiteralRegistry.register(
    :class => MoveResponse,
    :schema_name => XSD::QName.new(NsWsRsysCom, "moveResponse"),
    :schema_element => [
      ["result", "SOAP::SOAPBoolean"]
    ]
  )

  LiteralRegistry.register(
    :class => GetServerTimestamp,
    :schema_name => XSD::QName.new(NsWsRsysCom, "getServerTimestamp"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => GetServerTimestampResponse,
    :schema_name => XSD::QName.new(NsWsRsysCom, "getServerTimestampResponse"),
    :schema_element => [
      ["result", "SOAP::SOAPDateTime"]
    ]
  )

  LiteralRegistry.register(
    :class => DescribeObjects,
    :schema_name => XSD::QName.new(NsWsRsysCom, "describeObjects"),
    :schema_element => [
      ["objects", "InteractObject[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => DescribeObjectsResponse,
    :schema_name => XSD::QName.new(NsWsRsysCom, "describeObjectsResponse"),
    :schema_element => [
      ["result", "DescribeObjectResult[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => RunJob,
    :schema_name => XSD::QName.new(NsWsRsysCom, "runJob"),
    :schema_element => [
      ["jobId", "SOAP::SOAPLong"]
    ]
  )

  LiteralRegistry.register(
    :class => RunJobResponse,
    :schema_name => XSD::QName.new(NsWsRsysCom, "runJobResponse"),
    :schema_element => [
      ["result", "RunJobResult"]
    ]
  )

  LiteralRegistry.register(
    :class => GetJobRunStatus,
    :schema_name => XSD::QName.new(NsWsRsysCom, "getJobRunStatus"),
    :schema_element => [
      ["jobRunId", "SOAP::SOAPLong"]
    ]
  )

  LiteralRegistry.register(
    :class => GetJobRunStatusResponse,
    :schema_name => XSD::QName.new(NsWsRsysCom, "getJobRunStatusResponse"),
    :schema_element => [
      ["result", "JobRunStatusResult"]
    ]
  )

  LiteralRegistry.register(
    :class => GetJobs,
    :schema_name => XSD::QName.new(NsWsRsysCom, "getJobs"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => GetJobsResponse,
    :schema_name => XSD::QName.new(NsWsRsysCom, "getJobsResponse"),
    :schema_element => [
      ["result", "ConnectJob[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => GetJobRuns,
    :schema_name => XSD::QName.new(NsWsRsysCom, "getJobRuns"),
    :schema_element => [
      ["jobId", "SOAP::SOAPLong"],
      ["startDate", "SOAP::SOAPDateTime"],
      ["endDate", "SOAP::SOAPDateTime"]
    ]
  )

  LiteralRegistry.register(
    :class => GetJobRunsResponse,
    :schema_name => XSD::QName.new(NsWsRsysCom, "getJobRunsResponse"),
    :schema_element => [
      ["result", "ConnectJobRun[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => GetJobRunLog,
    :schema_name => XSD::QName.new(NsWsRsysCom, "getJobRunLog"),
    :schema_element => [
      ["jobRunId", "SOAP::SOAPLong"]
    ]
  )

  LiteralRegistry.register(
    :class => GetJobRunLogResponse,
    :schema_name => XSD::QName.new(NsWsRsysCom, "getJobRunLogResponse"),
    :schema_element => [
      ["result", "ConnectJobRunLog[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => MergeListMembersRIID,
    :schema_name => XSD::QName.new(NsWsRsysCom, "mergeListMembersRIID"),
    :schema_element => [
      ["list", "InteractObject"],
      ["recordData", "RecordData"],
      ["mergeRule", "ListMergeRule"]
    ]
  )

  LiteralRegistry.register(
    :class => MergeListMembersRIIDResponse,
    :schema_name => XSD::QName.new(NsWsRsysCom, "mergeListMembersRIIDResponse"),
    :schema_element => [
      ["recipientResult", "RecipientResult[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => MergeIntoProfileExtension,
    :schema_name => XSD::QName.new(NsWsRsysCom, "mergeIntoProfileExtension"),
    :schema_element => [
      ["profileExtension", "InteractObject"],
      ["recordData", "RecordData"],
      ["matchColumn", "QueryColumn"],
      ["insertOnNoMatch", "SOAP::SOAPBoolean"],
      ["updateOnMatch", "UpdateOnMatch"]
    ]
  )

  LiteralRegistry.register(
    :class => MergeIntoProfileExtensionResponse,
    :schema_name => XSD::QName.new(NsWsRsysCom, "mergeIntoProfileExtensionResponse"),
    :schema_element => [
      ["recipientResult", "RecipientResult[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AccountFault,
    :schema_name => XSD::QName.new(NsFaultWsRsysCom, "AccountFault"),
    :schema_element => [
      ["exceptionCode", "ExceptionCode"],
      ["exceptionMessage", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => FolderFault,
    :schema_name => XSD::QName.new(NsFaultWsRsysCom, "FolderFault"),
    :schema_element => [
      ["exceptionCode", "ExceptionCode"],
      ["exceptionMessage", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => TriggeredMessageFault,
    :schema_name => XSD::QName.new(NsFaultWsRsysCom, "TriggeredMessageFault"),
    :schema_element => [
      ["exceptionCode", "ExceptionCode"],
      ["exceptionMessage", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => CustomEventFault,
    :schema_name => XSD::QName.new(NsFaultWsRsysCom, "CustomEventFault"),
    :schema_element => [
      ["exceptionCode", "ExceptionCode"],
      ["exceptionMessage", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => CampaignFault,
    :schema_name => XSD::QName.new(NsFaultWsRsysCom, "CampaignFault"),
    :schema_element => [
      ["exceptionCode", "ExceptionCode"],
      ["exceptionMessage", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => ListFault,
    :schema_name => XSD::QName.new(NsFaultWsRsysCom, "ListFault"),
    :schema_element => [
      ["exceptionCode", "ExceptionCode"],
      ["exceptionMessage", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => TableFault,
    :schema_name => XSD::QName.new(NsFaultWsRsysCom, "TableFault"),
    :schema_element => [
      ["exceptionCode", "ExceptionCode"],
      ["exceptionMessage", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => LinkTableFault,
    :schema_name => XSD::QName.new(NsFaultWsRsysCom, "LinkTableFault"),
    :schema_element => [
      ["exceptionCode", "ExceptionCode"],
      ["exceptionMessage", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => DocumentFault,
    :schema_name => XSD::QName.new(NsFaultWsRsysCom, "DocumentFault"),
    :schema_element => [
      ["exceptionCode", "ExceptionCode"],
      ["exceptionMessage", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => ObjectFault,
    :schema_name => XSD::QName.new(NsFaultWsRsysCom, "ObjectFault"),
    :schema_element => [
      ["exceptionCode", "ExceptionCode"],
      ["exceptionMessage", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => ConnectFault,
    :schema_name => XSD::QName.new(NsFaultWsRsysCom, "ConnectFault"),
    :schema_element => [
      ["exceptionCode", "ExceptionCode"],
      ["exceptionMessage", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => ListExtensionFault,
    :schema_name => XSD::QName.new(NsFaultWsRsysCom, "ListExtensionFault"),
    :schema_element => [
      ["exceptionCode", "ExceptionCode"],
      ["exceptionMessage", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => UnexpectedErrorFault,
    :schema_name => XSD::QName.new(NsFaultWsRsysCom, "UnexpectedErrorFault"),
    :schema_element => [
      ["exceptionCode", "ExceptionCode"],
      ["exceptionMessage", "SOAP::SOAPString"]
    ]
  )
end

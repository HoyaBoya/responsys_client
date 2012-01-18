require 'stub/default.rb'
require 'soap/mapping'

module DefaultMappingRegistry
  EncodedRegistry = ::SOAP::Mapping::EncodedRegistry.new
  LiteralRegistry = ::SOAP::Mapping::LiteralRegistry.new
  NsFaultWsRsysCom = "urn:fault.ws.rsys.com"
  NsWsRsysCom = "urn:ws.rsys.com"
  NsXMLSchema = "http://www.w3.org/2001/XMLSchema"

  EncodedRegistry.register(
    :class => SunDawg::Responsys::LoginResult,
    :schema_type => XSD::QName.new(NsWsRsysCom, "SunDawg::Responsys::LoginResult"),
    :schema_element => [
      ["sessionId", "SOAP::SOAPString"]
    ]
  )

  EncodedRegistry.register(
    :class => SunDawg::Responsys::ServerAuthResult,
    :schema_type => XSD::QName.new(NsWsRsysCom, "SunDawg::Responsys::ServerAuthResult"),
    :schema_element => [
      ["authSessionId", "SOAP::SOAPString"],
      ["encryptedClientChallenge", "SOAP::SOAPByte[]", [1, nil]],
      ["serverChallenge", "SOAP::SOAPByte[]", [1, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => SunDawg::Responsys::FolderResult,
    :schema_type => XSD::QName.new(NsWsRsysCom, "SunDawg::Responsys::FolderResult"),
    :schema_element => [
      ["name", "SOAP::SOAPString"]
    ]
  )

  EncodedRegistry.register(
    :class => SunDawg::Responsys::InteractObject,
    :schema_type => XSD::QName.new(NsWsRsysCom, "SunDawg::Responsys::InteractObject"),
    :schema_element => [
      ["folderName", "SOAP::SOAPString"],
      ["objectName", "SOAP::SOAPString"]
    ]
  )

  EncodedRegistry.register(
    :class => SunDawg::Responsys::FolderObjectResult,
    :schema_type => XSD::QName.new(NsWsRsysCom, "SunDawg::Responsys::FolderObjectResult"),
    :schema_element => [
      ["id", "SOAP::SOAPLong"],
      ["name", "SunDawg::Responsys::InteractObject"],
      ["type", "SunDawg::Responsys::FolderObjectType"],
      ["subType", "SOAP::SOAPString"]
    ]
  )

  EncodedRegistry.register(
    :class => SunDawg::Responsys::Recipient,
    :schema_type => XSD::QName.new(NsWsRsysCom, "SunDawg::Responsys::Recipient"),
    :schema_element => [
      ["listName", "SunDawg::Responsys::InteractObject"],
      ["recipientId", "SOAP::SOAPLong"],
      ["customerId", "SOAP::SOAPString"],
      ["emailAddress", "SOAP::SOAPString"],
      ["mobileNumber", "SOAP::SOAPString"],
      ["emailFormat", "SunDawg::Responsys::EmailFormat"]
    ]
  )

  EncodedRegistry.register(
    :class => SunDawg::Responsys::OptionalData,
    :schema_type => XSD::QName.new(NsWsRsysCom, "SunDawg::Responsys::OptionalData"),
    :schema_element => [
      ["name", "SOAP::SOAPString"],
      ["value", "SOAP::SOAPString"]
    ]
  )

  EncodedRegistry.register(
    :class => SunDawg::Responsys::CampaignProperties,
    :schema_type => XSD::QName.new(NsWsRsysCom, "SunDawg::Responsys::CampaignProperties"),
    :schema_element => [
      ["campaign", "SunDawg::Responsys::InteractObject"],
      ["campaignId", "SOAP::SOAPLong"],
      ["campaignType", "SunDawg::Responsys::CampaignType"],
      ["description", "SOAP::SOAPString"],
      ["marketingProgram", "SOAP::SOAPString"],
      ["marketingStrategy", "SOAP::SOAPString"],
      ["list", "SunDawg::Responsys::InteractObject"],
      ["refiningFilters", "SunDawg::Responsys::InteractObject[]", [1, nil]],
      ["refiningDataSource", "SunDawg::Responsys::InteractObject"],
      ["governanceFilter", "SunDawg::Responsys::InteractObject"],
      ["supplementalCampaignDataSources", "SunDawg::Responsys::InteractObject[]", [1, nil]],
      ["suppressionLists", "SunDawg::Responsys::InteractObject[]", [1, nil]],
      ["supplementalProofDataSources", "SunDawg::Responsys::InteractObject[]", [1, nil]],
      ["supplementalSeedDataSources", "SunDawg::Responsys::InteractObject[]", [1, nil]],
      ["proofList", "SunDawg::Responsys::InteractObject"],
      ["seedList", "SunDawg::Responsys::InteractObject"],
      ["segmentation", "SunDawg::Responsys::InteractObject[]", [1, nil]],
      ["fromName", "SOAP::SOAPString"],
      ["fromEmail", "SOAP::SOAPString"],
      ["replyToEmail", "SOAP::SOAPString"],
      ["bccEmail", "SOAP::SOAPString"],
      ["subject", "SOAP::SOAPString"],
      ["htmlMessage", "SunDawg::Responsys::InteractObject"],
      ["textMessage", "SunDawg::Responsys::InteractObject"],
      ["enableLinkTracking", "SOAP::SOAPBoolean"],
      ["linkTable", "SunDawg::Responsys::InteractObject"],
      ["enableExternalTracking", "SOAP::SOAPBoolean"],
      ["externalTrackingParams", "SunDawg::Responsys::OptionalData[]", [1, nil]],
      ["attachments", "SunDawg::Responsys::InteractObject[]", [1, nil]],
      ["campaignVariables", "SunDawg::Responsys::OptionalData[]", [1, nil]],
      ["campaignPurpose", "SunDawg::Responsys::CampaignPurpose"],
      ["useUTF8", "SOAP::SOAPBoolean"],
      ["locale", "SunDawg::Responsys::RecipientLocale"],
      ["trackHtmlOpens", "SOAP::SOAPBoolean"],
      ["trackConversions", "SOAP::SOAPBoolean"],
      ["sendTextIfHTMLUnknown", "SOAP::SOAPBoolean"],
      ["segmentTrackingColumnName", "SOAP::SOAPString"],
      ["unsubscribeOption", "SunDawg::Responsys::UnsubscribeOption"],
      ["unsubscribeForm", "SOAP::SOAPString"],
      ["autoCloseOption", "SunDawg::Responsys::AutoCloseOption"],
      ["autoCloseValue", "SOAP::SOAPString"],
      ["closedCampaignURL", "SOAP::SOAPString"],
      ["externalCampaignCode", "SOAP::SOAPString"],
      ["salesForceCampaignId", "SOAP::SOAPString"]
    ]
  )

  EncodedRegistry.register(
    :class => SunDawg::Responsys::RecipientData,
    :schema_type => XSD::QName.new(NsWsRsysCom, "SunDawg::Responsys::RecipientData"),
    :schema_element => [
      ["recipient", "SunDawg::Responsys::Recipient"],
      ["optionalData", "SunDawg::Responsys::OptionalData[]", [1, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => SunDawg::Responsys::TriggerResult,
    :schema_type => XSD::QName.new(NsWsRsysCom, "SunDawg::Responsys::TriggerResult"),
    :schema_element => [
      ["recipientId", "SOAP::SOAPLong"],
      ["success", "SOAP::SOAPBoolean"],
      ["errorMessage", "SOAP::SOAPString"]
    ]
  )

  EncodedRegistry.register(
    :class => SunDawg::Responsys::CustomEvent,
    :schema_type => XSD::QName.new(NsWsRsysCom, "SunDawg::Responsys::CustomEvent"),
    :schema_element => [
      ["eventName", "SOAP::SOAPString"],
      ["eventId", "SOAP::SOAPLong"],
      ["eventStringDataMapping", "SOAP::SOAPString"],
      ["eventDateDataMapping", "SOAP::SOAPString"],
      ["eventNumberDataMapping", "SOAP::SOAPString"]
    ]
  )

  EncodedRegistry.register(
    :class => SunDawg::Responsys::ProofLaunchOptions,
    :schema_type => XSD::QName.new(NsWsRsysCom, "SunDawg::Responsys::ProofLaunchOptions"),
    :schema_element => [
      ["proofEmailAddress", "SOAP::SOAPString"],
      ["proofLaunchType", "SunDawg::Responsys::ProofLaunchType"]
    ]
  )

  EncodedRegistry.register(
    :class => SunDawg::Responsys::LaunchPreferences,
    :schema_type => XSD::QName.new(NsWsRsysCom, "SunDawg::Responsys::LaunchPreferences"),
    :schema_element => [
      ["enableLimit", "SOAP::SOAPBoolean"],
      ["recipientLimit", "SOAP::SOAPLong"],
      ["enableNthSampling", "SOAP::SOAPBoolean"],
      ["samplingNthSelection", "SOAP::SOAPInt"],
      ["samplingNthInterval", "SOAP::SOAPInt"],
      ["samplingNthOffset", "SOAP::SOAPInt"],
      ["enableProgressAlerts", "SOAP::SOAPBoolean"],
      ["progressEmailAddresses", "SOAP::SOAPString"],
      ["progressChunk", "SunDawg::Responsys::ProgressChunk"]
    ]
  )

  EncodedRegistry.register(
    :class => SunDawg::Responsys::LaunchResult,
    :schema_type => XSD::QName.new(NsWsRsysCom, "SunDawg::Responsys::LaunchResult"),
    :schema_element => [
      ["launchId", "SOAP::SOAPLong"]
    ]
  )

  EncodedRegistry.register(
    :class => SunDawg::Responsys::LaunchStatusResult,
    :schema_type => XSD::QName.new(NsWsRsysCom, "SunDawg::Responsys::LaunchStatusResult"),
    :schema_element => [
      ["launchId", "SOAP::SOAPLong"],
      ["launchState", "SOAP::SOAPString"],
      ["launchType", "SOAP::SOAPString"],
      ["launchDate", "SOAP::SOAPDateTime"],
      ["campaign", "SOAP::SOAPString"]
    ]
  )

  EncodedRegistry.register(
    :class => SunDawg::Responsys::Field,
    :schema_type => XSD::QName.new(NsWsRsysCom, "SunDawg::Responsys::Field"),
    :schema_element => [
      ["fieldName", "SOAP::SOAPString"],
      ["fieldType", "SunDawg::Responsys::FieldType"],
      ["custom", "SOAP::SOAPBoolean"],
      ["dataExtractionKey", "SOAP::SOAPBoolean"]
    ]
  )

  EncodedRegistry.register(
    :class => SunDawg::Responsys::ListMergeRule,
    :schema_type => XSD::QName.new(NsWsRsysCom, "SunDawg::Responsys::ListMergeRule"),
    :schema_element => [
      ["insertOnNoMatch", "SOAP::SOAPBoolean"],
      ["updateOnMatch", "SunDawg::Responsys::UpdateOnMatch"],
      ["matchColumnName1", "SOAP::SOAPString"],
      ["matchColumnName2", "SOAP::SOAPString"],
      ["matchColumnName3", "SOAP::SOAPString"],
      ["matchOperator", "SunDawg::Responsys::MatchOperator"],
      ["optinValue", "SOAP::SOAPString"],
      ["optoutValue", "SOAP::SOAPString"],
      ["htmlValue", "SOAP::SOAPString"],
      ["textValue", "SOAP::SOAPString"],
      ["rejectRecordIfChannelEmpty", "SOAP::SOAPString"],
      ["defaultPermissionStatus", "SunDawg::Responsys::PermissionStatus"]
    ]
  )

  EncodedRegistry.register(
    :class => SunDawg::Responsys::DeleteResult,
    :schema_type => XSD::QName.new(NsWsRsysCom, "SunDawg::Responsys::DeleteResult"),
    :schema_element => [
      ["id", "SOAP::SOAPString"],
      ["success", "SOAP::SOAPBoolean"],
      ["exceptionCode", "SunDawg::Responsys::ExceptionCode"],
      ["errorMessage", "SOAP::SOAPString"]
    ]
  )

  EncodedRegistry.register(
    :class => SunDawg::Responsys::GetUpdatedResult,
    :schema_type => XSD::QName.new(NsWsRsysCom, "SunDawg::Responsys::GetUpdatedResult"),
    :schema_element => [
      ["id", "SOAP::SOAPLong[]", [1, nil]],
      ["latestDateCovered", "SOAP::SOAPDateTime"]
    ]
  )

  EncodedRegistry.register(
    :class => SunDawg::Responsys::Record,
    :schema_type => XSD::QName.new(NsWsRsysCom, "SunDawg::Responsys::Record"),
    :schema_element => [
      ["fieldValues", "SOAP::SOAPString[]", [1, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => SunDawg::Responsys::RetrieveResult,
    :schema_type => XSD::QName.new(NsWsRsysCom, "SunDawg::Responsys::RetrieveResult"),
    :schema_element => [
      ["recordData", "SunDawg::Responsys::RecordData"]
    ]
  )

  EncodedRegistry.register(
    :class => SunDawg::Responsys::RecordData,
    :schema_type => XSD::QName.new(NsWsRsysCom, "SunDawg::Responsys::RecordData"),
    :schema_element => [
      ["fieldNames", "SOAP::SOAPString[]", [1, nil]],
      ["records", "SunDawg::Responsys::Record[]", [1, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => SunDawg::Responsys::MergeResult,
    :schema_type => XSD::QName.new(NsWsRsysCom, "SunDawg::Responsys::MergeResult"),
    :schema_element => [
      ["insertCount", "SOAP::SOAPLong"],
      ["updateCount", "SOAP::SOAPLong"],
      ["rejectedCount", "SOAP::SOAPLong"],
      ["totalCount", "SOAP::SOAPLong"],
      ["errorMessage", "SOAP::SOAPString"]
    ]
  )

  EncodedRegistry.register(
    :class => SunDawg::Responsys::ImageData,
    :schema_type => XSD::QName.new(NsWsRsysCom, "SunDawg::Responsys::ImageData"),
    :schema_element => [
      ["image", "SOAP::SOAPBase64"],
      ["imageName", "SOAP::SOAPString"]
    ]
  )

  EncodedRegistry.register(
    :class => SunDawg::Responsys::ContentResult,
    :schema_type => XSD::QName.new(NsWsRsysCom, "SunDawg::Responsys::ContentResult"),
    :schema_element => [
      ["content", "SOAP::SOAPString"],
      ["format", "SunDawg::Responsys::ContentFormat"],
      ["characterEncoding", "SunDawg::Responsys::CharacterEncoding"]
    ]
  )

  EncodedRegistry.register(
    :class => SunDawg::Responsys::DescribeObjectResult,
    :schema_type => XSD::QName.new(NsWsRsysCom, "SunDawg::Responsys::DescribeObjectResult"),
    :schema_element => [
      ["createdBy", "SOAP::SOAPString"],
      ["createdDate", "SOAP::SOAPDateTime"],
      ["lastModifiedBy", "SOAP::SOAPString"],
      ["lastModifiedDate", "SOAP::SOAPDateTime"],
      ["exceptionCode", "SunDawg::Responsys::ExceptionCode"],
      ["errorMessage", "SOAP::SOAPString"],
      ["fields", "SunDawg::Responsys::Field[]", [1, nil]],
      ["objectType", "SunDawg::Responsys::FolderObjectType"],
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )

  EncodedRegistry.register(
    :class => SunDawg::Responsys::RunJobResult,
    :schema_type => XSD::QName.new(NsWsRsysCom, "SunDawg::Responsys::RunJobResult"),
    :schema_element => [
      ["success", "SOAP::SOAPBoolean"],
      ["errorMessage", "SOAP::SOAPString"],
      ["jobRunId", "SOAP::SOAPLong"]
    ]
  )

  EncodedRegistry.register(
    :class => SunDawg::Responsys::JobRunStatusResult,
    :schema_type => XSD::QName.new(NsWsRsysCom, "SunDawg::Responsys::JobRunStatusResult"),
    :schema_element => [
      ["jobRunStatus", "SunDawg::Responsys::JobRunStatus"],
      ["errorMessage", "SOAP::SOAPString"],
      ["recordsProcessed", "SOAP::SOAPLong"],
      ["recordsAdded", "SOAP::SOAPLong"],
      ["recordsRejected", "SOAP::SOAPLong"],
      ["recordsUpdated", "SOAP::SOAPLong"],
      ["durationInSeconds", "SOAP::SOAPLong"]
    ]
  )

  EncodedRegistry.register(
    :class => SunDawg::Responsys::ConnectJob,
    :schema_type => XSD::QName.new(NsWsRsysCom, "SunDawg::Responsys::ConnectJob"),
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
    :class => SunDawg::Responsys::ConnectJobRun,
    :schema_type => XSD::QName.new(NsWsRsysCom, "SunDawg::Responsys::ConnectJobRun"),
    :schema_element => [
      ["jobRunId", "SOAP::SOAPLong"],
      ["jobName", "SOAP::SOAPString"],
      ["jobStartTime", "SOAP::SOAPDateTime"],
      ["durationInSeconds", "SOAP::SOAPLong"],
      ["jobRunStatus", "SunDawg::Responsys::JobRunStatus"]
    ]
  )

  EncodedRegistry.register(
    :class => SunDawg::Responsys::ConnectJobRunLog,
    :schema_type => XSD::QName.new(NsWsRsysCom, "SunDawg::Responsys::ConnectJobRunLog"),
    :schema_element => [
      ["logLevel", "SOAP::SOAPString"],
      ["logTime", "SOAP::SOAPDateTime"],
      ["logMessage", "SOAP::SOAPString"]
    ]
  )

  EncodedRegistry.register(
    :class => SunDawg::Responsys::RecipientResult,
    :schema_type => XSD::QName.new(NsWsRsysCom, "SunDawg::Responsys::RecipientResult"),
    :schema_element => [
      ["recipientId", "SOAP::SOAPLong"],
      ["errorMessage", "SOAP::SOAPString"]
    ]
  )

  EncodedRegistry.register(
    :class => SunDawg::Responsys::ApiFault,
    :schema_type => XSD::QName.new(NsFaultWsRsysCom, "ApiFault"),
    :schema_element => [
      ["exceptionCode", "SunDawg::Responsys::ExceptionCode"],
      ["exceptionMessage", "SOAP::SOAPString"]
    ]
  )

  EncodedRegistry.register(
    :class => SunDawg::Responsys::FolderObjectType,
    :schema_type => XSD::QName.new(NsWsRsysCom, "SunDawg::Responsys::FolderObjectType")
  )

  EncodedRegistry.register(
    :class => SunDawg::Responsys::EmailFormat,
    :schema_type => XSD::QName.new(NsWsRsysCom, "SunDawg::Responsys::EmailFormat")
  )

  EncodedRegistry.register(
    :class => SunDawg::Responsys::RecipientLocale,
    :schema_type => XSD::QName.new(NsWsRsysCom, "SunDawg::Responsys::RecipientLocale")
  )

  EncodedRegistry.register(
    :class => SunDawg::Responsys::CharacterEncoding,
    :schema_type => XSD::QName.new(NsWsRsysCom, "SunDawg::Responsys::CharacterEncoding")
  )

  EncodedRegistry.register(
    :class => SunDawg::Responsys::CampaignType,
    :schema_type => XSD::QName.new(NsWsRsysCom, "SunDawg::Responsys::CampaignType")
  )

  EncodedRegistry.register(
    :class => SunDawg::Responsys::UnsubscribeOption,
    :schema_type => XSD::QName.new(NsWsRsysCom, "SunDawg::Responsys::UnsubscribeOption")
  )

  EncodedRegistry.register(
    :class => SunDawg::Responsys::AutoCloseOption,
    :schema_type => XSD::QName.new(NsWsRsysCom, "SunDawg::Responsys::AutoCloseOption")
  )

  EncodedRegistry.register(
    :class => SunDawg::Responsys::CampaignPurpose,
    :schema_type => XSD::QName.new(NsWsRsysCom, "SunDawg::Responsys::CampaignPurpose")
  )

  EncodedRegistry.register(
    :class => SunDawg::Responsys::ProofLaunchType,
    :schema_type => XSD::QName.new(NsWsRsysCom, "SunDawg::Responsys::ProofLaunchType")
  )

  EncodedRegistry.register(
    :class => SunDawg::Responsys::ProgressChunk,
    :schema_type => XSD::QName.new(NsWsRsysCom, "SunDawg::Responsys::ProgressChunk")
  )

  EncodedRegistry.register(
    :class => SunDawg::Responsys::FieldType,
    :schema_type => XSD::QName.new(NsWsRsysCom, "SunDawg::Responsys::FieldType")
  )

  EncodedRegistry.register(
    :class => SunDawg::Responsys::UpdateOnMatch,
    :schema_type => XSD::QName.new(NsWsRsysCom, "SunDawg::Responsys::UpdateOnMatch")
  )

  EncodedRegistry.register(
    :class => SunDawg::Responsys::MatchOperator,
    :schema_type => XSD::QName.new(NsWsRsysCom, "SunDawg::Responsys::MatchOperator")
  )

  EncodedRegistry.register(
    :class => SunDawg::Responsys::PermissionStatus,
    :schema_type => XSD::QName.new(NsWsRsysCom, "SunDawg::Responsys::PermissionStatus")
  )

  EncodedRegistry.register(
    :class => SunDawg::Responsys::QueryColumn,
    :schema_type => XSD::QName.new(NsWsRsysCom, "SunDawg::Responsys::QueryColumn")
  )

  EncodedRegistry.register(
    :class => SunDawg::Responsys::ContentFormat,
    :schema_type => XSD::QName.new(NsWsRsysCom, "SunDawg::Responsys::ContentFormat")
  )

  EncodedRegistry.register(
    :class => SunDawg::Responsys::JobRunStatus,
    :schema_type => XSD::QName.new(NsWsRsysCom, "SunDawg::Responsys::JobRunStatus")
  )

  EncodedRegistry.register(
    :class => SunDawg::Responsys::ExceptionCode,
    :schema_type => XSD::QName.new(NsFaultWsRsysCom, "SunDawg::Responsys::ExceptionCode")
  )

  LiteralRegistry.register(
    :class => SunDawg::Responsys::LoginResult,
    :schema_type => XSD::QName.new(NsWsRsysCom, "SunDawg::Responsys::LoginResult"),
    :schema_element => [
      ["sessionId", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => SunDawg::Responsys::ServerAuthResult,
    :schema_type => XSD::QName.new(NsWsRsysCom, "SunDawg::Responsys::ServerAuthResult"),
    :schema_element => [
      ["authSessionId", "SOAP::SOAPString"],
      ["encryptedClientChallenge", "SOAP::SOAPByte[]", [1, nil]],
      ["serverChallenge", "SOAP::SOAPByte[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => SunDawg::Responsys::FolderResult,
    :schema_type => XSD::QName.new(NsWsRsysCom, "SunDawg::Responsys::FolderResult"),
    :schema_element => [
      ["name", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => SunDawg::Responsys::InteractObject,
    :schema_type => XSD::QName.new(NsWsRsysCom, "SunDawg::Responsys::InteractObject"),
    :schema_element => [
      ["folderName", "SOAP::SOAPString"],
      ["objectName", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => SunDawg::Responsys::FolderObjectResult,
    :schema_type => XSD::QName.new(NsWsRsysCom, "SunDawg::Responsys::FolderObjectResult"),
    :schema_element => [
      ["id", "SOAP::SOAPLong"],
      ["name", "SunDawg::Responsys::InteractObject"],
      ["type", "SunDawg::Responsys::FolderObjectType"],
      ["subType", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => SunDawg::Responsys::Recipient,
    :schema_type => XSD::QName.new(NsWsRsysCom, "SunDawg::Responsys::Recipient"),
    :schema_element => [
      ["listName", "SunDawg::Responsys::InteractObject"],
      ["recipientId", "SOAP::SOAPLong"],
      ["customerId", "SOAP::SOAPString"],
      ["emailAddress", "SOAP::SOAPString"],
      ["mobileNumber", "SOAP::SOAPString"],
      ["emailFormat", "SunDawg::Responsys::EmailFormat"]
    ]
  )

  LiteralRegistry.register(
    :class => SunDawg::Responsys::OptionalData,
    :schema_type => XSD::QName.new(NsWsRsysCom, "SunDawg::Responsys::OptionalData"),
    :schema_element => [
      ["name", "SOAP::SOAPString"],
      ["value", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => SunDawg::Responsys::CampaignProperties,
    :schema_type => XSD::QName.new(NsWsRsysCom, "SunDawg::Responsys::CampaignProperties"),
    :schema_element => [
      ["campaign", "SunDawg::Responsys::InteractObject"],
      ["campaignId", "SOAP::SOAPLong"],
      ["campaignType", "SunDawg::Responsys::CampaignType"],
      ["description", "SOAP::SOAPString"],
      ["marketingProgram", "SOAP::SOAPString"],
      ["marketingStrategy", "SOAP::SOAPString"],
      ["list", "SunDawg::Responsys::InteractObject"],
      ["refiningFilters", "SunDawg::Responsys::InteractObject[]", [1, nil]],
      ["refiningDataSource", "SunDawg::Responsys::InteractObject"],
      ["governanceFilter", "SunDawg::Responsys::InteractObject"],
      ["supplementalCampaignDataSources", "SunDawg::Responsys::InteractObject[]", [1, nil]],
      ["suppressionLists", "SunDawg::Responsys::InteractObject[]", [1, nil]],
      ["supplementalProofDataSources", "SunDawg::Responsys::InteractObject[]", [1, nil]],
      ["supplementalSeedDataSources", "SunDawg::Responsys::InteractObject[]", [1, nil]],
      ["proofList", "SunDawg::Responsys::InteractObject"],
      ["seedList", "SunDawg::Responsys::InteractObject"],
      ["segmentation", "SunDawg::Responsys::InteractObject[]", [1, nil]],
      ["fromName", "SOAP::SOAPString"],
      ["fromEmail", "SOAP::SOAPString"],
      ["replyToEmail", "SOAP::SOAPString"],
      ["bccEmail", "SOAP::SOAPString"],
      ["subject", "SOAP::SOAPString"],
      ["htmlMessage", "SunDawg::Responsys::InteractObject"],
      ["textMessage", "SunDawg::Responsys::InteractObject"],
      ["enableLinkTracking", "SOAP::SOAPBoolean"],
      ["linkTable", "SunDawg::Responsys::InteractObject"],
      ["enableExternalTracking", "SOAP::SOAPBoolean"],
      ["externalTrackingParams", "SunDawg::Responsys::OptionalData[]", [1, nil]],
      ["attachments", "SunDawg::Responsys::InteractObject[]", [1, nil]],
      ["campaignVariables", "SunDawg::Responsys::OptionalData[]", [1, nil]],
      ["campaignPurpose", "SunDawg::Responsys::CampaignPurpose"],
      ["useUTF8", "SOAP::SOAPBoolean"],
      ["locale", "SunDawg::Responsys::RecipientLocale"],
      ["trackHtmlOpens", "SOAP::SOAPBoolean"],
      ["trackConversions", "SOAP::SOAPBoolean"],
      ["sendTextIfHTMLUnknown", "SOAP::SOAPBoolean"],
      ["segmentTrackingColumnName", "SOAP::SOAPString"],
      ["unsubscribeOption", "SunDawg::Responsys::UnsubscribeOption"],
      ["unsubscribeForm", "SOAP::SOAPString"],
      ["autoCloseOption", "SunDawg::Responsys::AutoCloseOption"],
      ["autoCloseValue", "SOAP::SOAPString"],
      ["closedCampaignURL", "SOAP::SOAPString"],
      ["externalCampaignCode", "SOAP::SOAPString"],
      ["salesForceCampaignId", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => SunDawg::Responsys::RecipientData,
    :schema_type => XSD::QName.new(NsWsRsysCom, "SunDawg::Responsys::RecipientData"),
    :schema_element => [
      ["recipient", "SunDawg::Responsys::Recipient"],
      ["optionalData", "SunDawg::Responsys::OptionalData[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => SunDawg::Responsys::TriggerResult,
    :schema_type => XSD::QName.new(NsWsRsysCom, "SunDawg::Responsys::TriggerResult"),
    :schema_element => [
      ["recipientId", "SOAP::SOAPLong"],
      ["success", "SOAP::SOAPBoolean"],
      ["errorMessage", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => SunDawg::Responsys::CustomEvent,
    :schema_type => XSD::QName.new(NsWsRsysCom, "SunDawg::Responsys::CustomEvent"),
    :schema_element => [
      ["eventName", "SOAP::SOAPString"],
      ["eventId", "SOAP::SOAPLong"],
      ["eventStringDataMapping", "SOAP::SOAPString"],
      ["eventDateDataMapping", "SOAP::SOAPString"],
      ["eventNumberDataMapping", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => SunDawg::Responsys::ProofLaunchOptions,
    :schema_type => XSD::QName.new(NsWsRsysCom, "SunDawg::Responsys::ProofLaunchOptions"),
    :schema_element => [
      ["proofEmailAddress", "SOAP::SOAPString"],
      ["proofLaunchType", "SunDawg::Responsys::ProofLaunchType"]
    ]
  )

  LiteralRegistry.register(
    :class => SunDawg::Responsys::LaunchPreferences,
    :schema_type => XSD::QName.new(NsWsRsysCom, "SunDawg::Responsys::LaunchPreferences"),
    :schema_element => [
      ["enableLimit", "SOAP::SOAPBoolean"],
      ["recipientLimit", "SOAP::SOAPLong"],
      ["enableNthSampling", "SOAP::SOAPBoolean"],
      ["samplingNthSelection", "SOAP::SOAPInt"],
      ["samplingNthInterval", "SOAP::SOAPInt"],
      ["samplingNthOffset", "SOAP::SOAPInt"],
      ["enableProgressAlerts", "SOAP::SOAPBoolean"],
      ["progressEmailAddresses", "SOAP::SOAPString"],
      ["progressChunk", "SunDawg::Responsys::ProgressChunk"]
    ]
  )

  LiteralRegistry.register(
    :class => SunDawg::Responsys::LaunchResult,
    :schema_type => XSD::QName.new(NsWsRsysCom, "SunDawg::Responsys::LaunchResult"),
    :schema_element => [
      ["launchId", "SOAP::SOAPLong"]
    ]
  )

  LiteralRegistry.register(
    :class => SunDawg::Responsys::LaunchStatusResult,
    :schema_type => XSD::QName.new(NsWsRsysCom, "SunDawg::Responsys::LaunchStatusResult"),
    :schema_element => [
      ["launchId", "SOAP::SOAPLong"],
      ["launchState", "SOAP::SOAPString"],
      ["launchType", "SOAP::SOAPString"],
      ["launchDate", "SOAP::SOAPDateTime"],
      ["campaign", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => SunDawg::Responsys::Field,
    :schema_type => XSD::QName.new(NsWsRsysCom, "SunDawg::Responsys::Field"),
    :schema_element => [
      ["fieldName", "SOAP::SOAPString"],
      ["fieldType", "SunDawg::Responsys::FieldType"],
      ["custom", "SOAP::SOAPBoolean"],
      ["dataExtractionKey", "SOAP::SOAPBoolean"]
    ]
  )

  LiteralRegistry.register(
    :class => SunDawg::Responsys::ListMergeRule,
    :schema_type => XSD::QName.new(NsWsRsysCom, "SunDawg::Responsys::ListMergeRule"),
    :schema_element => [
      ["insertOnNoMatch", "SOAP::SOAPBoolean"],
      ["updateOnMatch", "SunDawg::Responsys::UpdateOnMatch"],
      ["matchColumnName1", "SOAP::SOAPString"],
      ["matchColumnName2", "SOAP::SOAPString"],
      ["matchColumnName3", "SOAP::SOAPString"],
      ["matchOperator", "SunDawg::Responsys::MatchOperator"],
      ["optinValue", "SOAP::SOAPString"],
      ["optoutValue", "SOAP::SOAPString"],
      ["htmlValue", "SOAP::SOAPString"],
      ["textValue", "SOAP::SOAPString"],
      ["rejectRecordIfChannelEmpty", "SOAP::SOAPString"],
      ["defaultPermissionStatus", "SunDawg::Responsys::PermissionStatus"]
    ]
  )

  LiteralRegistry.register(
    :class => SunDawg::Responsys::DeleteResult,
    :schema_type => XSD::QName.new(NsWsRsysCom, "SunDawg::Responsys::DeleteResult"),
    :schema_element => [
      ["id", "SOAP::SOAPString"],
      ["success", "SOAP::SOAPBoolean"],
      ["exceptionCode", "SunDawg::Responsys::ExceptionCode"],
      ["errorMessage", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => SunDawg::Responsys::GetUpdatedResult,
    :schema_type => XSD::QName.new(NsWsRsysCom, "SunDawg::Responsys::GetUpdatedResult"),
    :schema_element => [
      ["id", "SOAP::SOAPLong[]", [1, nil]],
      ["latestDateCovered", "SOAP::SOAPDateTime"]
    ]
  )

  LiteralRegistry.register(
    :class => SunDawg::Responsys::Record,
    :schema_type => XSD::QName.new(NsWsRsysCom, "SunDawg::Responsys::Record"),
    :schema_element => [
      ["fieldValues", "SOAP::SOAPString[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => SunDawg::Responsys::RetrieveResult,
    :schema_type => XSD::QName.new(NsWsRsysCom, "SunDawg::Responsys::RetrieveResult"),
    :schema_element => [
      ["recordData", "SunDawg::Responsys::RecordData"]
    ]
  )

  LiteralRegistry.register(
    :class => SunDawg::Responsys::RecordData,
    :schema_type => XSD::QName.new(NsWsRsysCom, "SunDawg::Responsys::RecordData"),
    :schema_element => [
      ["fieldNames", "SOAP::SOAPString[]", [1, nil]],
      ["records", "SunDawg::Responsys::Record[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => SunDawg::Responsys::MergeResult,
    :schema_type => XSD::QName.new(NsWsRsysCom, "SunDawg::Responsys::MergeResult"),
    :schema_element => [
      ["insertCount", "SOAP::SOAPLong"],
      ["updateCount", "SOAP::SOAPLong"],
      ["rejectedCount", "SOAP::SOAPLong"],
      ["totalCount", "SOAP::SOAPLong"],
      ["errorMessage", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => SunDawg::Responsys::ImageData,
    :schema_type => XSD::QName.new(NsWsRsysCom, "SunDawg::Responsys::ImageData"),
    :schema_element => [
      ["image", "SOAP::SOAPBase64"],
      ["imageName", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => SunDawg::Responsys::ContentResult,
    :schema_type => XSD::QName.new(NsWsRsysCom, "SunDawg::Responsys::ContentResult"),
    :schema_element => [
      ["content", "SOAP::SOAPString"],
      ["format", "SunDawg::Responsys::ContentFormat"],
      ["characterEncoding", "SunDawg::Responsys::CharacterEncoding"]
    ]
  )

  LiteralRegistry.register(
    :class => SunDawg::Responsys::DescribeObjectResult,
    :schema_type => XSD::QName.new(NsWsRsysCom, "SunDawg::Responsys::DescribeObjectResult"),
    :schema_element => [
      ["createdBy", "SOAP::SOAPString"],
      ["createdDate", "SOAP::SOAPDateTime"],
      ["lastModifiedBy", "SOAP::SOAPString"],
      ["lastModifiedDate", "SOAP::SOAPDateTime"],
      ["exceptionCode", "SunDawg::Responsys::ExceptionCode"],
      ["errorMessage", "SOAP::SOAPString"],
      ["fields", "SunDawg::Responsys::Field[]", [1, nil]],
      ["objectType", "SunDawg::Responsys::FolderObjectType"],
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )

  LiteralRegistry.register(
    :class => SunDawg::Responsys::RunJobResult,
    :schema_type => XSD::QName.new(NsWsRsysCom, "SunDawg::Responsys::RunJobResult"),
    :schema_element => [
      ["success", "SOAP::SOAPBoolean"],
      ["errorMessage", "SOAP::SOAPString"],
      ["jobRunId", "SOAP::SOAPLong"]
    ]
  )

  LiteralRegistry.register(
    :class => SunDawg::Responsys::JobRunStatusResult,
    :schema_type => XSD::QName.new(NsWsRsysCom, "SunDawg::Responsys::JobRunStatusResult"),
    :schema_element => [
      ["jobRunStatus", "SunDawg::Responsys::JobRunStatus"],
      ["errorMessage", "SOAP::SOAPString"],
      ["recordsProcessed", "SOAP::SOAPLong"],
      ["recordsAdded", "SOAP::SOAPLong"],
      ["recordsRejected", "SOAP::SOAPLong"],
      ["recordsUpdated", "SOAP::SOAPLong"],
      ["durationInSeconds", "SOAP::SOAPLong"]
    ]
  )

  LiteralRegistry.register(
    :class => SunDawg::Responsys::ConnectJob,
    :schema_type => XSD::QName.new(NsWsRsysCom, "SunDawg::Responsys::ConnectJob"),
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
    :class => SunDawg::Responsys::ConnectJobRun,
    :schema_type => XSD::QName.new(NsWsRsysCom, "SunDawg::Responsys::ConnectJobRun"),
    :schema_element => [
      ["jobRunId", "SOAP::SOAPLong"],
      ["jobName", "SOAP::SOAPString"],
      ["jobStartTime", "SOAP::SOAPDateTime"],
      ["durationInSeconds", "SOAP::SOAPLong"],
      ["jobRunStatus", "SunDawg::Responsys::JobRunStatus"]
    ]
  )

  LiteralRegistry.register(
    :class => SunDawg::Responsys::ConnectJobRunLog,
    :schema_type => XSD::QName.new(NsWsRsysCom, "SunDawg::Responsys::ConnectJobRunLog"),
    :schema_element => [
      ["logLevel", "SOAP::SOAPString"],
      ["logTime", "SOAP::SOAPDateTime"],
      ["logMessage", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => SunDawg::Responsys::RecipientResult,
    :schema_type => XSD::QName.new(NsWsRsysCom, "SunDawg::Responsys::RecipientResult"),
    :schema_element => [
      ["recipientId", "SOAP::SOAPLong"],
      ["errorMessage", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => SunDawg::Responsys::ApiFault,
    :schema_type => XSD::QName.new(NsFaultWsRsysCom, "ApiFault"),
    :schema_element => [
      ["exceptionCode", "SunDawg::Responsys::ExceptionCode"],
      ["exceptionMessage", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => SunDawg::Responsys::FolderObjectType,
    :schema_type => XSD::QName.new(NsWsRsysCom, "SunDawg::Responsys::FolderObjectType")
  )

  LiteralRegistry.register(
    :class => SunDawg::Responsys::EmailFormat,
    :schema_type => XSD::QName.new(NsWsRsysCom, "SunDawg::Responsys::EmailFormat")
  )

  LiteralRegistry.register(
    :class => SunDawg::Responsys::RecipientLocale,
    :schema_type => XSD::QName.new(NsWsRsysCom, "SunDawg::Responsys::RecipientLocale")
  )

  LiteralRegistry.register(
    :class => SunDawg::Responsys::CharacterEncoding,
    :schema_type => XSD::QName.new(NsWsRsysCom, "SunDawg::Responsys::CharacterEncoding")
  )

  LiteralRegistry.register(
    :class => SunDawg::Responsys::CampaignType,
    :schema_type => XSD::QName.new(NsWsRsysCom, "SunDawg::Responsys::CampaignType")
  )

  LiteralRegistry.register(
    :class => SunDawg::Responsys::UnsubscribeOption,
    :schema_type => XSD::QName.new(NsWsRsysCom, "SunDawg::Responsys::UnsubscribeOption")
  )

  LiteralRegistry.register(
    :class => SunDawg::Responsys::AutoCloseOption,
    :schema_type => XSD::QName.new(NsWsRsysCom, "SunDawg::Responsys::AutoCloseOption")
  )

  LiteralRegistry.register(
    :class => SunDawg::Responsys::CampaignPurpose,
    :schema_type => XSD::QName.new(NsWsRsysCom, "SunDawg::Responsys::CampaignPurpose")
  )

  LiteralRegistry.register(
    :class => SunDawg::Responsys::ProofLaunchType,
    :schema_type => XSD::QName.new(NsWsRsysCom, "SunDawg::Responsys::ProofLaunchType")
  )

  LiteralRegistry.register(
    :class => SunDawg::Responsys::ProgressChunk,
    :schema_type => XSD::QName.new(NsWsRsysCom, "SunDawg::Responsys::ProgressChunk")
  )

  LiteralRegistry.register(
    :class => SunDawg::Responsys::FieldType,
    :schema_type => XSD::QName.new(NsWsRsysCom, "SunDawg::Responsys::FieldType")
  )

  LiteralRegistry.register(
    :class => SunDawg::Responsys::UpdateOnMatch,
    :schema_type => XSD::QName.new(NsWsRsysCom, "SunDawg::Responsys::UpdateOnMatch")
  )

  LiteralRegistry.register(
    :class => SunDawg::Responsys::MatchOperator,
    :schema_type => XSD::QName.new(NsWsRsysCom, "SunDawg::Responsys::MatchOperator")
  )

  LiteralRegistry.register(
    :class => SunDawg::Responsys::PermissionStatus,
    :schema_type => XSD::QName.new(NsWsRsysCom, "SunDawg::Responsys::PermissionStatus")
  )

  LiteralRegistry.register(
    :class => SunDawg::Responsys::QueryColumn,
    :schema_type => XSD::QName.new(NsWsRsysCom, "SunDawg::Responsys::QueryColumn")
  )

  LiteralRegistry.register(
    :class => SunDawg::Responsys::ContentFormat,
    :schema_type => XSD::QName.new(NsWsRsysCom, "SunDawg::Responsys::ContentFormat")
  )

  LiteralRegistry.register(
    :class => SunDawg::Responsys::JobRunStatus,
    :schema_type => XSD::QName.new(NsWsRsysCom, "SunDawg::Responsys::JobRunStatus")
  )

  LiteralRegistry.register(
    :class => SunDawg::Responsys::ExceptionCode,
    :schema_type => XSD::QName.new(NsFaultWsRsysCom, "SunDawg::Responsys::ExceptionCode")
  )

  LiteralRegistry.register(
    :class => SunDawg::Responsys::Login,
    :schema_name => XSD::QName.new(NsWsRsysCom, "login"),
    :schema_element => [
      ["username", "SOAP::SOAPString"],
      ["password", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => SunDawg::Responsys::LoginResponse,
    :schema_name => XSD::QName.new(NsWsRsysCom, "loginResponse"),
    :schema_element => [
      ["result", "SunDawg::Responsys::LoginResult"]
    ]
  )

  LiteralRegistry.register(
    :class => SunDawg::Responsys::AuthenticateServer,
    :schema_name => XSD::QName.new(NsWsRsysCom, "authenticateServer"),
    :schema_element => [
      ["username", "SOAP::SOAPString"],
      ["clientChallenge", "SOAP::SOAPByte[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => SunDawg::Responsys::AuthenticateServerResponse,
    :schema_name => XSD::QName.new(NsWsRsysCom, "authenticateServerResponse"),
    :schema_element => [
      ["result", "SunDawg::Responsys::ServerAuthResult"]
    ]
  )

  LiteralRegistry.register(
    :class => SunDawg::Responsys::LoginWithCertificate,
    :schema_name => XSD::QName.new(NsWsRsysCom, "loginWithCertificate"),
    :schema_element => [
      ["encryptedServerChallenge", "SOAP::SOAPByte[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => SunDawg::Responsys::LoginWithCertificateResponse,
    :schema_name => XSD::QName.new(NsWsRsysCom, "loginWithCertificateResponse"),
    :schema_element => [
      ["result", "SunDawg::Responsys::LoginResult"]
    ]
  )

  LiteralRegistry.register(
    :class => SunDawg::Responsys::Logout,
    :schema_name => XSD::QName.new(NsWsRsysCom, "logout"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => SunDawg::Responsys::LogoutResponse,
    :schema_name => XSD::QName.new(NsWsRsysCom, "logoutResponse"),
    :schema_element => [
      ["result", "SOAP::SOAPBoolean"]
    ]
  )

  LiteralRegistry.register(
    :class => SunDawg::Responsys::CreateFolder,
    :schema_name => XSD::QName.new(NsWsRsysCom, "createFolder"),
    :schema_element => [
      ["folderName", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => SunDawg::Responsys::CreateFolderResponse,
    :schema_name => XSD::QName.new(NsWsRsysCom, "createFolderResponse"),
    :schema_element => [
      ["result", "SOAP::SOAPBoolean"]
    ]
  )

  LiteralRegistry.register(
    :class => SunDawg::Responsys::DeleteFolder,
    :schema_name => XSD::QName.new(NsWsRsysCom, "deleteFolder"),
    :schema_element => [
      ["folderName", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => SunDawg::Responsys::DeleteFolderResponse,
    :schema_name => XSD::QName.new(NsWsRsysCom, "deleteFolderResponse"),
    :schema_element => [
      ["result", "SOAP::SOAPBoolean"]
    ]
  )

  LiteralRegistry.register(
    :class => SunDawg::Responsys::ListFolders,
    :schema_name => XSD::QName.new(NsWsRsysCom, "listFolders"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => SunDawg::Responsys::ListFoldersResponse,
    :schema_name => XSD::QName.new(NsWsRsysCom, "listFoldersResponse"),
    :schema_element => [
      ["result", "SunDawg::Responsys::FolderResult[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => SunDawg::Responsys::ListFolderObjects,
    :schema_name => XSD::QName.new(NsWsRsysCom, "listFolderObjects"),
    :schema_element => [
      ["folderName", "SOAP::SOAPString"],
      ["type", "SunDawg::Responsys::FolderObjectType"]
    ]
  )

  LiteralRegistry.register(
    :class => SunDawg::Responsys::ListFolderObjectsResponse,
    :schema_name => XSD::QName.new(NsWsRsysCom, "listFolderObjectsResponse"),
    :schema_element => [
      ["result", "SunDawg::Responsys::FolderObjectResult[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => SunDawg::Responsys::SessionHeader,
    :schema_name => XSD::QName.new(NsWsRsysCom, "SessionHeader"),
    :schema_element => [
      ["sessionId", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => SunDawg::Responsys::AuthSessionHeader,
    :schema_name => XSD::QName.new(NsWsRsysCom, "AuthSessionHeader"),
    :schema_element => [
      ["authSessionId", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => SunDawg::Responsys::TriggerCampaignMessage,
    :schema_name => XSD::QName.new(NsWsRsysCom, "triggerCampaignMessage"),
    :schema_element => [
      ["campaign", "SunDawg::Responsys::InteractObject"],
      ["recipientData", "SunDawg::Responsys::RecipientData[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => SunDawg::Responsys::TriggerCampaignMessageResponse,
    :schema_name => XSD::QName.new(NsWsRsysCom, "triggerCampaignMessageResponse"),
    :schema_element => [
      ["result", "SunDawg::Responsys::TriggerResult[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => SunDawg::Responsys::TriggerCustomEvent,
    :schema_name => XSD::QName.new(NsWsRsysCom, "triggerCustomEvent"),
    :schema_element => [
      ["customEvent", "SunDawg::Responsys::CustomEvent"],
      ["recipientData", "SunDawg::Responsys::RecipientData[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => SunDawg::Responsys::TriggerCustomEventResponse,
    :schema_name => XSD::QName.new(NsWsRsysCom, "triggerCustomEventResponse"),
    :schema_element => [
      ["result", "SunDawg::Responsys::TriggerResult[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => SunDawg::Responsys::CreateCampaign,
    :schema_name => XSD::QName.new(NsWsRsysCom, "createCampaign"),
    :schema_element => [
      ["campaign", "SunDawg::Responsys::InteractObject"],
      ["campaignType", "SunDawg::Responsys::CampaignType"]
    ]
  )

  LiteralRegistry.register(
    :class => SunDawg::Responsys::CreateCampaignResponse,
    :schema_name => XSD::QName.new(NsWsRsysCom, "createCampaignResponse"),
    :schema_element => [
      ["result", "SOAP::SOAPLong"]
    ]
  )

  LiteralRegistry.register(
    :class => SunDawg::Responsys::SetCampaignProperties,
    :schema_name => XSD::QName.new(NsWsRsysCom, "setCampaignProperties"),
    :schema_element => [
      ["campaignProperties", "SunDawg::Responsys::CampaignProperties"]
    ]
  )

  LiteralRegistry.register(
    :class => SunDawg::Responsys::SetCampaignPropertiesResponse,
    :schema_name => XSD::QName.new(NsWsRsysCom, "setCampaignPropertiesResponse"),
    :schema_element => [
      ["result", "SOAP::SOAPBoolean"]
    ]
  )

  LiteralRegistry.register(
    :class => SunDawg::Responsys::GetCampaignProperties,
    :schema_name => XSD::QName.new(NsWsRsysCom, "getCampaignProperties"),
    :schema_element => [
      ["campaign", "SunDawg::Responsys::InteractObject"],
      ["campaignId", "SOAP::SOAPLong"]
    ]
  )

  LiteralRegistry.register(
    :class => SunDawg::Responsys::GetCampaignPropertiesResponse,
    :schema_name => XSD::QName.new(NsWsRsysCom, "getCampaignPropertiesResponse"),
    :schema_element => [
      ["result", "SunDawg::Responsys::CampaignProperties"]
    ]
  )

  LiteralRegistry.register(
    :class => SunDawg::Responsys::LaunchCampaign,
    :schema_name => XSD::QName.new(NsWsRsysCom, "launchCampaign"),
    :schema_element => [
      ["campaign", "SunDawg::Responsys::InteractObject"],
      ["proofLaunchOptions", "SunDawg::Responsys::ProofLaunchOptions"],
      ["launchPreferences", "SunDawg::Responsys::LaunchPreferences"]
    ]
  )

  LiteralRegistry.register(
    :class => SunDawg::Responsys::LaunchCampaignResponse,
    :schema_name => XSD::QName.new(NsWsRsysCom, "launchCampaignResponse"),
    :schema_element => [
      ["result", "SunDawg::Responsys::LaunchResult"]
    ]
  )

  LiteralRegistry.register(
    :class => SunDawg::Responsys::ScheduleCampaignLaunch,
    :schema_name => XSD::QName.new(NsWsRsysCom, "scheduleCampaignLaunch"),
    :schema_element => [
      ["campaign", "SunDawg::Responsys::InteractObject"],
      ["proofLaunchOptions", "SunDawg::Responsys::ProofLaunchOptions"],
      ["launchPreferences", "SunDawg::Responsys::LaunchPreferences"],
      ["scheduleDate", "SOAP::SOAPDateTime"]
    ]
  )

  LiteralRegistry.register(
    :class => SunDawg::Responsys::ScheduleCampaignLaunchResponse,
    :schema_name => XSD::QName.new(NsWsRsysCom, "scheduleCampaignLaunchResponse"),
    :schema_element => [
      ["result", "SOAP::SOAPBoolean"]
    ]
  )

  LiteralRegistry.register(
    :class => SunDawg::Responsys::GetLaunchStatus,
    :schema_name => XSD::QName.new(NsWsRsysCom, "getLaunchStatus"),
    :schema_element => [
      ["launchIds", "SOAP::SOAPLong[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => SunDawg::Responsys::GetLaunchStatusResponse,
    :schema_name => XSD::QName.new(NsWsRsysCom, "getLaunchStatusResponse"),
    :schema_element => [
      ["result", "SunDawg::Responsys::LaunchStatusResult[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => SunDawg::Responsys::GetCampaignId,
    :schema_name => XSD::QName.new(NsWsRsysCom, "getCampaignId"),
    :schema_element => [
      ["campaign", "SunDawg::Responsys::InteractObject"]
    ]
  )

  LiteralRegistry.register(
    :class => SunDawg::Responsys::GetCampaignIdResponse,
    :schema_name => XSD::QName.new(NsWsRsysCom, "getCampaignIdResponse"),
    :schema_element => [
      ["result", "SOAP::SOAPLong"]
    ]
  )

  LiteralRegistry.register(
    :class => SunDawg::Responsys::DeleteCampaign,
    :schema_name => XSD::QName.new(NsWsRsysCom, "deleteCampaign"),
    :schema_element => [
      ["campaign", "SunDawg::Responsys::InteractObject"]
    ]
  )

  LiteralRegistry.register(
    :class => SunDawg::Responsys::DeleteCampaignResponse,
    :schema_name => XSD::QName.new(NsWsRsysCom, "deleteCampaignResponse"),
    :schema_element => [
      ["result", "SOAP::SOAPBoolean"]
    ]
  )

  LiteralRegistry.register(
    :class => SunDawg::Responsys::GetLaunchesForCampaign,
    :schema_name => XSD::QName.new(NsWsRsysCom, "getLaunchesForCampaign"),
    :schema_element => [
      ["campaign", "SunDawg::Responsys::InteractObject"],
      ["campaignId", "SOAP::SOAPLong"],
      ["fromDate", "SOAP::SOAPDateTime"],
      ["toDate", "SOAP::SOAPDateTime"]
    ]
  )

  LiteralRegistry.register(
    :class => SunDawg::Responsys::GetLaunchesForCampaignResponse,
    :schema_name => XSD::QName.new(NsWsRsysCom, "getLaunchesForCampaignResponse"),
    :schema_element => [
      ["result", "SunDawg::Responsys::LaunchStatusResult[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => SunDawg::Responsys::GetOpenLaunches,
    :schema_name => XSD::QName.new(NsWsRsysCom, "getOpenLaunches"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => SunDawg::Responsys::GetOpenLaunchesResponse,
    :schema_name => XSD::QName.new(NsWsRsysCom, "getOpenLaunchesResponse"),
    :schema_element => [
      ["result", "SunDawg::Responsys::LaunchStatusResult[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => SunDawg::Responsys::CloseCampaign,
    :schema_name => XSD::QName.new(NsWsRsysCom, "closeCampaign"),
    :schema_element => [
      ["campaign", "SunDawg::Responsys::InteractObject"],
      ["campaignId", "SOAP::SOAPLong"]
    ]
  )

  LiteralRegistry.register(
    :class => SunDawg::Responsys::CloseCampaignResponse,
    :schema_name => XSD::QName.new(NsWsRsysCom, "closeCampaignResponse"),
    :schema_element => [
      ["result", "SOAP::SOAPBoolean"]
    ]
  )

  LiteralRegistry.register(
    :class => SunDawg::Responsys::UnscheduleCampaignLaunch,
    :schema_name => XSD::QName.new(NsWsRsysCom, "unscheduleCampaignLaunch"),
    :schema_element => [
      ["campaign", "SunDawg::Responsys::InteractObject"],
      ["campaignId", "SOAP::SOAPLong"],
      ["scheduleDate", "SOAP::SOAPDateTime"]
    ]
  )

  LiteralRegistry.register(
    :class => SunDawg::Responsys::UnscheduleCampaignLaunchResponse,
    :schema_name => XSD::QName.new(NsWsRsysCom, "unscheduleCampaignLaunchResponse"),
    :schema_element => [
      ["result", "SOAP::SOAPBoolean"]
    ]
  )

  LiteralRegistry.register(
    :class => SunDawg::Responsys::CreateList,
    :schema_name => XSD::QName.new(NsWsRsysCom, "createList"),
    :schema_element => [
      ["list", "SunDawg::Responsys::InteractObject"],
      ["description", "SOAP::SOAPString"],
      ["fields", "SunDawg::Responsys::Field[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => SunDawg::Responsys::CreateListResponse,
    :schema_name => XSD::QName.new(NsWsRsysCom, "createListResponse"),
    :schema_element => [
      ["result", "SOAP::SOAPBoolean"]
    ]
  )

  LiteralRegistry.register(
    :class => SunDawg::Responsys::ChangeListSchema,
    :schema_name => XSD::QName.new(NsWsRsysCom, "changeListSchema"),
    :schema_element => [
      ["list", "SunDawg::Responsys::InteractObject"],
      ["addFields", "SunDawg::Responsys::Field[]", [1, nil]],
      ["removeFields", "SOAP::SOAPString[]", [1, nil]],
      ["renameFields", "SOAP::SOAPString[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => SunDawg::Responsys::ChangeListSchemaResponse,
    :schema_name => XSD::QName.new(NsWsRsysCom, "changeListSchemaResponse"),
    :schema_element => [
      ["result", "SOAP::SOAPBoolean"]
    ]
  )

  LiteralRegistry.register(
    :class => SunDawg::Responsys::DeleteList,
    :schema_name => XSD::QName.new(NsWsRsysCom, "deleteList"),
    :schema_element => [
      ["list", "SunDawg::Responsys::InteractObject"]
    ]
  )

  LiteralRegistry.register(
    :class => SunDawg::Responsys::DeleteListResponse,
    :schema_name => XSD::QName.new(NsWsRsysCom, "deleteListResponse"),
    :schema_element => [
      ["result", "SOAP::SOAPBoolean"]
    ]
  )

  LiteralRegistry.register(
    :class => SunDawg::Responsys::MergeListMembers,
    :schema_name => XSD::QName.new(NsWsRsysCom, "mergeListMembers"),
    :schema_element => [
      ["list", "SunDawg::Responsys::InteractObject"],
      ["recordData", "SunDawg::Responsys::RecordData"],
      ["mergeRule", "SunDawg::Responsys::ListMergeRule"]
    ]
  )

  LiteralRegistry.register(
    :class => SunDawg::Responsys::MergeListMembersResponse,
    :schema_name => XSD::QName.new(NsWsRsysCom, "mergeListMembersResponse"),
    :schema_element => [
      ["result", "SunDawg::Responsys::MergeResult"]
    ]
  )

  LiteralRegistry.register(
    :class => SunDawg::Responsys::RetrieveListMembers,
    :schema_name => XSD::QName.new(NsWsRsysCom, "retrieveListMembers"),
    :schema_element => [
      ["list", "SunDawg::Responsys::InteractObject"],
      ["queryColumn", "SunDawg::Responsys::QueryColumn"],
      ["fieldList", "SOAP::SOAPString[]", [1, nil]],
      ["idsToRetrieve", "SOAP::SOAPString[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => SunDawg::Responsys::RetrieveListMembersResponse,
    :schema_name => XSD::QName.new(NsWsRsysCom, "retrieveListMembersResponse"),
    :schema_element => [
      ["result", "SunDawg::Responsys::RetrieveResult"]
    ]
  )

  LiteralRegistry.register(
    :class => SunDawg::Responsys::DeleteListMembers,
    :schema_name => XSD::QName.new(NsWsRsysCom, "deleteListMembers"),
    :schema_element => [
      ["list", "SunDawg::Responsys::InteractObject"],
      ["queryColumn", "SunDawg::Responsys::QueryColumn"],
      ["idsToDelete", "SOAP::SOAPString[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => SunDawg::Responsys::DeleteListMembersResponse,
    :schema_name => XSD::QName.new(NsWsRsysCom, "deleteListMembersResponse"),
    :schema_element => [
      ["result", "SunDawg::Responsys::DeleteResult[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => SunDawg::Responsys::GetUpdated,
    :schema_name => XSD::QName.new(NsWsRsysCom, "getUpdated"),
    :schema_element => [
      ["list", "SunDawg::Responsys::InteractObject"],
      ["startTime", "SOAP::SOAPDateTime"],
      ["endTime", "SOAP::SOAPDateTime"]
    ]
  )

  LiteralRegistry.register(
    :class => SunDawg::Responsys::GetUpdatedResponse,
    :schema_name => XSD::QName.new(NsWsRsysCom, "getUpdatedResponse"),
    :schema_element => [
      ["result", "SunDawg::Responsys::GetUpdatedResult"]
    ]
  )

  LiteralRegistry.register(
    :class => SunDawg::Responsys::CreateTable,
    :schema_name => XSD::QName.new(NsWsRsysCom, "createTable"),
    :schema_element => [
      ["table", "SunDawg::Responsys::InteractObject"],
      ["fields", "SunDawg::Responsys::Field[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => SunDawg::Responsys::CreateTableResponse,
    :schema_name => XSD::QName.new(NsWsRsysCom, "createTableResponse"),
    :schema_element => [
      ["result", "SOAP::SOAPBoolean"]
    ]
  )

  LiteralRegistry.register(
    :class => SunDawg::Responsys::DeleteTable,
    :schema_name => XSD::QName.new(NsWsRsysCom, "deleteTable"),
    :schema_element => [
      ["table", "SunDawg::Responsys::InteractObject"]
    ]
  )

  LiteralRegistry.register(
    :class => SunDawg::Responsys::DeleteTableResponse,
    :schema_name => XSD::QName.new(NsWsRsysCom, "deleteTableResponse"),
    :schema_element => [
      ["result", "SOAP::SOAPBoolean"]
    ]
  )

  LiteralRegistry.register(
    :class => SunDawg::Responsys::ChangeTableSchema,
    :schema_name => XSD::QName.new(NsWsRsysCom, "changeTableSchema"),
    :schema_element => [
      ["table", "SunDawg::Responsys::InteractObject"],
      ["addFields", "SunDawg::Responsys::Field[]", [1, nil]],
      ["removeFields", "SOAP::SOAPString[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => SunDawg::Responsys::ChangeTableSchemaResponse,
    :schema_name => XSD::QName.new(NsWsRsysCom, "changeTableSchemaResponse"),
    :schema_element => [
      ["result", "SOAP::SOAPBoolean"]
    ]
  )

  LiteralRegistry.register(
    :class => SunDawg::Responsys::MergeTableRecords,
    :schema_name => XSD::QName.new(NsWsRsysCom, "mergeTableRecords"),
    :schema_element => [
      ["table", "SunDawg::Responsys::InteractObject"],
      ["recordData", "SunDawg::Responsys::RecordData"],
      ["matchColumnNames", "SOAP::SOAPString[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => SunDawg::Responsys::MergeTableRecordsResponse,
    :schema_name => XSD::QName.new(NsWsRsysCom, "mergeTableRecordsResponse"),
    :schema_element => [
      ["result", "SunDawg::Responsys::MergeResult"]
    ]
  )

  LiteralRegistry.register(
    :class => SunDawg::Responsys::RetrieveTableRecords,
    :schema_name => XSD::QName.new(NsWsRsysCom, "retrieveTableRecords"),
    :schema_element => [
      ["table", "SunDawg::Responsys::InteractObject"],
      ["queryColumn", "SOAP::SOAPString"],
      ["fieldList", "SOAP::SOAPString[]", [1, nil]],
      ["idsToRetrieve", "SOAP::SOAPString[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => SunDawg::Responsys::RetrieveTableRecordsResponse,
    :schema_name => XSD::QName.new(NsWsRsysCom, "retrieveTableRecordsResponse"),
    :schema_element => [
      ["result", "SunDawg::Responsys::RetrieveResult"]
    ]
  )

  LiteralRegistry.register(
    :class => SunDawg::Responsys::DeleteTableRecords,
    :schema_name => XSD::QName.new(NsWsRsysCom, "deleteTableRecords"),
    :schema_element => [
      ["table", "SunDawg::Responsys::InteractObject"],
      ["queryColumn", "SOAP::SOAPString"],
      ["idsToDelete", "SOAP::SOAPString[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => SunDawg::Responsys::DeleteTableRecordsResponse,
    :schema_name => XSD::QName.new(NsWsRsysCom, "deleteTableRecordsResponse"),
    :schema_element => [
      ["result", "SunDawg::Responsys::DeleteResult[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => SunDawg::Responsys::TruncateTable,
    :schema_name => XSD::QName.new(NsWsRsysCom, "truncateTable"),
    :schema_element => [
      ["table", "SunDawg::Responsys::InteractObject"]
    ]
  )

  LiteralRegistry.register(
    :class => SunDawg::Responsys::TruncateTableResponse,
    :schema_name => XSD::QName.new(NsWsRsysCom, "truncateTableResponse"),
    :schema_element => [
      ["result", "SOAP::SOAPBoolean"]
    ]
  )

  LiteralRegistry.register(
    :class => SunDawg::Responsys::CreateSQLView,
    :schema_name => XSD::QName.new(NsWsRsysCom, "createSQLView"),
    :schema_element => [
      ["sqlView", "SunDawg::Responsys::InteractObject"],
      ["tables", "SunDawg::Responsys::InteractObject[]", [1, nil]],
      ["sqlQuery", "SOAP::SOAPString"],
      ["dataExtractionKey", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => SunDawg::Responsys::CreateSQLViewResponse,
    :schema_name => XSD::QName.new(NsWsRsysCom, "createSQLViewResponse"),
    :schema_element => [
      ["result", "SOAP::SOAPBoolean"]
    ]
  )

  LiteralRegistry.register(
    :class => SunDawg::Responsys::CreateLinkTable,
    :schema_name => XSD::QName.new(NsWsRsysCom, "createLinkTable"),
    :schema_element => [
      ["linkTable", "SunDawg::Responsys::InteractObject"],
      ["description", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => SunDawg::Responsys::CreateLinkTableResponse,
    :schema_name => XSD::QName.new(NsWsRsysCom, "createLinkTableResponse"),
    :schema_element => [
      ["result", "SOAP::SOAPBoolean"]
    ]
  )

  LiteralRegistry.register(
    :class => SunDawg::Responsys::DeleteLinkTable,
    :schema_name => XSD::QName.new(NsWsRsysCom, "deleteLinkTable"),
    :schema_element => [
      ["linkTable", "SunDawg::Responsys::InteractObject"]
    ]
  )

  LiteralRegistry.register(
    :class => SunDawg::Responsys::DeleteLinkTableResponse,
    :schema_name => XSD::QName.new(NsWsRsysCom, "deleteLinkTableResponse"),
    :schema_element => [
      ["result", "SOAP::SOAPBoolean"]
    ]
  )

  LiteralRegistry.register(
    :class => SunDawg::Responsys::MergeLinkRecords,
    :schema_name => XSD::QName.new(NsWsRsysCom, "mergeLinkRecords"),
    :schema_element => [
      ["linkTable", "SunDawg::Responsys::InteractObject"],
      ["recordData", "SunDawg::Responsys::RecordData"]
    ]
  )

  LiteralRegistry.register(
    :class => SunDawg::Responsys::MergeLinkRecordsResponse,
    :schema_name => XSD::QName.new(NsWsRsysCom, "mergeLinkRecordsResponse"),
    :schema_element => [
      ["result", "SunDawg::Responsys::MergeResult"]
    ]
  )

  LiteralRegistry.register(
    :class => SunDawg::Responsys::RetrieveLinkRecords,
    :schema_name => XSD::QName.new(NsWsRsysCom, "retrieveLinkRecords"),
    :schema_element => [
      ["linkTable", "SunDawg::Responsys::InteractObject"]
    ]
  )

  LiteralRegistry.register(
    :class => SunDawg::Responsys::RetrieveLinkRecordsResponse,
    :schema_name => XSD::QName.new(NsWsRsysCom, "retrieveLinkRecordsResponse"),
    :schema_element => [
      ["result", "SunDawg::Responsys::RetrieveResult"]
    ]
  )

  LiteralRegistry.register(
    :class => SunDawg::Responsys::DeleteLinkRecords,
    :schema_name => XSD::QName.new(NsWsRsysCom, "deleteLinkRecords"),
    :schema_element => [
      ["linkTable", "SunDawg::Responsys::InteractObject"],
      ["linkNamesToDelete", "SOAP::SOAPString[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => SunDawg::Responsys::DeleteLinkRecordsResponse,
    :schema_name => XSD::QName.new(NsWsRsysCom, "deleteLinkRecordsResponse"),
    :schema_element => [
      ["result", "SunDawg::Responsys::DeleteResult[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => SunDawg::Responsys::CreateDocument,
    :schema_name => XSD::QName.new(NsWsRsysCom, "createDocument"),
    :schema_element => [
      ["document", "SunDawg::Responsys::InteractObject"],
      ["content", "SOAP::SOAPString"],
      ["characterEncoding", "SunDawg::Responsys::CharacterEncoding"]
    ]
  )

  LiteralRegistry.register(
    :class => SunDawg::Responsys::CreateDocumentResponse,
    :schema_name => XSD::QName.new(NsWsRsysCom, "createDocumentResponse"),
    :schema_element => [
      ["result", "SOAP::SOAPBoolean"]
    ]
  )

  LiteralRegistry.register(
    :class => SunDawg::Responsys::DeleteDocument,
    :schema_name => XSD::QName.new(NsWsRsysCom, "deleteDocument"),
    :schema_element => [
      ["document", "SunDawg::Responsys::InteractObject"]
    ]
  )

  LiteralRegistry.register(
    :class => SunDawg::Responsys::DeleteDocumentResponse,
    :schema_name => XSD::QName.new(NsWsRsysCom, "deleteDocumentResponse"),
    :schema_element => [
      ["result", "SOAP::SOAPBoolean"]
    ]
  )

  LiteralRegistry.register(
    :class => SunDawg::Responsys::SetDocumentImages,
    :schema_name => XSD::QName.new(NsWsRsysCom, "setDocumentImages"),
    :schema_element => [
      ["document", "SunDawg::Responsys::InteractObject"],
      ["imageData", "SunDawg::Responsys::ImageData[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => SunDawg::Responsys::SetDocumentImagesResponse,
    :schema_name => XSD::QName.new(NsWsRsysCom, "setDocumentImagesResponse"),
    :schema_element => [
      ["result", "SOAP::SOAPBoolean"]
    ]
  )

  LiteralRegistry.register(
    :class => SunDawg::Responsys::GetDocumentImages,
    :schema_name => XSD::QName.new(NsWsRsysCom, "getDocumentImages"),
    :schema_element => [
      ["document", "SunDawg::Responsys::InteractObject"]
    ]
  )

  LiteralRegistry.register(
    :class => SunDawg::Responsys::GetDocumentImagesResponse,
    :schema_name => XSD::QName.new(NsWsRsysCom, "getDocumentImagesResponse"),
    :schema_element => [
      ["result", "SunDawg::Responsys::ImageData[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => SunDawg::Responsys::SetDocumentContent,
    :schema_name => XSD::QName.new(NsWsRsysCom, "setDocumentContent"),
    :schema_element => [
      ["document", "SunDawg::Responsys::InteractObject"],
      ["content", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => SunDawg::Responsys::SetDocumentContentResponse,
    :schema_name => XSD::QName.new(NsWsRsysCom, "setDocumentContentResponse"),
    :schema_element => [
      ["result", "SOAP::SOAPBoolean"]
    ]
  )

  LiteralRegistry.register(
    :class => SunDawg::Responsys::GetDocumentContent,
    :schema_name => XSD::QName.new(NsWsRsysCom, "getDocumentContent"),
    :schema_element => [
      ["document", "SunDawg::Responsys::InteractObject"]
    ]
  )

  LiteralRegistry.register(
    :class => SunDawg::Responsys::GetDocumentContentResponse,
    :schema_name => XSD::QName.new(NsWsRsysCom, "getDocumentContentResponse"),
    :schema_element => [
      ["result", "SunDawg::Responsys::ContentResult"]
    ]
  )

  LiteralRegistry.register(
    :class => SunDawg::Responsys::Copy,
    :schema_name => XSD::QName.new(NsWsRsysCom, "copy"),
    :schema_element => [
      ["existingObject", "SunDawg::Responsys::InteractObject"],
      ["newObject", "SunDawg::Responsys::InteractObject"]
    ]
  )

  LiteralRegistry.register(
    :class => SunDawg::Responsys::CopyResponse,
    :schema_name => XSD::QName.new(NsWsRsysCom, "copyResponse"),
    :schema_element => [
      ["result", "SOAP::SOAPBoolean"]
    ]
  )

  LiteralRegistry.register(
    :class => SunDawg::Responsys::Move,
    :schema_name => XSD::QName.new(NsWsRsysCom, "move"),
    :schema_element => [
      ["existingObject", "SunDawg::Responsys::InteractObject"],
      ["newObject", "SunDawg::Responsys::InteractObject"]
    ]
  )

  LiteralRegistry.register(
    :class => SunDawg::Responsys::MoveResponse,
    :schema_name => XSD::QName.new(NsWsRsysCom, "moveResponse"),
    :schema_element => [
      ["result", "SOAP::SOAPBoolean"]
    ]
  )

  LiteralRegistry.register(
    :class => SunDawg::Responsys::GetServerTimestamp,
    :schema_name => XSD::QName.new(NsWsRsysCom, "getServerTimestamp"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => SunDawg::Responsys::GetServerTimestampResponse,
    :schema_name => XSD::QName.new(NsWsRsysCom, "getServerTimestampResponse"),
    :schema_element => [
      ["result", "SOAP::SOAPDateTime"]
    ]
  )

  LiteralRegistry.register(
    :class => SunDawg::Responsys::DescribeObjects,
    :schema_name => XSD::QName.new(NsWsRsysCom, "describeObjects"),
    :schema_element => [
      ["objects", "SunDawg::Responsys::InteractObject[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => SunDawg::Responsys::DescribeObjectsResponse,
    :schema_name => XSD::QName.new(NsWsRsysCom, "describeObjectsResponse"),
    :schema_element => [
      ["result", "SunDawg::Responsys::DescribeObjectResult[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => SunDawg::Responsys::RunJob,
    :schema_name => XSD::QName.new(NsWsRsysCom, "runJob"),
    :schema_element => [
      ["jobId", "SOAP::SOAPLong"]
    ]
  )

  LiteralRegistry.register(
    :class => SunDawg::Responsys::RunJobResponse,
    :schema_name => XSD::QName.new(NsWsRsysCom, "runJobResponse"),
    :schema_element => [
      ["result", "SunDawg::Responsys::RunJobResult"]
    ]
  )

  LiteralRegistry.register(
    :class => SunDawg::Responsys::GetJobRunStatus,
    :schema_name => XSD::QName.new(NsWsRsysCom, "getJobRunStatus"),
    :schema_element => [
      ["jobRunId", "SOAP::SOAPLong"]
    ]
  )

  LiteralRegistry.register(
    :class => SunDawg::Responsys::GetJobRunStatusResponse,
    :schema_name => XSD::QName.new(NsWsRsysCom, "getJobRunStatusResponse"),
    :schema_element => [
      ["result", "SunDawg::Responsys::JobRunStatusResult"]
    ]
  )

  LiteralRegistry.register(
    :class => SunDawg::Responsys::GetJobs,
    :schema_name => XSD::QName.new(NsWsRsysCom, "getJobs"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => SunDawg::Responsys::GetJobsResponse,
    :schema_name => XSD::QName.new(NsWsRsysCom, "getJobsResponse"),
    :schema_element => [
      ["result", "SunDawg::Responsys::ConnectJob[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => SunDawg::Responsys::GetJobRuns,
    :schema_name => XSD::QName.new(NsWsRsysCom, "getJobRuns"),
    :schema_element => [
      ["jobId", "SOAP::SOAPLong"],
      ["startDate", "SOAP::SOAPDateTime"],
      ["endDate", "SOAP::SOAPDateTime"]
    ]
  )

  LiteralRegistry.register(
    :class => SunDawg::Responsys::GetJobRunsResponse,
    :schema_name => XSD::QName.new(NsWsRsysCom, "getJobRunsResponse"),
    :schema_element => [
      ["result", "SunDawg::Responsys::ConnectJobRun[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => SunDawg::Responsys::GetJobRunLog,
    :schema_name => XSD::QName.new(NsWsRsysCom, "getJobRunLog"),
    :schema_element => [
      ["jobRunId", "SOAP::SOAPLong"]
    ]
  )

  LiteralRegistry.register(
    :class => SunDawg::Responsys::GetJobRunLogResponse,
    :schema_name => XSD::QName.new(NsWsRsysCom, "getJobRunLogResponse"),
    :schema_element => [
      ["result", "SunDawg::Responsys::ConnectJobRunLog[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => SunDawg::Responsys::MergeListMembersRIID,
    :schema_name => XSD::QName.new(NsWsRsysCom, "mergeListMembersRIID"),
    :schema_element => [
      ["list", "SunDawg::Responsys::InteractObject"],
      ["recordData", "SunDawg::Responsys::RecordData"],
      ["mergeRule", "SunDawg::Responsys::ListMergeRule"]
    ]
  )

  LiteralRegistry.register(
    :class => SunDawg::Responsys::MergeListMembersRIIDResponse,
    :schema_name => XSD::QName.new(NsWsRsysCom, "mergeListMembersRIIDResponse"),
    :schema_element => [
      ["recipientResult", "SunDawg::Responsys::RecipientResult[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => SunDawg::Responsys::MergeIntoProfileExtension,
    :schema_name => XSD::QName.new(NsWsRsysCom, "mergeIntoProfileExtension"),
    :schema_element => [
      ["profileExtension", "SunDawg::Responsys::InteractObject"],
      ["recordData", "SunDawg::Responsys::RecordData"],
      ["matchColumn", "SunDawg::Responsys::QueryColumn"],
      ["insertOnNoMatch", "SOAP::SOAPBoolean"],
      ["updateOnMatch", "SunDawg::Responsys::UpdateOnMatch"]
    ]
  )

  LiteralRegistry.register(
    :class => SunDawg::Responsys::MergeIntoProfileExtensionResponse,
    :schema_name => XSD::QName.new(NsWsRsysCom, "mergeIntoProfileExtensionResponse"),
    :schema_element => [
      ["recipientResult", "SunDawg::Responsys::RecipientResult[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => SunDawg::Responsys::AccountFault,
    :schema_name => XSD::QName.new(NsFaultWsRsysCom, "AccountFault"),
    :schema_element => [
      ["exceptionCode", "SunDawg::Responsys::ExceptionCode"],
      ["exceptionMessage", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => SunDawg::Responsys::FolderFault,
    :schema_name => XSD::QName.new(NsFaultWsRsysCom, "FolderFault"),
    :schema_element => [
      ["exceptionCode", "SunDawg::Responsys::ExceptionCode"],
      ["exceptionMessage", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => SunDawg::Responsys::TriggeredMessageFault,
    :schema_name => XSD::QName.new(NsFaultWsRsysCom, "TriggeredMessageFault"),
    :schema_element => [
      ["exceptionCode", "SunDawg::Responsys::ExceptionCode"],
      ["exceptionMessage", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => SunDawg::Responsys::CustomEventFault,
    :schema_name => XSD::QName.new(NsFaultWsRsysCom, "CustomEventFault"),
    :schema_element => [
      ["exceptionCode", "SunDawg::Responsys::ExceptionCode"],
      ["exceptionMessage", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => SunDawg::Responsys::CampaignFault,
    :schema_name => XSD::QName.new(NsFaultWsRsysCom, "CampaignFault"),
    :schema_element => [
      ["exceptionCode", "SunDawg::Responsys::ExceptionCode"],
      ["exceptionMessage", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => SunDawg::Responsys::ListFault,
    :schema_name => XSD::QName.new(NsFaultWsRsysCom, "ListFault"),
    :schema_element => [
      ["exceptionCode", "SunDawg::Responsys::ExceptionCode"],
      ["exceptionMessage", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => SunDawg::Responsys::TableFault,
    :schema_name => XSD::QName.new(NsFaultWsRsysCom, "TableFault"),
    :schema_element => [
      ["exceptionCode", "SunDawg::Responsys::ExceptionCode"],
      ["exceptionMessage", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => SunDawg::Responsys::LinkTableFault,
    :schema_name => XSD::QName.new(NsFaultWsRsysCom, "LinkTableFault"),
    :schema_element => [
      ["exceptionCode", "SunDawg::Responsys::ExceptionCode"],
      ["exceptionMessage", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => SunDawg::Responsys::DocumentFault,
    :schema_name => XSD::QName.new(NsFaultWsRsysCom, "DocumentFault"),
    :schema_element => [
      ["exceptionCode", "SunDawg::Responsys::ExceptionCode"],
      ["exceptionMessage", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => SunDawg::Responsys::ObjectFault,
    :schema_name => XSD::QName.new(NsFaultWsRsysCom, "ObjectFault"),
    :schema_element => [
      ["exceptionCode", "SunDawg::Responsys::ExceptionCode"],
      ["exceptionMessage", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => SunDawg::Responsys::ConnectFault,
    :schema_name => XSD::QName.new(NsFaultWsRsysCom, "ConnectFault"),
    :schema_element => [
      ["exceptionCode", "SunDawg::Responsys::ExceptionCode"],
      ["exceptionMessage", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => SunDawg::Responsys::ListExtensionFault,
    :schema_name => XSD::QName.new(NsFaultWsRsysCom, "ListExtensionFault"),
    :schema_element => [
      ["exceptionCode", "SunDawg::Responsys::ExceptionCode"],
      ["exceptionMessage", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => SunDawg::Responsys::UnexpectedErrorFault,
    :schema_name => XSD::QName.new(NsFaultWsRsysCom, "UnexpectedErrorFault"),
    :schema_element => [
      ["exceptionCode", "SunDawg::Responsys::ExceptionCode"],
      ["exceptionMessage", "SOAP::SOAPString"]
    ]
  )
end

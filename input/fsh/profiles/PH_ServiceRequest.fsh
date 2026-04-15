Profile: PH_ServiceRequest
Parent: ServiceRequest
Id: PH-ServiceRequest
Title: "PH ServiceRequest"
Description: "A record of a request for service such as diagnostic investigations, treatments, or operations to be performed."
* ^url = "https://nhdr.gov.ph/fhir/StructureDefinition/PH-ServiceRequest"
* insert MetaData
// * id ..0
* insert MetaElement
* implicitRules ..0
* language ..0
* text ..0
* contained ..0
* extension ..0
* modifierExtension ..0
* identifier ..0
* instantiatesCanonical ..0
* instantiatesUri ..0
* basedOn ..0
* replaces ..0
* requisition ..0
// * status ..0
// * intent ..0     Can't disable elements that are mandatory by default
* category ..0
* priority ..0
* doNotPerform ..0
* code ..0
* orderDetail ..0
* quantity[x] ..0
* subject only Reference($SD_Patient or Group or $SD_Location or Device)    //Can't disable elements that are mandatory by default
* encounter ..0
// * occurrence[x] ..0
* asNeeded[x] ..0
* authoredOn ..0
* requester only Reference($SD_Practitioner or $SD_PractitionerRole or $SD_Organization or $SD_Patient or $SD_RelatedPerson or Device)
* performerType ..0
* performer only Reference($SD_Practitioner or $SD_PractitionerRole or $SD_Organization or CareTeam or HealthcareService or $SD_Patient or Device or $SD_RelatedPerson)
* locationCode ..0
* locationReference ..0
// * reasonCode ..0
* reasonReference only Reference($SD_Condition or $SD_Observation or $SD_DiagnosticReport or DocumentReference)
* insurance ..0
* supportingInfo ..0
* specimen ..0
* bodySite ..0
* note ..0
* patientInstruction ..0
* relevantHistory ..0
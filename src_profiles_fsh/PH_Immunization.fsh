Profile: PH_Immunization
Parent: Immunization
Id: PH-Immunization
* ^url = "https://philhealth.gov.ph/fhir/StructureDefinition/PH_Immunization"
* ^status = #draft
* extension contains ExtOrganization named extOrganization 0..*
* extension[extOrganization] ^short = "Organization where the immunization was conducted"
* extension[extOrganization] ^definition = "Organization where the immunization was conducted."
* status from ImmunizationStatus (required)
* vaccineCode from ImmunizationVaccineCode (example)
* primarySource ..0
* reportOrigin from ImmunizationReportOrigin (example)
* location ..0
* manufacturer ..0
* lotNumber ..0
* expirationDate ..0
* site ..0
* route from ImmunizationRoute (example)
* performer ..0
* reasonCode from ImmunizationStatusReason (example)
* reasonReference ..0
* isSubpotent ..0
* subpotentReason ..0
* education ..0
* programEligibility ..0
* fundingSource ..0
* protocolApplied ..0
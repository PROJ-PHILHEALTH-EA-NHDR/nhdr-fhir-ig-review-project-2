Profile: PH_Procedure
Parent: Procedure
Id: PH-Procedure
* ^url = "https://philhealth.gov.ph/fhir/StructureDefinition/PH_Procedure"
* ^status = #draft
* extension contains
    Organization named organization 0..* and
    RecordedDate named recordedDate 0..* and
    IllnessClass named illnessClass 0..*
* extension[organization] ^short = "The facility where the procedure was done"
* extension[organization] ^definition = "The facility where the procedure was done"
* extension[recordedDate] ^short = "This is the date the procedure was recorded in NHDR"
* extension[recordedDate] ^definition = "This is the date the procedure was recorded in NHDR"
* extension[illnessClass] ^short = "Illness code of the disease as listed in Philhealth"
* extension[illnessClass] ^definition = "Illness code of the disease as listed in Philhealth"
* instantiatesCanonical ..0
* instantiatesUri ..0
* basedOn ..0
* partOf ..0
* status = #http://example.org/fhir/ValueSet/ProcedureStatusValueSet (exactly)
* status from ProcedureStatusValueSet (required)
* statusReason ..0
* code from ProcedureCodeValueSet (example)
* recorder ..0
* asserter ..0
* performer ..0
* location ..0
* reasonCode ..0
* reasonReference ..0
* bodySite from ProcedureBodySiteValueSet (example)
* report ..0
* complication ..0
* complicationDetail ..0
* followUp ..0
* focalDevice ..0
* usedReference ..0
* usedCode ..0
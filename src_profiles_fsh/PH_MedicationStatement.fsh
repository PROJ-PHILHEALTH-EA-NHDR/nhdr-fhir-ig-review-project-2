Profile: PH_MedicationStatement
Parent: MedicationStatement
Id: PH-MedicationStatement
* ^url = "https://philhealth.gov.ph/fhir/StructureDefinition/PH_MedicationStatement"
* ^status = #draft
* extension contains
    ExtOrganization named extOrganization 0..* and
    ExtEncounter named extEncounter 0..*
* extension[extOrganization] ^short = "The health facility code where the medication was administered."
* extension[extOrganization] ^definition = "The health facility code where the medication was administered."
* extension[extEncounter] ^short = "The encounter when the medicine was consumed or administered."
* extension[extEncounter] ^definition = "The encounter when the medicine was consumed or administered."
* basedOn ..0
* partOf ..0
* category ..0
* context ..0
* effective[x] ..0
* dateAsserted ..0
* informationSource ..0
* derivedFrom ..0
* reasonReference ..0
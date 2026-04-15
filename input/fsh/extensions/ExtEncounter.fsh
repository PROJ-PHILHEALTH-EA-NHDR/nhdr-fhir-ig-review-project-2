// Extension: MedicationEncounter
// Id: MedicationEncounter
// Context: MedicationAdministration, MedicationStatement
// Title: "Medication Encounter (Extension)"
// Description: "The encounter when the medicine was consumed or administered."
// * ^url = "https://nhdr.gov.ph/fhir/StructureDefinition/MedicationEncounter"
// * insert MetaData
// * value[x] only Reference(PH_Encounter)

// Extension: ClaimEncounter
// Id: ClaimEncounter
// Context: Claim
// Title: "Claim Encounter (Extension)"
// Description: "Healthcare encounters related to this claim."
// * ^url = "https://nhdr.gov.ph/fhir/StructureDefinition/ClaimEncounter"
// * insert MetaData
// * value[x] only Reference(PH_Encounter)

Extension: EncounterExtension
Id: EncounterExtension
Context: Claim, MedicationAdministration, MedicationStatement
Title: "Encounter (Extension)"
Description: "Extension to capture healthcare encounters."
* ^url = "https://nhdr.gov.ph/fhir/StructureDefinition/EncounterExtension"
* insert MetaData
* value[x] only Reference(PH_Encounter)
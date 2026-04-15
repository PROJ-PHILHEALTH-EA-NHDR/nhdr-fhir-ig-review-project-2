Extension: ExtEncounter
Id: ExtEncounter
Context: MedicationAdministration, MedicationStatement
* ^url = "https://philhealth.gov.ph/fhir/StructureDefinition/ExtEncounter"
* ^status = #draft
* value[x] only Reference(Encounter)
* value[x] ^type.aggregation = #referenced
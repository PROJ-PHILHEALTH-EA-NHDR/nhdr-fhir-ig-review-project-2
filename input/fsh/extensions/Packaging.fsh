Extension: Packaging
Id: Packaging
Context: Medication
Title: "Package description"
Description: "Detailed description on the medication packaging."
* ^url = "https://nhdr.gov.ph/fhir/StructureDefinition/Packaging"
* insert MetaData
* value[x] only CodeableConcept
* value[x] from $DrugCodesVS (required)
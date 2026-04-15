Extension: IndigenousGroup
Id: IndigenousGroup
Context: Patient
Title: "Indigenous Group"
Description: "Indigenous group that the patient belongs to."
* ^url = "https://nhdr.gov.ph/fhir/StructureDefinition/IndigenousGroup"
* insert MetaData
* value[x] only CodeableConcept
* value[x] from $IndigenousGroupVS (required)

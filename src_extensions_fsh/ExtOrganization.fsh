Extension: ExtOrganization
Id: ExtOrganization
Context: Condition, Procedure, Observation, Specimen, DiagnosticReport, MedicationAdministration, MedicationStatement, Immunization
* ^url = "https://philhealth.gov.ph/fhir/StructureDefinition/Ext_Organization"
* ^status = #draft
* value[x] only Reference(Organization)
* value[x] ^type.aggregation = #referenced
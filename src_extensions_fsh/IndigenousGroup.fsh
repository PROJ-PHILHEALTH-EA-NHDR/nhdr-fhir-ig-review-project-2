Extension: IndigenousGroup
Id: IndigenousGroup
Context: Patient
* ^url = "https://philhealth.gov.ph/fhir/StructureDefinition/IndigenousGroup"
* ^status = #draft
* value[x] only CodeableConcept
* value[x].coding from $IndigenousGroupValueSet (required)
* value[x].coding ^binding.description = "ValueSet"
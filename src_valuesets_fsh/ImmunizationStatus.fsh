ValueSet: ImmunizationStatus
Id: ImmunizationStatus
Title: "Immunization Status Value Set"
Description: "A value set representing the status of immunization."
* ^url = "http://example.org/fhir/ValueSet/ImmunizationStatus"
* ^version = "1.0.0"
* ^status = #draft
* ^experimental = false
* ^date = "2024-11-28"
* ^publisher = "Your Organization Name"
* $ImmunizationStatusCodeSystem#Vaccinated "Vaccinated"
* $ImmunizationStatusCodeSystem#Unvaccinated "Unvaccinated"
* $ImmunizationStatusCodeSystem#Unknown "Unknown"
* $ImmunizationStatusCodeSystem#Yes "Yes"
* $ImmunizationStatusCodeSystem#No "No"
ValueSet: ServiceTypeVS
Id: ServiceTypeVS
Title: "Service Type"
Description: "A value set specifying the various types of services provided during an encounter."
* ^url = "https://nhdr.gov.ph/fhir/ValueSet/ServiceTypeVS"
* insert MetaData
* ^experimental = false
* include codes from system $ServiceTypeCS
* include $ServiceTypeCS#630 "Konsulta Services" 
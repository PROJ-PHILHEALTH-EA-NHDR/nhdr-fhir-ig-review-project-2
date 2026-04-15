ValueSet: ProvinceVS
Id: ProvinceVS
Title: "Province Codes"
Description: "The Province codes valueset includes all province values from the Philippine Standard Geographic Codes (PSGC) published by the Philippine Statistic Authority (PSA)."
* ^url = "https://nhdr.gov.ph/fhir/ValueSet/ProvinceVS"
* insert MetaData
* ^experimental = false
* include codes from system $PSGCCS
// * include codes from system $PSGCCS where concept is-a #_Province
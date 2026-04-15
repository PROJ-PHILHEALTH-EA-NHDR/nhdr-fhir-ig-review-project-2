ValueSet: CityVS
Id: CityVS
Title: "City Codes"
Description: "The City codes valueset includes all city values from the Philippine Standard Geographic Codes (PSGC) published by the Philippine Statistic Authority (PSA)."
* ^url = "https://nhdr.gov.ph/fhir/ValueSet/CityVS"
* insert MetaData
* ^experimental = false
* include codes from system $PSGCCS
// * include codes from system $PSGCCS where concept is-a #_City
ValueSet: RegionVS
Id: RegionVS
Title: "Region Codes"
Description: "The Region codes valueset includes all regions values from the Philippine Standard Geographic Codes (PSGC) published by the Philippine Statistic Authority (PSA)."
* ^url = "https://nhdr.gov.ph/fhir/ValueSet/RegionVS"
* insert MetaData
* ^experimental = false
* include codes from system $PSGCCS
// * include codes from system $PSGCCS where concept is-a #_Region
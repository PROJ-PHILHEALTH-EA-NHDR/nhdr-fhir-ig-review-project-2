ValueSet: EducationalAttainmentVS
Id: EducationalAttainmentVS
Title: "Educational Attainment"
Description: "This ValueSet includes all categories of educational programs, courses, and attainment levels in the Philippines, based on the Philippine Standard Classification of Education (PSCED) published by the Philippine Statistics Authority (PSA)"
* ^url = "https://nhdr.gov.ph/fhir/ValueSet/EducationalAttainmentVS"
* insert MetaData
* ^experimental = false
* include codes from system $PSCEDCS
// * include codes from system $PSGCCS where concept is-a #_City
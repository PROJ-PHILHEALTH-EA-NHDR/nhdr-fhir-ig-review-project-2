ValueSet: SexVS
Id: SexVS
Title: "Sex"
Description: "A person's sex at birth"
* ^url = "https://nhdr.gov.ph/fhir/ValueSet/SexVS"
* insert MetaData
* ^experimental = false
* include codes from system $SexCS
* exclude $SexCS#O
* exclude $SexCS#A
* exclude $SexCS#N
* exclude $SexCS#X
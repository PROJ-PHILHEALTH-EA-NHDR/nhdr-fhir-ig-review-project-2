ValueSet: CoverageCopayTypeVS
Id: CoverageCoPayTypeVS
Title: "Coverage Copay Type"
Description: "A valueset representing different types of copayments associated with healthcare coverage"
* ^url = "https://nhdr.gov.ph/fhir/ValueSet/CoverageCoPayTypeVS"
* insert MetaData
* ^experimental = false
* include codes from system $CoverageCopayTypeCS
* include codes from system $CoverageCopayTypeLocalCS

// * include $CoverageCopayTypeCS#nobalbill "No Balance Billing"
// * include $CoverageCopayTypeCS#nocopay "No Co-pay"



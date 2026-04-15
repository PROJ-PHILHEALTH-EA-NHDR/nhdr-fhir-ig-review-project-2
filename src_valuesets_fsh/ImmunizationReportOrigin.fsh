ValueSet: ImmunizationReportOrigin
Id: ImmunizationReportOrigin
Title: "Immunization Report Origin Value Set"
Description: "A value set representing the origin of immunization reports."
* ^url = "http://example.org/fhir/ValueSet/ImmunizationReportOrigin"
* ^version = "1.0.0"
* ^status = #draft
* ^experimental = false
* ^date = "2024-11-28"
* ^publisher = "Your Organization Name"
* $ImmunizationReportOriginCodeSystem#VaccinationCard "Vaccination Card"
* $ImmunizationReportOriginCodeSystem#Logsheet "Logsheet"
* $ImmunizationReportOriginCodeSystem#ByRecall "By recall"
* $ImmunizationReportOriginCodeSystem#OthersSpecify "Others, Specify"
* $ImmunizationReportOriginCodeSystem#Card "Card"
* $ImmunizationReportOriginCodeSystem#Recall "Recall"
* $ImmunizationReportOriginCodeSystem#TCL "TCL"
* $ImmunizationReportOriginCodeSystem#Both "Both"
* $ImmunizationReportOriginCodeSystem#Unknown "Unknown"
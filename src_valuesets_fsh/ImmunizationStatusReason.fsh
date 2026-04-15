ValueSet: ImmunizationStatusReason
Id: ImmunizationStatusReason
Title: "Immunization Status Reason Value Set"
Description: "A value set representing reasons for immunization status."
* ^url = "http://example.org/fhir/ValueSet/ImmunizationStatusReason"
* ^version = "1.0.0"
* ^status = #draft
* ^experimental = false
* ^date = "2024-11-28"
* ^publisher = "Your Organization Name"
* $ImmunizationStatusReasonCodeSystem#MotherBusy "Mother was busy"
* $ImmunizationStatusReasonCodeSystem#ChildSick "Child was sick"
* $ImmunizationStatusReasonCodeSystem#ForgotSchedule "Forgot schedule"
* $ImmunizationStatusReasonCodeSystem#AgainstBelief "Against belief"
* $ImmunizationStatusReasonCodeSystem#NoVaccineAvailable "No vaccine available"
* $ImmunizationStatusReasonCodeSystem#MedicalContraindication "Medical contraindication"
* $ImmunizationStatusReasonCodeSystem#VaccinatorNotAvailable "Vaccinator not available"
* $ImmunizationStatusReasonCodeSystem#FearOfSideEffects "Fear of side effects"
* $ImmunizationStatusReasonCodeSystem#NotEligible "Not eligible for vaccination"
* $ImmunizationStatusReasonCodeSystem#OtherReasonsSpecify "Other reasons, specify"
ValueSet: ProcedureStatusValueSet
Id: ProcedureStatusValueSet
Title: "Procedure Status Value Set"
Description: "A value set representing the status of a procedure, indicating whether it has been done or not done."
* ^url = "http://example.org/fhir/ValueSet/ProcedureStatusValueSet"
* ^version = "1.0.0"
* ^status = #draft
* ^experimental = false
* ^date = "2024-11-28"
* ^publisher = "Your Organization Name"
* $ProcedureStatusCodeSystem#Done "Done"
* $ProcedureStatusCodeSystem#NotDone "Not Done"
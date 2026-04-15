ValueSet: EncounterHospitalizationDischargeDispositionValueSet
Id: EncounterHospitalizationDischargeDispositionValueSet
Title: "Encounter Hospitalization Discharge Disposition Value Set"
Description: "This ValueSet contains a set of discharge disposition codes used to document the status or disposition of a patient after hospitalization."
* ^url = "http://example.org/fhir/ValueSet/EncounterHospitalizationDischargeDispositionValueSet"
* ^version = "1.0.0"
* ^status = #active
* ^experimental = false
* ^date = "2024-11-26"
* ^publisher = "Example Publisher"
* ^contact.name = "Support Team"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "support@example.org"
* ^jurisdiction = urn:iso:std:iso:3166#PH "Philippines"
* ^immutable = false
* $EncounterDischargeDisposition#improved "Improved"
* $EncounterDischargeDisposition#recovered "Recovered"
* $EncounterDischargeDisposition#dama-hama "Discharged against medical advice (DAMA) or Home against medical advice (HAMA)"
* $EncounterDischargeDisposition#absconded "Absconded"
* $EncounterDischargeDisposition#expired "Expired"
* $EncounterDischargeDisposition#transferred-referred "Transferred/Referred"
* $EncounterDischargeDisposition#admitted-hospital "Admitted in Hospital"
* $EncounterDischargeDisposition#admitted-isolation-quarantine "Admitted in isolation/quarantine facility"
* $EncounterDischargeDisposition#home-isolation-quarantine "In home isolation/quarantine"
* $EncounterDischargeDisposition#discharged-home "Discharged to home"
* $EncounterDischargeDisposition#others "Others"
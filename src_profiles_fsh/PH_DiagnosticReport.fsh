Profile: PH_DiagnosticReport
Parent: DiagnosticReport
Id: PH-DiagnosticReport
* ^url = "https://philhealth.gov.ph/fhir/StructureDefinition/PH_DiagnosticReport"
* ^status = #draft
* extension contains ExtOrganization named extOrganization 0..*
* extension[extOrganization] ^short = "Health facility where the diagnosis was made"
* extension[extOrganization] ^definition = "Health facility where the diagnosis was made"
* basedOn ..0
* code from DiagnosticReportCode (preferred)
* performer ..0
* resultsInterpreter ..0
* imagingStudy ..0
* media ..0
* presentedForm ..0
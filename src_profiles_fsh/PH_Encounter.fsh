Profile: PH_Encounter
Parent: Encounter
Id: PH-Encounter
* ^url = "https://philhealth.gov.ph/fhir/StructureDefinition/PH_Encounter"
* ^status = #draft
* extension contains
    AgeYears named ageYears 0..* and
    AgeMonths named ageMonths 0..* and
    AgeDays named ageDays 0..* and
    PatientClassification named patientClassification 0..* and
    Interviewer named interviewer 0..* and
    InvestigatorName named investigatorName 0..* and
    DateInterview named dateInterview 0..* and
    DateInvestigation named dateInvestigation 0..* and
    ReporterName named reporterName 0..*
    /* dangling reference - disabled (2)
     and
    IllnessClass named illnessClass 0..*
    */
* extension[ageYears] ^short = "Age in years"
* extension[ageYears] ^definition = "Age in years"


* extension[ageMonths] ^short = "Age in months"
* extension[ageMonths] ^definition = "Age in months"


* extension[ageDays] ^short = "Age in days"
* extension[ageDays] ^definition = "Age in days"


* extension[patientClassification] ^short = "Patient Classification"
* extension[patientClassification] ^definition = "Patient Classification"


* extension[interviewer] ^short = "Name of interviewer"
* extension[interviewer] ^definition = "Name of Interviewer at first point of contact"


* extension[investigatorName] ^short = "Name of Investigator / Assessor"
* extension[investigatorName] ^definition = "Name of Investigator / Assessor"


* extension[dateInterview] ^short = "Date of interview"
* extension[dateInterview] ^definition = "Date of interview"


* extension[dateInvestigation] ^short = "Date of investigation"
* extension[dateInvestigation] ^definition = "Date of investigation"

* extension[reporterName] ^short = "Name of reporter"
* extension[reporterName] ^definition = "Name of reporter"

/* dangling reference - disabled (2)
* extension[illnessClass] from $EncounterIllnessClassValueSet (extensible)
* extension[illnessClass] ^definition = "Class of illness"

* extension[illnessClass] ^binding.description = "valueset for case rates"
*/
* modifierExtension ..0
* identifier ^slicing.description = "These are the different encounter IDs"
* identifier ^slicing.rules = #open
* identifier contains
    philHealthID 0..1 and
    covidDataID 0..1 and
    covidPatientID 0..1
* identifier[philHealthID] ^short = "Philhealth code"
* identifier[philHealthID] ^definition = "A unique number or code assigned by the Philippine Health Insurance Corporation."
* identifier[covidDataID] ^short = "COVID Data ID"
* identifier[covidDataID] ^definition = "COVID Data Identification"
* identifier[covidPatientID] ^short = "COVID Patient ID"
* identifier[covidPatientID] ^definition = "COVID Patient Identification"
* statusHistory ..0
* classHistory ..0
* type ..1
* type from EncounterTypeValueSet (example)
* serviceType from EncounterServiceTypeValueSet (example)
* priority ..0
* episodeOfCare ..0
* basedOn ..0
* participant ..0
* hospitalization.dischargeDisposition from EncounterHospitalizationDischargeDispositionValueSet (extensible)
* location.physicalType from EncounterLocationPhysicalTypeValueSet (extensible)
* serviceProvider ..0
* partOf ..0
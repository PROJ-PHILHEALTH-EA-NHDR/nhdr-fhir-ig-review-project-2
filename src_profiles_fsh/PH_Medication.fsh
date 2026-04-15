Profile: PH_Medication
Parent: Medication
Id: PH-Medication
* ^url = "https://philhealth.gov.ph/fhir/StructureDefinition/PH_Medication"
* ^status = #draft
* extension 1..
* extension contains
    DosageInstruction named dosageInstruction 0..* and
    Packaging named packaging 1..* and
    DateUpdated named dateUpdated 0..*
* extension[dosageInstruction] ^short = "instruction on the medication dosage"
* extension[dosageInstruction] ^definition = "instruction on the medication dosage"
* extension[packaging] ^short = "Detailed description on the medication packaging"
* extension[packaging] ^definition = "Detailed description on the medication packaging"
/*
* extension[packaging].value[x].extension[packcode] only $originalText
* extension[packaging].value[x].extension[packcode] ^sliceName = "packcode"
* extension[packaging].value[x].extension[packcode] ^short = "Package Code"

* extension[packaging].value[x].extension[packdesc] only $originalText
* extension[packaging].value[x].extension[packdesc] ^sliceName = "packdesc"
* extension[packaging].value[x].extension[packdesc] ^short = "Package Description"

*/
* extension[dateUpdated] ^short = "Date of last update"
* extension[dateUpdated] ^definition = "Date of last update"
* status ..0
* manufacturer ..0
* amount ..0
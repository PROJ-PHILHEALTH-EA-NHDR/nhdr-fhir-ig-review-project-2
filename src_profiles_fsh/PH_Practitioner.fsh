Profile: PH_Practitioner
Parent: Practitioner
Id: PH-Practitioner
* ^url = "https://philhealth.gov.ph/fhir/StructureDefinition/PH_Practitioner"
* ^status = #draft
* . ^definition = "A person who is directly involved in the provisioning of healthcare."
* extension contains
/*
    Signature named signature 0..* and
*/
    Sex named sex 0..*
/*
* extension[signature] ^short = "Practitioner Signature"
* extension[signature] ^definition = "Practitioner Signature"
*/
* extension[sex] ^short = "The sex assigned at birth, as documented on the birth registration"
* extension[sex] ^definition = "The sex assigned at birth, as documented on the birth registration"
* gender ..0
* birthDate ..0
* photo ..0
* qualification ..0
* communication ..0
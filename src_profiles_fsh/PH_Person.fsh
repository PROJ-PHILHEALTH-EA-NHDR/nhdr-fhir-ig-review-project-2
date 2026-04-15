Profile: PH_Person
Parent: Person
Id: PH-Person
* ^url = "https://philhealth.gov.ph/fhir/StructureDefinition/PH_Person"
* ^status = #draft
* extension contains Sex named sex 0..*
* extension[sex] ^short = "Sex assigned at birth"
* extension[sex] ^definition = "The sex assigned at birth, as documented on the birth registration"
* gender ..0
* photo ..0
* managingOrganization ..0
* active ..0
Profile: PH_Specimen
Parent: Specimen
Id: PH-Specimen
* ^url = "https://philhealth.gov.ph/fhir/StructureDefinition/PH_Specimen"
* ^status = #draft
* extension contains
    RecordedDate named recordedDate 0..* and
    ResultDate named resultDate 0..* and
    ExtOrganization named extOrganization 0..* and
    Species named species 0..*
* extension[recordedDate] ^short = "The recordedDate represents when this particular Specimen record was uploaded into the NHDR."
* extension[recordedDate] ^definition = "The recordedDate represents when this particular Specimen record was uploaded into the NHDR."
* extension[resultDate] ^short = "The resultDate represents the date on which the outcome of the particular specimen was recorded."
* extension[resultDate] ^definition = "The resultDate represents the date on which the outcome of the particular specimen was recorded.."
* extension[extOrganization] ^short = "Health facility where the specimen was collected"
* extension[extOrganization] ^definition = "Health facility where the specimen was collected"
* extension[species] ^short = "Describes the type of species / organism [e.g. Malaria (Plasmodium falciparum, Plasmodium malariae, Plasmodium vivax, Plasmodium ovale, Plasmodium knowlesi)]"
* extension[species] ^definition = "Describes the type of species / organism [e.g. Malaria (Plasmodium falciparum, Plasmodium malariae, Plasmodium vivax, Plasmodium ovale, Plasmodium knowlesi)]"
* type from SpecimenType (example)
* collection.extension contains ReleaseDate named releaseDate 0..*
* collection.extension[releaseDate] ^short = "Date the specimen was released"
* collection.extension[releaseDate] ^definition = "Date the specimen was released"
* collection.method from SpecimenCollectionMethod (example)
* collection.bodySite ..0
* collection.fastingStatus[x] ..0
* processing.procedure from SpecimenProcessingProcedure (example)
* condition from SpecimenCondition (extensible)
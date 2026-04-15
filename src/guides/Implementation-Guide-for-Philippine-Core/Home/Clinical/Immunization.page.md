---
canonical: https://example.org/fhir/StructureDefinition/PH_Immunization
expand: 2
---

# {{page-title}}

Describes the event of a patient being administered a vaccine or a record of an immunization as reported by a patient, a clinician or another party.

## Scope and Usage

The Immunization resource is intended to cover the recording of current and historical administration of vaccines to patients across all healthcare disciplines in all care settings and all regions. This includes immunization of both humans and animals but does not include the administration of non-vaccine agents, even those that may have or claim to have immunological effects. While the terms "immunization" and "vaccination" are not clinically identical, for the purposes of the FHIR resources, the terms are used synonymously.

Additionally, the Immunization resource is expected to cover key concepts related to the creation, revision and querying of a patient's immunization history. This resource - through consultation with the Public Health work group - is believed to meet key use cases and information requirements as defined in the existing HL7 V2 icon immunization implementation guide, HL7 v3 icon POIZ domain and Immunization Domain Analysis Model.

## Resource content

These are different views on this resource:

<tabs>
<tab title="Overview">
	This is the tree view:
	{{tree, buttons}}
</tab>
<tab title="Detailed view">
	This is the detailed view:
	{{dict}}
</tab>
<tab title="XML">
	This is the resource in XML:
	{{xml}}
</tab>
<tab title="JSON">	
	This is the resource in JSON:
	{{json}}
</tab>
<tab title="Link">
	{{link}}
</tab>
</tabs>

## Extensions

## Default Search Parameters for Immunization Resource

| **Search Parameter**      | **Type**       | **Description**                                                                 |
|---------------------------|----------------|---------------------------------------------------------------------------------|
| **_id**                   | Token          | Logical ID of the resource.                                                    |
| **_lastUpdated**           | Date/DateTime  | When the resource was last updated.                                            |
| **category**              | Token          | Vaccine category (e.g., prophylactic, therapeutic).                            |
| **date**                  | Date/DateTime  | Vaccination administration date.                                               |
| **identifier**            | Token          | Business identifier for the immunization.                                      |
| **location**              | Reference      | The service delivery location where the vaccine was administered.              |
| **lot-number**            | String         | Vaccine lot number.                                                            |
| **manufacturer**          | Reference      | Vaccine manufacturer.                                                          |
| **patient**               | Reference      | The patient who was immunized.                                                 |
| **performer**             | Reference      | The practitioner or organization administering the vaccine.                    |
| **reaction**              | Reference      | Details of a reaction following the immunization.                              |
| **reaction-date**         | Date/DateTime  | Date of a reaction to the immunization.                                        |
| **reason-code**           | Token          | Reason why the vaccine was administered.                                       |
| **reason-reference**      | Reference      | Condition, observation, or other resource indicating the administration reason.|
| **series**                | String         | Name of the vaccine series.                                                    |
| **status**                | Token          | The status of the immunization (e.g., completed, entered-in-error).            |
| **status-reason**         | Token          | The reason for the immunization status.                                        |
| **target-disease**        | Token          | The disease that the vaccination is for.                                       |
| **vaccine-code**          | Token          | Vaccine product administered (e.g., code for the specific vaccine).            |

---

## Notes
- These parameters are case-sensitive as per FHIR's rules.
- Additional custom search parameters may be defined depending on the implementation.
- Some parameters allow modifiers (e.g., `:exact`, `:contains`) for more advanced queries.
- Replace `[base]` with your FHIR server's base URL when constructing API calls.

---
canonical: https://example.org/fhir/StructureDefinition/PH_Condition
expand: 2
---

# {{page-title}}

A clinical condition, problem, diagnosis, or other event, situation, issue, or clinical concept that has risen to a level of concern

## Scope and Usage
This resource is used to record detailed information about a condition, problem, diagnosis, or other event, situation, issue, or clinical concept that has risen to a level of concern. The condition could be a point in time diagnosis in context of an encounter, it could be an item on the practitioner’s Problem List, or it could be a concern that doesn’t exist on the practitioner’s Problem List. Oftentimes, a condition is about a clinician's assessment and assertion of a particular aspect of a patient's state of health. It can be used to record information about a disease/illness identified from application of clinical reasoning over the pathologic and pathophysiologic findings (diagnosis), or identification of health issues/situations that a practitioner considers harmful, potentially harmful and may be investigated and managed (problem), or other health issue/situation that may require ongoing monitoring and/or management (health issue/concern).

The condition resource may be used to record a certain health state of a patient which does not normally present a negative outcome, e.g. pregnancy. The condition resource may be used to record a condition following a procedure, such as the condition of Amputee-BKA following an amputation procedure.

While conditions are frequently a result of a clinician's assessment and assertion of a particular aspect of a patient's state of health, conditions can also be expressed by the patient, related person, or any care team member. A clinician may have a concern about a patient condition (e.g. anorexia) that the patient is not concerned about. Likewise, the patient may have a condition (e.g. hair loss) that does not rise to the level of importance such that it belongs on a practitioner’s Problem List.

For example, each of the following conditions could rise to the level of importance such that it belongs on a problem or concern list due to its direct or indirect impact on the patient’s health:

- Unemployed
- Without transportation (or other barriers)
- Susceptibility to falls
- Exposure to communicable disease
- Family History of cardiovascular disease
- Fear of cancer
- Cardiac pacemaker
- Amputee-BKA
- Risk of Zika virus following travel to a country
- Former smoker
- Travel to a country planned (that warrants immunizations)
- Motor Vehicle Accident
- Patient has had coronary bypass graft

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


## Extension

## Default Search Parameters for Condition Resource

| **Search Parameter**      | **Type**       | **Description**                                                                 |
|---------------------------|----------------|---------------------------------------------------------------------------------|
| **_id**                   | Token          | Logical ID of the resource.                                                    |
| **_lastUpdated**           | Date/DateTime  | When the resource was last updated.                                            |
| **abatement**             | Date/DateTime  | When the condition abated (went into remission).                               |
| **asserter**              | Reference      | Person or entity that asserted the condition.                                  |
| **body-site**             | Token          | Anatomical location of the condition.                                          |
| **category**              | Token          | The category of the condition (e.g., problem-list-item, encounter-diagnosis).  |
| **clinical-status**       | Token          | The clinical status of the condition (e.g., active, inactive, resolved).       |
| **code**                  | Token          | Code for the condition (e.g., SNOMED CT or ICD-10 code).                       |
| **encounter**             | Reference      | Encounter during which the condition was asserted.                             |
| **evidence**              | Token          | Manifestation/symptom supporting the condition.                                |
| **identifier**            | Token          | An identifier for the condition (e.g., record or case number).                 |
| **onset**                 | Date/DateTime  | The date or age when the condition started.                                    |
| **patient**               | Reference      | Who has the condition (subject if not patient-specific).                       |
| **recorded-date**         | Date/DateTime  | Date the condition record was created.                                         |
| **severity**              | Token          | The severity of the condition (e.g., mild, moderate, severe).                  |
| **stage**                 | Token          | Clinical stage or grade of the condition.                                      |
| **subject**               | Reference      | The individual or group who the condition record is about.                     |
| **verification-status**   | Token          | The verification status of the condition (e.g., confirmed, unconfirmed).       |

---

## Notes
- These parameters are case-sensitive as per FHIR's rules.
- Additional custom search parameters may be defined depending on the implementation.
- Some parameters allow modifiers (e.g., `:exact`, `:contains`) for more advanced queries.
- Replace `[base]` with your FHIR server's base URL when constructing API calls.

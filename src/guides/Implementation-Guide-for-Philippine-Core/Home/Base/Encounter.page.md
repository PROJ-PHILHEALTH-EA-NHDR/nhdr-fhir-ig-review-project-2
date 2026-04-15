---
canonical: https://example.org/fhir/StructureDefinition/PH_Encounter
expand: 2
---

# {{page-title}}

An interaction between a patient and healthcare provider(s) for the purpose of providing healthcare service(s) or assessing the health status of a patient. Encounter is primarily used to record information about the actual activities that occurred, where Appointment is used to record planned activities.

## Scope and Usage

A patient encounter is further characterized by the setting in which it takes place. Amongst them are ambulatory, emergency, home health, inpatient and virtual encounters. An Encounter encompasses the lifecycle from pre-admission, the actual encounter (for ambulatory encounters), and admission, stay and discharge (for inpatient encounters). During the encounter the patient may move from practitioner to practitioner and location to location.

Because of the broad scope of Encounter, not all elements will be relevant in all settings. For this reason, admission/discharge related information is kept in a separate admission component within Encounter. The class element is used to distinguish between these settings, which will guide further validation and application of business rules.

There is also substantial variance from organization to organization (and between jurisdictions and countries) on which business events translate to the start of a new Encounter, or what level of aggregation is used for Encounter. For example, each single visit of a practitioner during a hospitalization may lead to a new instance of Encounter, but depending on local practice and the systems involved, it may well be that this is aggregated to a single instance for a whole admission. Even more aggregation may occur where jurisdictions introduce groups of Encounters for financial or other reasons. Encounters can be aggregated or grouped under other Encounters using the partOf element. See below for examples.

Encounter instances may exist before the actual encounter takes place to convey pre-admission information, including using Encounters elements to reflect the planned start date or planned encounter locations. In this case the status element is set to 'planned'.

The admission component is intended to store the extended information relating to an admission event. It is always expected to be the same period as the encounter itself. Where the period is different, another encounter instance should be used to capture this information as a partOf this encounter instance.

The Procedure and encounter have references to each other, and these should be to different procedures; one for the procedure that was performed during the encounter (stored in Procedure.encounter), and another for cases where an encounter is a result of another procedure (stored in Encounter.reason) such as a follow-up encounter to resolve


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

## Default Search Parameters for Encounter Resource

| **Search Parameter**      | **Type**       | **Description**                                                                 |
|---------------------------|----------------|---------------------------------------------------------------------------------|
| **_id**                   | Token          | Logical ID of the resource.                                                    |
| **_lastUpdated**           | Date/DateTime  | When the resource was last updated.                                            |
| **appointment**           | Reference      | The appointment that scheduled this encounter.                                 |
| **class**                 | Token          | Classification of patient encounter (e.g., inpatient, outpatient).             |
| **date**                  | Date/DateTime  | A date within the period the encounter takes place.                            |
| **diagnosis**             | Reference      | Reason for the encounter (coded as a diagnosis).                               |
| **episodeofcare**         | Reference      | Episode(s) of care this encounter is part of.                                  |
| **identifier**            | Token          | An identifier for the encounter.                                               |
| **length**                | Quantity       | Length of the encounter in minutes.                                            |
| **location**              | Reference      | Location where the encounter takes place.                                      |
| **location-status**       | Token          | Status of the encounter at a specific location.                                |
| **part-of**               | Reference      | Another encounter this encounter is part of.                                   |
| **participant**           | Reference      | Persons involved in the encounter.                                             |
| **participant-type**      | Token          | Role of participant in the encounter.                                          |
| **patient**               | Reference      | The patient present at the encounter.                                          |
| **practitioner**          | Reference      | Practitioners involved in the encounter.                                       |
| **reason-code**           | Token          | Reason the encounter takes place (coded).                                      |
| **reason-reference**      | Reference      | Reason the encounter takes place (reference).                                  |
| **service-provider**      | Reference      | The organization responsible for this encounter.                               |
| **special-arrangement**   | Token          | Special arrangements for the encounter (e.g., wheelchair, interpreter).        |
| **status**                | Token          | Status of the encounter (e.g., planned, in-progress, completed).               |
| **subject**               | Reference      | The subject (patient or group) of the encounter.                               |
| **type**                  | Token          | Specific type of encounter (e.g., scheduled procedure, emergency).             |

---

## Notes
- These parameters are case-sensitive as per FHIR's rules.
- Additional custom search parameters may be defined depending on the implementation.
- Some parameters allow modifiers (e.g., `:exact`, `:contains`) for more advanced queries.
- Replace `[base]` with your FHIR server's base URL when constructing API calls.

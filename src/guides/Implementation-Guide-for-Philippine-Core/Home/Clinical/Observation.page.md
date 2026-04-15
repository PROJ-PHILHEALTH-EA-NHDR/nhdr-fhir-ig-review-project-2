---
canonical: https://example.org/fhir/StructureDefinition/PH_Observation
expand: 2
---

Measurements and simple assertions made about a patient, device or other subject.

## Scope and Usage

This resource is an event resource from a FHIR workflow perspective - see Workflow.

Observations are a central element in healthcare, used to support diagnosis, monitor progress, determine baselines and patterns and even capture demographic characteristics, as well as capture results of tests performed on products and substances. Most observations are simple name/value pair assertions with some metadata, but some observations group other observations together logically, or even are multi-component observations. Note that the DiagnosticReport resource provides a clinical or workflow context for a set of observations and the Observation resource is referenced by DiagnosticReport to represent laboratory, imaging, and other clinical and diagnostic data to form a complete report.

Uses for the Observation resource include:

- Vital signs such as body weight, blood pressure, and temperature
- Laboratory Data like blood glucose, or an estimated GFR
- Imaging results like bone density or fetal measurements
- Clinical Findings* such as abdominal tenderness
- Device measurements such as EKG data or Pulse Oximetry data
- Device Settings such as mechanical ventilator parameters.
- Clinical assessment tools such as APGAR or a Glasgow Coma Score
- Personal characteristics: such as eye-color
- Social history like tobacco use, family support, or cognitive status
- Core characteristics like pregnancy status, or a death assertion
- Product quality tests such as pH, Assay, Microbial limits, etc. on product and substance

*The boundaries between clinical findings and disorders remains a challenge in medical ontology. Refer the Boundaries section below and in Condition for general guidance. These boundaries can be clarified by profiling Observation for a particular use case.



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

## Default Search Parameters for Observation Resource

| **Search Parameter**      | **Type**       | **Description**                                                                 |
|---------------------------|----------------|---------------------------------------------------------------------------------|
| **_id**                   | Token          | Logical ID of the resource.                                                    |
| **_lastUpdated**           | Date/DateTime  | When the resource was last updated.                                            |
| **based-on**              | Reference      | A plan, proposal, or order that this observation fulfills.                     |
| **category**              | Token          | The classification of the observation type (e.g., laboratory, vital-signs).    |
| **code**                  | Token          | The code of the observation type (e.g., LOINC or SNOMED CT code).              |
| **component-code**        | Token          | Code of a component observation.                                               |
| **component-value-concept** | Token       | The value of a component observation, if coded.                                |
| **component-value-quantity** | Quantity    | The value of a component observation, if a quantity.                           |
| **date**                  | Date/DateTime  | Date the observation was recorded or last updated.                             |
| **derived-from**          | Reference      | Related resource that the observation is derived from.                         |
| **device**                | Reference      | Device that generated the observation data.                                    |
| **encounter**             | Reference      | The encounter during which the observation was made.                           |
| **focus**                 | Reference      | A resource related to the observation (e.g., a target).                        |
| **has-member**            | Reference      | Related observations grouped in a single report.                               |
| **identifier**            | Token          | The identifier for the observation.                                            |
| **method**                | Token          | The method used to perform the observation.                                    |
| **part-of**               | Reference      | The larger event or activity this observation is part of.                      |
| **patient**               | Reference      | The patient who is the subject of the observation.                             |
| **performer**             | Reference      | Who performed the observation.                                                 |
| **specimen**              | Reference      | The specimen involved in the observation.                                      |
| **status**                | Token          | The status of the observation (e.g., final, amended).                          |
| **subject**               | Reference      | The subject of the observation (e.g., patient, group, or device).              |
| **value-concept**         | Token          | The value of the observation, if coded.                                        |
| **value-date**            | Date/DateTime  | The value of the observation, if a date/time.                                  |
| **value-quantity**        | Quantity       | The value of the observation, if a quantity.                                   |
| **value-string**          | String         | The value of the observation, if a string.                                     |

---

## Notes
- These parameters are case-sensitive as per FHIR's rules.
- Additional custom search parameters may be defined depending on the implementation.
- Some parameters allow modifiers (e.g., `:exact`, `:contains`) for more advanced queries.
- Replace `[base]` with your FHIR server's base URL when constructing API calls.

---
canonical: https://example.org/fhir/StructureDefinition/PH_AllergyIntolerance
expand: 2
---

# {{page-title}}
isk of harmful or undesirable physiological response which is specific to an individual and associated with exposure to a substance.

## Scope and Usage

A record of a clinical assessment of an allergy or intolerance; a propensity, or a potential risk to an individual, to have an adverse reaction on future exposure to the specified substance, or class of substance.

Where a propensity is identified, to record information or evidence about a reaction event that is characterized by any harmful or undesirable physiological response that is specific to the individual and triggered by exposure of an individual to the identified substance or class of substance.

Substances include, but are not limited to: a therapeutic substance administered correctly at an appropriate dosage for the individual; food; material derived from plants or animals; or venom from insect stings.



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

## Default Search Parameters for AllergyIntolerance Resource

| **Search Parameter**      | **Type**       | **Description**                                                                 |
|---------------------------|----------------|---------------------------------------------------------------------------------|
| **_id**                   | Token          | Logical ID of the resource.                                                    |
| **_lastUpdated**           | Date/DateTime  | When the resource was last updated.                                            |
| **asserter**              | Reference      | Source of the information about the allergy.                                   |
| **category**              | Token          | Category of the allergy or intolerance (e.g., food, medication, environment).  |
| **clinical-status**       | Token          | The clinical status of the allergy (e.g., active, inactive).                   |
| **code**                  | Token          | Code representing the allergy or intolerance (e.g., SNOMED CT).                |
| **criticality**           | Token          | The criticality of the reaction (e.g., high, low).                             |
| **encounter**             | Reference      | The encounter when the allergy or intolerance was asserted.                    |
| **identifier**            | Token          | Unique identifier for the allergy or intolerance.                              |
| **last-date**             | Date/DateTime  | Date of the last known occurrence or reaction.                                 |
| **manifestation**         | Token          | Clinical symptoms or signs of the reaction.                                    |
| **onset**                 | Date/DateTime  | When the allergy or intolerance was identified.                                |
| **patient**               | Reference      | The patient who has the allergy or intolerance.                                |
| **reaction**              | Reference      | Details about a specific reaction event.                                       |
| **recorder**              | Reference      | Who recorded the sensitivity.                                                  |
| **severity**              | Token          | The severity of the reaction (e.g., mild, moderate, severe).                   |
| **type**                  | Token          | The type of the allergy or intolerance (e.g., allergy, intolerance).           |
| **verification-status**   | Token          | The verification status of the allergy (e.g., confirmed, refuted).             |

---

## Notes
- These parameters are case-sensitive as per FHIR's rules.
- Additional custom search parameters may be defined depending on the implementation.
- Some parameters allow modifiers (e.g., `:exact`, `:contains`) for more advanced queries.
- Replace `[base]` with your FHIR server's base URL when constructing API calls.



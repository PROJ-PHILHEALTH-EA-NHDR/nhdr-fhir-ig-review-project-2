---
canonical: https://example.org/fhir/StructureDefinition/PH_FamilyMemberHistory
expand: 2
---

# {{page-title}}
Significant health conditions for a person related to the patient relevant in the context of care for the patient
## Scope and Usage

FamilyMemberHistory is one of the event resources in the FHIR workflow specification.

This resource records significant health conditions for a particular individual related to the subject. This information can be known to different levels of accuracy. Sometimes the exact condition ('asthma') is known, and sometimes it is less precise ('some sort of cancer'). Equally, sometimes the person can be identified ('my aunt Agatha') and sometimes all that is known is that the person was an uncle.

This resource represents a simple structure used to capture an 'elementary' family history for a particular family member. However, it can also be the basis for capturing a more rigorous history useful for genetic and other analysis - refer to the Genetic Pedigree profile for an example.


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

## Default Search Parameters for FamilyMemberHistory Resource

| **Search Parameter**      | **Type**       | **Description**                                                                 |
|---------------------------|----------------|---------------------------------------------------------------------------------|
| **_id**                   | Token          | Logical ID of the resource.                                                    |
| **_lastUpdated**           | Date/DateTime  | When the resource was last updated.                                            |
| **code**                  | Token          | A code that identifies the condition or diagnosis.                             |
| **date**                  | Date/DateTime  | When the history was recorded or last updated.                                 |
| **identifier**            | Token          | A unique identifier for the family member history record.                      |
| **patient**               | Reference      | The patient whose family history is described.                                 |
| **relationship**          | Token          | A relationship code for the family member (e.g., parent, sibling).             |
| **status**                | Token          | The status of the family member history (e.g., completed, entered-in-error).   |

---

## Notes
- These parameters are case-sensitive as per FHIR's rules.
- Additional custom search parameters may be defined depending on the implementation.
- Some parameters allow modifiers (e.g., `:exact`, `:contains`) for more advanced queries.
- Replace `[base]` with your FHIR server's base URL when constructing API calls.

---
canonical: https://example.org/fhir/StructureDefinition/PH_CarePlan
expand: 2
---

# {{page-title}}

Describes the intention of how one or more practitioners intend to deliver care for a particular patient, group or community for a period of time, possibly limited to care for a specific condition or set of conditions.


## Scope and Usage

CarePlan is one of the request resources in the FHIR workflow specification.

Care Plans are used in many areas of healthcare with a variety of scopes. They can be as simple as a general practitioner keeping track of when their patient is next due for a tetanus immunization through to a detailed plan for an oncology patient covering diet, chemotherapy, radiation, lab work and counseling with detailed timing relationships, pre-conditions and goals. They may be used in veterinary care or clinical research to describe the care of a herd or other collection of animals. In public health, they may describe education or immunization campaigns.

This resource takes an intermediate approach to complexity. It captures basic details about who is involved and what actions are intended without dealing in discrete data about dependencies and timing relationships. These can be supported where necessary using the extension mechanism.

The scope of care plans may vary widely. Examples include:

- Multi-disciplinary cross-organizational care plans; e.g. An oncology plan including the oncologist, home nursing staff, pharmacy and others
- Plans to manage specific disease/condition(s) (e.g. nutritional plan for a patient post bowel resection, neurological plan post head injury, prenatal plan, postpartum plan, grief management plan, etc.)
- Decision support generated plans following specific practice guidelines (e.g. stroke care plan, diabetes plan, falls prevention, etc.)
- Self-maintained patient or care-giver authored plans identifying their goals and an integrated understanding of actions to be taken. This does not include the legal Advance Directives, which should be represented with either the Consent resource with Consent.category = Advance Directive or with a specific request resource with intent = directive. Informal advance directives could be represented as a Goal, such as "I want to die at home."
This resource can be used to represent both proposed plans (for example, recommendations from a decision support engine or returned as part of a consult report) as well as active plans. The nature of the plan is communicated by the status. Some systems may need to filter CarePlans to ensure that only appropriate plans are exposed via a given user interface.


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

## Default Search Parameters for CarePlan Resource

| **Search Parameter**      | **Type**       | **Description**                                                                 |
|---------------------------|----------------|---------------------------------------------------------------------------------|
| **_id**                   | Token          | Logical ID of the resource.                                                    |
| **_lastUpdated**           | Date/DateTime  | When the resource was last updated.                                            |
| **activity-code**         | Token          | Detail type of activity (e.g., SNOMED CT or other codes).                      |
| **activity-date**         | Date/DateTime  | Date of the activity within the plan.                                          |
| **activity-reference**    | Reference      | Activity details defined in a specific resource.                               |
| **based-on**              | Reference      | Fulfills plan, proposal, or order.                                             |
| **care-team**             | Reference      | Members of the care team involved in the care plan.                            |
| **category**              | Token          | Type of care plan (e.g., routine, discharge).                                  |
| **condition**             | Reference      | Condition addressed by the care plan.                                          |
| **date**                  | Date/DateTime  | Time period covered by the care plan.                                          |
| **encounter**             | Reference      | Encounter created as part of the care plan.                                    |
| **identifier**            | Token          | External identifier for the care plan.                                         |
| **instantiates-canonical**| Reference      | Instantiates FHIR protocol or definition.                                      |
| **instantiates-uri**      | URI            | Instantiates external protocol or definition.                                  |
| **intent**                | Token          | The intent of the care plan (e.g., plan, proposal).                            |
| **participant**           | Reference      | Who is involved in the plan.                                                   |
| **patient**               | Reference      | The patient for whom the care plan is intended.                                |
| **performer**             | Reference      | Who is responsible for activities in the care plan.                            |
| **replaces**              | Reference      | Care plan replaced by this care plan.                                          |
| **status**                | Token          | Current status of the care plan (e.g., active, completed).                     |
| **subject**               | Reference      | Who the care plan is for (patient, group, or other subject).                   |

---

## Notes
- These parameters are case-sensitive as per FHIR's rules.
- Additional custom search parameters may be defined depending on the implementation.
- Some parameters allow modifiers (e.g., `:exact`, `:contains`) for more advanced queries.
- Replace `[base]` with your FHIR server's base URL when constructing API calls.

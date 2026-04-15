---
canonical: https://example.org/fhir/StructureDefinition/PH_MedicationDispense
expand: 2
---

# {{page-title}}

Indicates that a medication product is to be or has been dispensed for a named person/patient. This includes a description of the medication product (supply) provided and the instructions for administering the medication. The medication dispense is the result of a pharmacy system responding to a medication order.


## Scope and Usage

This resource covers the supply of medications to a patient. Examples include dispensing and pick-up from an outpatient or community pharmacy, dispensing patient-specific medications from inpatient pharmacy to ward, as well as issuing a single dose from ward stock to a patient for consumption. The medication dispense can be the result of a pharmacy system responding to a medication order.



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

## Default Search Parameters for MedicationDispense Resource

| **Search Parameter**      | **Type**       | **Description**                                                                 |
|---------------------------|----------------|---------------------------------------------------------------------------------|
| **_id**                   | Token          | Logical ID of the resource.                                                    |
| **_lastUpdated**           | Date/DateTime  | When the resource was last updated.                                            |
| **category**              | Token          | Returns dispenses of a specific category (e.g., inpatient, outpatient).        |
| **code**                  | Token          | Returns dispenses of a specific medication code (e.g., SNOMED CT, RxNorm).     |
| **context**               | Reference      | Encounter or episode associated with the dispense.                             |
| **destination**           | Reference      | Return dispenses sent to a specific location.                                  |
| **identifier**            | Token          | Identifier for the dispense event.                                             |
| **medication**            | Reference/Token | Returns dispenses of a specific medication (reference or code).               |
| **patient**               | Reference      | The patient for whom the medication was dispensed.                             |
| **performer**             | Reference      | Individual who performed the dispensing.                                       |
| **receiver**              | Reference      | Who collected the medication.                                                  |
| **status**                | Token          | The status of the dispense (e.g., completed, entered-in-error).                |
| **subject**               | Reference      | The individual or group for whom the medication was dispensed.                 |
| **type**                  | Token          | Returns dispenses of a specific type (e.g., trial, repeat).                    |
| **whenhandedover**        | Date/DateTime  | Date and time when the medication was handed over to the patient or caregiver. |
| **whenprepared**          | Date/DateTime  | Date and time when the medication was prepared.                                |

---

## Notes
- These parameters are case-sensitive as per FHIR's rules.
- Additional custom search parameters may be defined depending on the implementation.
- Some parameters allow modifiers (e.g., `:exact`, `:contains`) for more advanced queries.
- Replace `[base]` with your FHIR server's base URL when constructing API calls.

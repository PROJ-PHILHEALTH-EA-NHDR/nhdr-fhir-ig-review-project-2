---
canonical: https://example.org/fhir/StructureDefinition/PH_MedicationStatement
expand: 2
---

# {{page-title}}

A record of a medication that is being consumed by a patient. A MedicationStatement may indicate that the patient may be taking the medication now or has taken the medication in the past or will be taking the medication in the future. The source of this information can be the patient, significant other (such as a family member or spouse), or a clinician. A common scenario where this information is captured is during the history taking process during a patient visit or stay. The medication information may come from sources such as the patient's memory, from a prescription bottle, or from a list of medications the patient, clinician or other party maintains.

The primary difference between a medicationstatement and a medicationadministration is that the medication administration has complete administration information and is based on actual administration information from the person who administered the medication. A medicationstatement is often, if not always, less specific. There is no required date/time when the medication was administered, in fact we only know that a source has reported the patient is taking this medication, where details such as time, quantity, or rate or even medication product may be incomplete or missing or less precise. As stated earlier, the Medication Statement information may come from the patient's memory, from a prescription bottle or from a list of medications the patient, clinician or other party maintains. Medication administration is more formal and is not missing detailed information.

## Scope and Usage

Common usage includes:

- the recording of non-prescription and/or recreational drugs
- the recording of an intake medication list upon admission to hospital
- the summarization of a patient's "active medications" in a patient profile

A MedicationStatement SHALL NOT be used to record substance abuse or the use of other agents such as tobacco or alcohol UNLESS those agents have been prescribed, e.g. nicotine patches or gum, long term care alcohol, etc. These should recorded as Social History Observations.

This resource does not produce a medication list, but it does produce individual medication statements that may be used in the List resource to construct various types of medication lists. Note that other medication lists can also be constructed from the other Pharmacy resources (e.g., MedicationRequest, MedicationAdministration).

A medication statement is not a part of the prescribe -> dispense -> administer sequence, but is a report by a patient, significant other or a clinician that one or more of the prescribe, dispense or administer actions has occurred, resulting is a belief that the patient is, has, or will be using a particular medication.

MedicationStatement includes an adherence element. Note that this adherence is specific to that instance of MedicationStatement. If MedicationStatement.adherence is being tracked over time, then instances of MedicationStatement would report adherence for the interval noted in effectivePeriod.

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

## Default Search Parameters for MedicationStatement Resource

| **Search Parameter**      | **Type**       | **Description**                                                                 |
|---------------------------|----------------|---------------------------------------------------------------------------------|
| **_id**                   | Token          | Logical ID of the resource.                                                    |
| **_lastUpdated**           | Date/DateTime  | When the resource was last updated.                                            |
| **category**              | Token          | Returns statements of a specific category (e.g., inpatient, outpatient).       |
| **context**               | Reference      | Encounter or episode of care associated with the medication statement.         |
| **effective**             | Date/DateTime  | Date when the medication statement is active or applicable.                    |
| **identifier**            | Token          | Returns statements with this external identifier.                              |
| **medication**            | Reference/Token | Return statements of a specific medication (reference or code).               |
| **part-of**               | Reference      | Returns statements that are part of another event.                             |
| **patient**               | Reference      | The patient associated with the medication statement.                          |
| **source**                | Reference      | Who or what provided the information about the medication statement.           |
| **status**                | Token          | The status of the medication statement (e.g., active, completed, entered-in-error). |
| **subject**               | Reference      | The individual or group the medication statement is about.                     |

---

## Notes
- These parameters are case-sensitive as per FHIR's rules.
- Additional custom search parameters may be defined depending on the implementation.
- Some parameters allow modifiers (e.g., `:exact`, `:contains`) for more advanced queries.
- Replace `[base]` with your FHIR server's base URL when constructing API calls.

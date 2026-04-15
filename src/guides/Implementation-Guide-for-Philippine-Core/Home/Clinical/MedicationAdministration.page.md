---
canonical: https://example.org/fhir/StructureDefinition/PH_MedicationAdministration
expand: 2
---

# {{page-title}}

Describes the event of a patient consuming or otherwise being administered a medication. This may be as simple as swallowing a tablet or it may be a long running infusion. Related resources tie this event to the authorizing prescription, and the specific encounter between patient and health care practitioner.

## Scope and Usage

This resource covers the administration of all medications. Please refer to the Immunization resource/Profile for the treatment of vaccines. It will principally be used within care settings (including inpatient) to record medication administrations, including self-administrations of oral medications, injections, intravenous infusions, etc. It can also be used in outpatient settings to record allergy shots and other non-immunization administrations. In some cases, it might be used for home-health reporting, such as recording self-administered or even device-administered insulin.

Note: devices coated with a medication (e.g. heparin) are not typically recorded as a medication administration. However, administration of a medication via an implanted medication pump (e.g., insulin) would be recorded as a MedicationAdministration.

This resource can also be used for recording waste by setting the status to 'not-done' and the statusReason to a code that refers to waste. The remaining fields would support the waste elements, i.e. performer of the waste, quantity of medication wasted, date/time of waste, etc. It is also possible, using the partOf reference to a MedicationDispense, to indicate that this waste occurred as part of a dispense event.

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

## Default Search Parameters for MedicationAdministration Resource

| **Search Parameter**      | **Type**       | **Description**                                                                 |
|---------------------------|----------------|---------------------------------------------------------------------------------|
| **_id**                   | Token          | Logical ID of the resource.                                                    |
| **_lastUpdated**           | Date/DateTime  | When the resource was last updated.                                            |
| **category**              | Token          | Returns administrations of a specific category of medication.                  |
| **context**               | Reference      | Encounter or episode of care associated with the medication administration.    |
| **device**                | Reference      | Return administrations with this device.                                       |
| **effective-time**        | Date/DateTime  | Date and time when the administration occurred.                                |
| **identifier**            | Token          | Returns administrations with this external identifier.                         |
| **medication**            | Reference/Token | Return administrations of a specific medication (reference or code).          |
| **patient**               | Reference      | The patient who received the medication.                                       |
| **performer**             | Reference      | The practitioner or device administering the medication.                       |
| **reason-given**          | Token          | Reasons for administering the medication.                                      |
| **reason-not-given**      | Token          | Reasons for not administering the medication.                                  |
| **request**               | Reference      | The request associated with the administration.                                |
| **status**                | Token          | The status of the medication administration (e.g., in-progress, completed).    |
| **subject**               | Reference      | The individual or group the medication was administered to.                    |

---

## Notes
- These parameters are case-sensitive as per FHIR's rules.
- Additional custom search parameters may be defined depending on the implementation.
- Some parameters allow modifiers (e.g., `:exact`, `:contains`) for more advanced queries.
- Replace `[base]` with your FHIR server's base URL when constructing API calls.

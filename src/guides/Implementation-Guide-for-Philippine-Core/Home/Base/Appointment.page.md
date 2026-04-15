---
canonical: https://example.org/fhir/StructureDefinition/PH_Appointment
expand: 2
---

# {{page-title}}

A booking of a healthcare event among patient(s), practitioner(s), related person(s) and/or device(s) for a specific date/time. This may result in one or more Encounter(s).





## Scope and Usage

Appointment resources are used to provide information about a planned meeting that may be in the future or past. The resource only describes a single meeting, a series of repeating visits would require multiple appointment resources to be created for each instance. Examples include a scheduled surgery, a follow-up for a clinical visit, a scheduled conference call between clinicians to discuss a case (where the patient is a subject, but not a participant), the reservation of a piece of diagnostic equipment for a particular use, etc. The visit scheduled by an appointment may be in person or remote (by phone, video conference, etc.) All that matters is that the time and usage of one or more individuals, locations and/or pieces of equipment is being fully or partially reserved for a designated period of time.

This definition takes the concepts of appointments in a clinical setting and also extends them to be relevant in the community healthcare space, and to ease exposure to other appointment / calendar standards widely used outside of healthcare.

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

## Default Search Parameters for Appointment Resource

| **Search Parameter**      | **Type**       | **Description**                                                                 |
|---------------------------|----------------|---------------------------------------------------------------------------------|
| **_id**                   | Token          | Logical ID of the resource.                                                    |
| **_lastUpdated**           | Date/DateTime  | When the resource was last updated.                                            |
| **actor**                 | Reference      | Any individual or resource associated with the appointment (e.g., patient, practitioner). |
| **appointment-type**      | Token          | The type of appointment (e.g., checkup, follow-up).                            |
| **based-on**              | Reference      | Plan, proposal, or request that this appointment is fulfilling.                |
| **date**                  | Date/DateTime  | Appointment date/time.                                                         |
| **identifier**            | Token          | An identifier for the appointment.                                             |
| **location**              | Reference      | Location where the appointment is to take place.                               |
| **part-status**           | Token          | The participation status of an actor (e.g., accepted, declined).               |
| **patient**               | Reference      | Patient involved in the appointment.                                           |
| **practitioner**          | Reference      | Practitioner involved in the appointment.                                      |
| **reason-code**           | Token          | Coded reason for the appointment.                                              |
| **reason-reference**      | Reference      | Reason for the appointment as a resource reference.                            |
| **service-category**      | Token          | Broad category of service for the appointment (e.g., primary care, specialty). |
| **service-type**          | Token          | Specific service type for the appointment (e.g., cardiology, orthopedics).     |
| **slot**                  | Reference      | Slot resource that defines the time for the appointment.                       |
| **specialty**             | Token          | Specialty of a practitioner or service associated with the appointment.        |
| **status**                | Token          | The status of the appointment (e.g., proposed, booked, cancelled).             |
| **subject**               | Reference      | The patient, group, or healthcare provider the appointment is about.           |
| **supporting-info**       | Reference      | Additional information supporting the appointment.                             |

---

## Notes
- These parameters are case-sensitive as per FHIR's rules.
- Additional custom search parameters may be defined depending on the implementation.
- Some parameters allow modifiers (e.g., `:exact`, `:contains`) for more advanced queries.
- Replace `[base]` with your FHIR server's base URL when constructing API calls.

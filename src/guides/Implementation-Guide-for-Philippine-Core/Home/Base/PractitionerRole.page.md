---
canonical: https://example.org/fhir/StructureDefinition/PH_PractitionerRole
expand: 2
---

# {{page-title}}

A specific set of Roles/Locations/specialties/services that a practitioner may perform at an organization for a period of time.

## Scope and Usage

The PractitionerRole describes the types of services that practitioners provide for an organization at specific location(s).

The PractitionerRole resource can be used in multiple contexts including:

- Provider Registries where it indicates what a practitioner can perform for an organization (may indicate multiple healthcareservices, locations, and roles)
- In a Clinical system where it indicates the role, healthcareservice and location details associated with a practitioner that are applicable to the healthcare event (e.g. Observation, Appointment, Condition, CarePlan)
- In a Clinical system as a point of reference rather than an event, such as a patient's preferred general practitioner (at a specific clinic)
The role, specialty, Location telecom and HealthcareService properties can be repeated if required in other instances of the PractitionerRole. Some systems record a collection of service values for a single location, others record the single service and the list of locations it is available. Both are acceptable options for representing this data.
Where availability, telecom, or other details are not the same across all healthcareservices, or locations a separate PractitionerRole instance should be created.

Many resource types have a choice of a reference to either a Practitioner resource or a PractitionerRole resource. The latter provides organizational context for the practitioners participation when it is required, otherwise a direct reference to the practitioner may be used.
Many implementations may choose to profile the PractitionerRole to a single location/role/healthcareservice for their specific usage.
As the property that references a PractitionerRole typically has a specific context, the code on the PractitionerRole having duplicate code values is not a big concern (and is used for discovery where required).
e.g. These references are all very context specific: Patient.GeneralPractitioner, CarePlan.reported, CarePlan.contributor, Appointment.participant (through the participant.role), Immunization.informationSource, Immunization.performer (through the performer.function property)

For use cases where an organization has activities where a practitioner is not defined/pre-allocated for a specific role (e.g. an un-named surgeon at XYZ Hospital), a PractitionerRole resource can be used with an empty Practitioner property, and the other relevant role properties populated - i.e. code, organization.

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

## Default Search Parameters for PractitionerRole Resource

| **Search Parameter**        | **Type**       | **Description**                                                                 |
|-----------------------------|----------------|---------------------------------------------------------------------------------|
| **_id**                     | Token          | Logical ID of the resource.                                                    |
| **_lastUpdated**             | Date/DateTime  | When the resource was last updated.                                            |
| **active**                  | Token          | Whether this practitioner role record is active.                               |
| **date**                    | Date/DateTime  | The period during which the practitioner role is active.                       |
| **email**                   | Token          | A value in an email contact.                                                   |
| **endpoint**                | Reference      | Technical endpoints providing services for this practitioner role.             |
| **identifier**              | Token          | An identifier for the practitioner role (e.g., registration or certification). |
| **location**                | Reference      | The location(s) at which the practitioner provides care.                       |
| **organization**            | Reference      | The organization the practitioner represents or is employed by.                |
| **phone**                   | Token          | A value in a phone contact.                                                    |
| **practitioner**            | Reference      | Practitioner associated with this role.                                        |
| **role**                    | Token          | Roles which this practitioner may perform.                                     |
| **service**                 | Reference      | Healthcare services provided with this role.                                   |
| **specialty**               | Token          | Specialties applicable to this role.                                           |
| **telecom**                 | Token          | The value in any contact detail for the practitioner role (phone, email, etc.).|

---

## Notes
- These parameters are case-sensitive as per FHIR's rules.
- Additional custom search parameters may be defined depending on the implementation.
- Some parameters allow modifiers (e.g., `:exact`, `:contains`) for more advanced queries.
- Replace `[base]` with your FHIR server's base URL when constructing API calls.

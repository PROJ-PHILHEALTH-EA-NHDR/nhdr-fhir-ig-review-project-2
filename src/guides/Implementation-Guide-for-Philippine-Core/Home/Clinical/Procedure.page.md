---
canonical: https://example.org/fhir/StructureDefinition/PH_Procedure
expand: 2
---

# {{page-title}}

An action that is or was performed on or for a patient, practitioner, device, organization, or location. For example, this can be a physical intervention on a patient like an operation, or less invasive like long term services, counseling, or hypnotherapy. This can be a quality or safety inspection for a location, organization, or device. This can be an accreditation procedure on a practitioner for licensing.

## Scope and Usage

 Procedure is one of the event resources in the FHIR workflow specification.

This resource is used to record the details of current and historical procedures performed on, with, or for a patient, practitioner, device, organization, or location. Examples include surgical procedures, diagnostic procedures, endoscopic procedures, biopsies, counseling, physiotherapy, personal support services, adult day care services, non-emergency transportation, home modification, exercise, verification of enrollment qualifications for a social program etc. Procedures may be performed by a healthcare professional, a service provider, a friend or relative or in some cases by the patient themselves.

Procedures can be performed on other non-patient subjects. For example, a procedure can represent an inspection to verify temperature or humidity for storage at a given location. Additionally, a procedure can represent the verification of the practitioner's qualifications for accreditation.

This resource provides summary information about the occurrence of the procedure and is not intended to provide real-time snapshots of a procedure as it unfolds, though for long-running procedures such as psychotherapy, it could represent summary level information about overall progress. The creation of a resource to support detailed real-time procedure information awaits the identification of a specific implementation use-case to share such information.



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

## Default Search Parameters for Procedure Resource

| **Search Parameter**      | **Type**       | **Description**                                                                 |
|---------------------------|----------------|---------------------------------------------------------------------------------|
| **_id**                   | Token          | Logical ID of the resource.                                                    |
| **_lastUpdated**           | Date/DateTime  | When the resource was last updated.                                            |
| **based-on**              | Reference      | A reference to the request that this procedure is based on.                    |
| **category**              | Token          | Classification of the procedure (e.g., surgical, diagnostic).                  |
| **code**                  | Token          | Code representing the procedure performed (e.g., SNOMED CT or CPT code).       |
| **date**                  | Date/DateTime  | Date the procedure was performed.                                              |
| **encounter**             | Reference      | The encounter associated with the procedure.                                   |
| **identifier**            | Token          | An identifier for the procedure (e.g., medical record number).                 |
| **instantiates-canonical**| Reference      | Instantiates FHIR protocol or definition.                                      |
| **instantiates-uri**      | URI            | Instantiates external protocol or definition.                                  |
| **location**              | Reference      | Location where the procedure occurred.                                         |
| **part-of**               | Reference      | Part of referenced procedure.                                                  |
| **patient**               | Reference      | The patient on whom the procedure was performed.                               |
| **performer**             | Reference      | The practitioner who performed the procedure.                                  |
| **reason-code**           | Token          | Coded reason why the procedure was performed.                                  |
| **reason-reference**      | Reference      | The condition, observation, or other reason the procedure was performed.       |
| **status**                | Token          | The status of the procedure (e.g., in-progress, completed).                    |
| **subject**               | Reference      | The subject (patient, group, or device) on whom the procedure was performed.   |

---

## Notes
- These parameters are case-sensitive as per FHIR's rules.
- Additional custom search parameters may be defined depending on the implementation.
- Some parameters allow modifiers (e.g., `:exact`, `:contains`) for more advanced queries.
- Replace `[base]` with your FHIR server's base URL when constructing API calls.

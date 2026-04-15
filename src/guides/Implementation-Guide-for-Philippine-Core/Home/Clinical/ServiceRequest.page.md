---
canonical: https://example.org/fhir/StructureDefinition/PH_ServiceRequest
expand: 2
---

# {{page-title}}

A record of a request for service such as diagnostic investigations, treatments, or operations to be performed.


## Scope and Usage

ServiceRequest represents an order or proposal or plan, as distinguished by ServiceRequest.intent to perform a diagnostic or other service on or for a patient. ServiceRequest represents a proposal or plan or order for a service to be performed that would result in a Procedure or DiagnosticReport, which in turn may reference one or more Observations, which summarize the performance of the procedures and associated documentation such as observations, images, findings that are relevant to the treatment/management of the subject. This resource may be used to share relevant information required to support a referral or a transfer of care request from one practitioner or organization to another when a patient is required to be referred to another provider for a consultation /second opinion and/or for short term or longer term management of one or more health issues or problems.

Examples include:

- diagnostic tests/studies
- endoscopic procedures
- counseling
- biopsies
- therapies (e.g., physio-, social-, psychological-)
(exploratory) surgeries or procedures
- exercises
- specialist consultation and assessments
- community services
- nursing services
- pharmacist medication review, and
-  other clinical interventions.
Procedures may be performed by a healthcare professional, a friend or relative or in some cases by the patient themselves.

The principal intention of ServiceRequest is to support ordering procedures for one patient (which includes non-human patients in veterinary medicine). However, in many contexts, healthcare related processes include performing diagnostic investigations on groups of subjects, devices involved in the provision of healthcare, and even environmental locations such as ducts, bodies of water, etc. ServiceRequest supports all these usages. The service request may represent an order that is entered by a practitioner in a CPOE system as well as a proposal made by a clinical decision support (CDS) system based on a patient's clinical record and context of care. Planned procedures referenced by a CarePlan may also be represented by this resource.

The general work flow that this resource facilitates is that a clinical system creates a service request. The service request is then accessed by or exchanged with a system, perhaps via intermediaries, that represents an organization (e.g., diagnostic or imaging service, surgical team, physical therapy department) that can perform the procedure. The organization receiving the service request will, after it accepts the request, update the request as the work is performed, and then finally issue a report that references the requests that it fulfilled.


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

## Default Search Parameters for ServiceRequest Resource

| **Search Parameter**      | **Type**       | **Description**                                                                 |
|---------------------------|----------------|---------------------------------------------------------------------------------|
| **_id**                   | Token          | Logical ID of the resource.                                                    |
| **_lastUpdated**           | Date/DateTime  | When the resource was last updated.                                            |
| **authored**              | Date/DateTime  | Date when the request was created.                                             |
| **based-on**              | Reference      | Plan or proposal fulfilled by this request.                                    |
| **body-site**             | Token          | Body site targeted by the request.                                             |
| **category**              | Token          | Classification of the service (e.g., diagnostic, therapeutic).                 |
| **code**                  | Token          | Code representing the requested service (e.g., SNOMED CT, LOINC).              |
| **encounter**             | Reference      | The encounter associated with the service request.                             |
| **identifier**            | Token          | Business identifier for the service request.                                   |
| **instantiates-canonical**| Reference      | Instantiates FHIR protocol or definition.                                      |
| **instantiates-uri**      | URI            | Instantiates external protocol or definition.                                  |
| **intent**                | Token          | The intent of the service request (e.g., order, plan).                         |
| **occurrence**            | Date/DateTime  | Date or period when the service is to occur.                                   |
| **patient**               | Reference      | The patient for whom the service is requested.                                 |
| **performer**             | Reference      | The individual or organization requested to perform the service.               |
| **priority**              | Token          | The priority of the service request (e.g., routine, urgent).                   |
| **reason-code**           | Token          | The reason or indication for the service request.                              |
| **reason-reference**      | Reference      | Condition, observation, or other resource indicating the request reason.       |
| **replaces**              | Reference      | Request(s) replaced by this request.                                           |
| **requester**             | Reference      | The individual or entity who initiated the request.                            |
| **status**                | Token          | The status of the request (e.g., active, completed).                           |
| **subject**               | Reference      | The individual or group for whom the service is requested.                     |
| **supporting-info**       | Reference      | Additional information supporting the request.                                 |

---

## Notes
- These parameters are case-sensitive as per FHIR's rules.
- Additional custom search parameters may be defined depending on the implementation.
- Some parameters allow modifiers (e.g., `:exact`, `:contains`) for more advanced queries.
- Replace `[base]` with your FHIR server's base URL when constructing API calls.

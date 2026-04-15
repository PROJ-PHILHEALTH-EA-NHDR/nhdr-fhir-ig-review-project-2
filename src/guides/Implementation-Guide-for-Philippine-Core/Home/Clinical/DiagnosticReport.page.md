---
canonical: https://example.org/fhir/StructureDefinition/PH_DiagnosticReport
expand: 2
---

# {{page-title}}

The findings and interpretation of diagnostic tests performed on patients, groups of patients, products, substances, devices, and locations, and/or specimens derived from these. The report includes clinical context such as requesting provider information, and some mix of atomic results, images, textual and coded interpretations, and formatted representation of diagnostic reports. The report also includes non-clinical context such as batch analysis and stability reporting of products and substances.


## Scope and Usage

A diagnostic report is the set of information that is typically provided by a diagnostic service when investigations are complete. The information includes a mix of atomic results, text reports, images, and codes. The mix varies depending on the nature of the diagnostic procedure, and sometimes on the nature of the outcomes for a particular investigation. In FHIR, the report can be conveyed in a variety of ways including a Document, RESTful API, or Messaging framework. Included within each of these, would be the DiagnosticReport resource itself.

The DiagnosticReport resource has information about the diagnostic report itself, and about the subject and, in the case of laboratory tests, the specimen of the report. It can also refer to the request details and atomic observations details or image instances. Report conclusions can be expressed as a simple text blob, structured coded data or as an attached fully formatted report such as a PDF.

The DiagnosticReport resource is suitable for the following kinds of diagnostic reports:

- Laboratory (Clinical Chemistry, Hematology, Microbiology, etc.)
- Pathology / Histopathology / related disciplines
- Imaging Investigations (x-ray, CT, MRI, etc.)
Other diagnostics such as Cardiology, Gastroenterology, etc.
- Product quality tests such as pH, Assay, Microbial limits, etc. on product and substance


The DiagnosticReport resource is not intended to support cumulative result presentation (tabular presentation of past and present results in the resource). The DiagnosticReport resource does not yet provide full support for detailed structured reports of sequencing; this is planned for a future release.


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

## Default Search Parameters for DiagnosticReport Resource

| **Search Parameter**      | **Type**       | **Description**                                                                 |
|---------------------------|----------------|---------------------------------------------------------------------------------|
| **_id**                   | Token          | Logical ID of the resource.                                                    |
| **_lastUpdated**           | Date/DateTime  | When the resource was last updated.                                            |
| **based-on**              | Reference      | A plan, proposal, or order fulfilled by this report.                           |
| **category**              | Token          | The category of the diagnostic report (e.g., laboratory, pathology).           |
| **code**                  | Token          | The code for the diagnostic report (e.g., LOINC code).                         |
| **conclusion**            | String         | Text search within the clinical conclusion of the report.                      |
| **conclusion-code**       | Token          | Coded representation of the clinical conclusion.                               |
| **date**                  | Date/DateTime  | The clinically relevant time of the report.                                    |
| **encounter**             | Reference      | The encounter during which the report was created.                             |
| **identifier**            | Token          | An identifier for the diagnostic report.                                       |
| **issued**                | Date/DateTime  | The date and time the report was issued.                                       |
| **media**                 | Reference      | The media associated with the diagnostic report.                               |
| **patient**               | Reference      | The patient the diagnostic report is about.                                    |
| **performer**             | Reference      | Who was responsible for producing the report.                                  |
| **result**                | Reference      | Link to an observation in the report.                                          |
| **specimen**              | Reference      | Specimens used in the diagnostic report.                                       |
| **status**                | Token          | The status of the diagnostic report (e.g., registered, partial, final).        |
| **subject**               | Reference      | The subject (patient, group, or device) of the diagnostic report.              |

---

## Notes
- These parameters are case-sensitive as per FHIR's rules.
- Additional custom search parameters may be defined depending on the implementation.
- Some parameters allow modifiers (e.g., `:exact`, `:contains`) for more advanced queries.
- Replace `[base]` with your FHIR server's base URL when constructing API calls.

---
canonical: https://example.org/fhir/StructureDefinition/PH_Specimen
expand: 2
---

# {{page-title}}

A sample to be used for analysis.

## Scope and Usage

Any material sample:

- taken from a biological entity, living or dead
- taken from a physical object or the environment

Some specimens are biological and can contain one or more components including but not limited to cellular molecules, cells, tissues, organs, body fluids, embryos, and body excretory products (source: NCI Thesaurus icon, modified).

The specimen resource covers substances used for diagnostic and environmental testing. The focus of the specimen resource is the process for gathering, maintaining and processing the specimen as well as where the specimen originated. This is distinct from the use of Substance which is only used when these other aspects are not relevant.


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

## Default Search Parameters for Specimen Resource

| **Search Parameter**      | **Type**       | **Description**                                                                 |
|---------------------------|----------------|---------------------------------------------------------------------------------|
| **_id**                   | Token          | Logical ID of the resource.                                                    |
| **_lastUpdated**           | Date/DateTime  | When the resource was last updated.                                            |
| **accession**             | Token          | The accession identifier for the specimen.                                     |
| **bodysite**              | Token          | The body site from where the specimen was collected (e.g., blood, tissue).     |
| **collected**             | Date/DateTime  | The date the specimen was collected.                                           |
| **collector**             | Reference      | Who collected the specimen.                                                    |
| **container**             | Token          | The kind of container the specimen is in.                                      |
| **identifier**            | Token          | The unique identifier for the specimen.                                        |
| **parent**                | Reference      | The parent specimen that this specimen is derived from.                        |
| **patient**               | Reference      | The patient from whom the specimen was collected.                              |
| **status**                | Token          | The status of the specimen (e.g., available, unavailable, unsatisfactory).     |
| **subject**               | Reference      | The subject of the specimen (patient, group, or device).                       |
| **type**                  | Token          | The type of the specimen (e.g., whole blood, serum).                           |

---

## Notes
- These parameters are case-sensitive as per FHIR's rules.
- Additional custom search parameters may be defined depending on the implementation.
- Some parameters allow modifiers (e.g., `:exact`, `:contains`) for more advanced queries.
- Replace `[base]` with your FHIR server's base URL when constructing API calls.

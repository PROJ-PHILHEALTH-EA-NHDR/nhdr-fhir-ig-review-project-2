---
canonical: https://example.org/fhir/StructureDefinition/PH_Medication
expand: 2
---

# {{page-title}}

This resource is primarily used for the identification and definition of a medication, including ingredients, for the purposes of prescribing, dispensing, and administering a medication as well as for making statements about medication use.

## Scope and Usage

Representing medications in most healthcare settings is a matter of identifying an item from a list and then conveying a reference for the item selected either into a patient-related resource or to other applications. Additional information about the medication is frequently provided for human verification (e.g., the product name), but a full representation of the details of composition and efficacy of the medicine is conveyed by referring to drug dictionaries by means of the codes they define. There are some occasions where it is necessary to identify slightly more detail, such as when dispensing a package containing a particular medication requires identification both of the medicine and the package at once. There are also some occasions (e.g. custom formulations) where the composition of a medicine must be represented. In these cases, the ingredients of the medicine must be specified together with the amount contained, though the Medication resource does not provide full details.

The Medication resource allows for medications to be characterized by the form of the drug and the ingredient (or ingredients), and how it is packaged. The medication will include the ingredient(s), and their strength(s) and the package can include the amount (for example, number of tablets, volume, etc.) that is contained in a particular container (for example, 100 capsules of Amoxicillin 500mg per bottle).

The Medication resource can be used to describe a compounded (aka extemporaneous or magistral) product that is manufactured by the pharmacy at the time of dispensing. In this case there will be multiple ingredients which are typically base chemicals (for example, hydrocortisone powder) and there may be other ingredients that are manufactured products (for example, Glaxal Base).

When a medication includes a package, further details about the composition can be provided. A package has a container (vacuum packed box, jar, etc.) and a list of the products or other packages that are in the package.


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

## Default Search Parameters for Medication Resource

| **Search Parameter**      | **Type**       | **Description**                                                                 |
|---------------------------|----------------|---------------------------------------------------------------------------------|
| **_id**                   | Token          | Logical ID of the resource.                                                    |
| **_lastUpdated**           | Date/DateTime  | When the resource was last updated.                                            |
| **category**              | Token          | Returns medications of a specific category (e.g., prescription, over-the-counter). |
| **code**                  | Token          | Returns medications with this code (e.g., SNOMED CT, RxNorm).                  |
| **form**                  | Token          | Returns medications with a specific dose form (e.g., tablet, injection).       |
| **identifier**            | Token          | Returns medications with this external identifier.                             |
| **ingredient**            | Reference      | The active or inactive ingredients of the medication.                          |
| **ingredient-code**       | Token          | The code of an ingredient in the medication.                                   |
| **manufacturer**          | Reference      | The organization responsible for the medication.                               |
| **status**                | Token          | The status of the medication (e.g., active, inactive, entered-in-error).       |

---

## Notes
- These parameters are case-sensitive as per FHIR's rules.
- Additional custom search parameters may be defined depending on the implementation.
- Some parameters allow modifiers (e.g., `:exact`, `:contains`) for more advanced queries.
- Replace `[base]` with your FHIR server's base URL when constructing API calls.

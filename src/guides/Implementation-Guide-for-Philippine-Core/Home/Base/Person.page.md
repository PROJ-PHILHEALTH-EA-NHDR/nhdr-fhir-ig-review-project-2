---
canonical: https://example.org/fhir/StructureDefinition/PH_Person
expand: 2
---

# {{page-title}}

Demographics and administrative information about a person independent of a specific health-related context.

## Scope and Usage

The Person resource serves as a linkage resource that may provide a reference set of common demographics for an individual (human or animal) across multiple roles.
This linkage can be direct to role-specific FHIR resources (Patient, Practitioner and RelatedPerson) residing on the same or possibly distinct FHIR systems/applications, or indirectly through the use of business identifiers.

The Person resource may be used in many situations/contexts, including:

- A set of demographics that can be used to co-ordinate the maintenance of this de-normalized information across practitioners, patients and/or related persons
e.g. link known resources of the different types together within a system
0 A state/network based Master Person Index
e.g. A National Identifier Index or a Network membership/subscriber list
- A central register that links patient resources from multiple servers, indicating they all correspond to the same individual
e.g. Within a large organization with many systems to be able to link the various records, without having to modify the source information with external links
- A support for access monitoring software that is able to assert what practitioner, patient and related person records correspond to the same human being to assist in detecting improper querying.
e.g. asserting that a Patient A is the same individual as a RelatedPerson B who is related to Patient C, who is also Practitioner D. As such, monitoring for Practitioner D’s accesses to Patient A’s records should be carefully scrutinized.
- Local record(s) on a mobile device listing links to remote server patient resources
e.g. A mobile phone application storing references to the hospitals they have access to

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

# Default Search Parameters for Person Resource

| **Search Parameter**      | **Type**       | **Description**                                                                 |
|---------------------------|----------------|---------------------------------------------------------------------------------|
| **_id**                   | Token          | Logical ID of the resource.                                                    |
| **_lastUpdated**           | Date/DateTime  | When the resource was last updated.                                            |
| **address**               | String         | A portion of the person's address.                                             |
| **address-city**          | String         | A city specified in an address.                                                |
| **address-country**       | String         | A country specified in an address.                                             |
| **address-postalcode**    | String         | A postal code specified in an address.                                         |
| **address-state**         | String         | A state specified in an address.                                               |
| **address-use**           | Token          | A use code for an address (e.g., home, work).                                  |
| **birthdate**             | Date/DateTime  | The person's date of birth.                                                    |
| **email**                 | Token          | A value in an email contact.                                                   |
| **gender**                | Token          | The gender of the person (e.g., male, female, other, unknown).                 |
| **identifier**            | Token          | A person identifier (e.g., national ID).                                       |
| **link**                  | Reference      | All resources linked to the person (e.g., Patient, Practitioner).              |
| **name**                  | String         | A portion of the person's name.                                                |
| **organization**          | Reference      | The organization associated with the person.                                   |
| **phone**                 | Token          | A value in a phone contact.                                                    |
| **phonetic**              | String         | A portion of the person's name using phonetic matching.                        |
| **telecom**               | Token          | The value in any contact detail for the person (phone, email, etc.).           |

---

## Notes
- These parameters are case-sensitive as per FHIR's rules.
- Additional custom search parameters may be defined depending on the implementation.
- Some parameters allow modifiers (e.g., `:exact`, `:contains`) for more advanced queries.
- Replace `[base]` with your FHIR server's base URL when constructing API calls.

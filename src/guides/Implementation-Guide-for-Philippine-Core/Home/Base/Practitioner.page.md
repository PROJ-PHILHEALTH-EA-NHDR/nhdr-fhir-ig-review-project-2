---
canonical: https://example.org/fhir/StructureDefinition/PH_Practitioner
expand: 2
---

# {{page-title}}

A person who is directly or indirectly involved in the provisioning of healthcare or related services.


## Scope and Usage

Practitioner covers all individuals who are engaged in the healthcare process and healthcare-related services as part of their formal responsibilities and this Resource is used for attribution of activities and responsibilities to these individuals. Practitioners include (but are not limited to):

physicians, dentists, pharmacists
physician assistants, nurses, scribes
midwives, dietitians, therapists, optometrists, paramedics
medical technicians, laboratory scientists, prosthetic technicians, radiographers
social workers, professional homecare providers, official volunteers
receptionists handling patient registration
IT personnel merging or unmerging patient records
service animal (e.g., ward assigned dog capable of detecting cancer in patients)
a person working for a supplier of a healthcare organization
The Practitioner resource is used for anyone involved in the provision of care or services to a Patient associated with an organization. The RelatedPerson resource is used for anyone involved in the care for a patient, typically having a personal *relationship *or non-healthcare-specific professional relationship to the patient.

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

## Default Search Parameters for Practitioner Resource

| **Search Parameter**      | **Type**       | **Description**                                                                 |
|---------------------------|----------------|---------------------------------------------------------------------------------|
| **_id**                   | Token          | Logical ID of the resource.                                                    |
| **_lastUpdated**           | Date/DateTime  | When the resource was last updated.                                            |
| **active**                | Token          | Whether the practitioner record is active.                                     |
| **address**               | String         | A portion of the practitioner’s address.                                       |
| **address-city**          | String         | A city specified in an address.                                                |
| **address-country**       | String         | A country specified in an address.                                             |
| **address-postalcode**    | String         | A postal code specified in an address.                                         |
| **address-state**         | String         | A state specified in an address.                                               |
| **address-use**           | Token          | A use code for an address (e.g., home, work).                                  |
| **communication**         | Token          | Languages the practitioner can communicate in.                                 |
| **email**                 | Token          | A value in an email contact.                                                   |
| **family**                | String         | A portion of the family name of the practitioner.                              |
| **gender**                | Token          | Gender of the practitioner (male, female, other, unknown).                     |
| **given**                 | String         | A portion of the given name of the practitioner.                               |
| **identifier**            | Token          | A practitioner identifier (e.g., license number).                              |
| **name**                  | String         | A portion of either family or given name.                                      |
| **organization**          | Reference      | The organization where the practitioner is employed.                           |
| **phone**                 | Token          | A value in a phone contact.                                                    |
| **phonetic**              | String         | A portion of either family or given name using phonetic matching.              |
| **telecom**               | Token          | The value in any contact detail for the practitioner (phone, email, etc.).     |

---

## Notes
- These parameters are case-sensitive as per FHIR's rules.
- Additional custom search parameters may be defined depending on the implementation.
- Some parameters allow modifiers (e.g., `:exact`, `:contains`) for more advanced queries.
- Replace `[base]` with your FHIR server's base URL when constructing API calls.

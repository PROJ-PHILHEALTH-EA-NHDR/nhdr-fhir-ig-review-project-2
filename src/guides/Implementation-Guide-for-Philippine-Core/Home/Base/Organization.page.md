---
canonical: https://example.org/fhir/StructureDefinition/PH_Organization
expand: 2
---

# {{page-title}}

**Organization Resource in the Philippine Context**

An **Organization Resource** refers to a formally or informally recognized grouping of people or entities that are formed to achieve a common goal, particularly in healthcare. This includes hospitals, clinics, healthcare institutions, departments, community health groups, insurance providers, healthcare payer organizations, and other entities that play a role in the health ecosystem. 

In the Philippine context, the **Organization Resource** is essential for integrating the data from various healthcare entities into the **National Health Facility Registry (NHFR)**. The NHFR serves as a centralized registry that contains contact and other critical information about healthcare organizations across the country. It supports the identification, tracking, and management of healthcare facilities in the Philippines.

### Scope and Usage

This resource may be utilized in shared registries, such as the **National Health Facility Registry (NHFR)**, which consolidates information about healthcare organizations operating within the Philippines. It can also support other resources that need to reference organizations in the context of patient care, healthcare services, or health system management. For example, it can be referenced in documents, messages, or contained resources within a larger health information system.

In a **registry-based approach**, such as the **NHFR**, organizations are listed and categorized based on their roles, services, and affiliations. The registry can include entities like hospitals, rural health units, barangay health stations, clinics, healthcare practice groups, insurance companies, and government health agencies. While the **NHFR** serves as a national repository, it is possible for other registries to exist that deal with specific types of organizations (e.g., insurance providers or community health groups).

These organizational registries enable better interoperability and integration of health services across the Philippines, ensuring that all stakeholders can be appropriately referenced and managed within the national healthcare infrastructure.

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

## Default Search Parameters for Organization Resource

| **Search Parameter**      | **Type**       | **Description**                                                                 |
|---------------------------|----------------|---------------------------------------------------------------------------------|
| **_id**                   | Token          | Logical ID of the resource.                                                    |
| **_lastUpdated**           | Date/DateTime  | When the resource was last updated.                                            |
| **active**                | Token          | Whether the organization's record is active.                                   |
| **address**               | String         | A portion of the organization’s address.                                       |
| **address-city**          | String         | A city specified in an address.                                                |
| **address-country**       | String         | A country specified in an address.                                             |
| **address-postalcode**    | String         | A postal code specified in an address.                                         |
| **address-state**         | String         | A state specified in an address.                                               |
| **address-use**           | Token          | A use code for an address (e.g., home, work).                                  |
| **endpoint**              | Reference      | Technical endpoints providing services operated by the organization.           |
| **identifier**            | Token          | An organization identifier (e.g., registration number).                        |
| **name**                  | String         | A portion of the organization’s name.                                          |
| **partof**                | Reference      | The parent organization (if this organization is part of another).             |
| **phone**                 | Token          | A value in a phone contact.                                                    |
| **telecom**               | Token          | The value in any contact detail for the organization (phone, email, etc.).     |
| **type**                  | Token          | The kind(s) of organization (e.g., hospital, clinic).                          |

---

## Notes
- These parameters are case-sensitive as per FHIR's rules.
- Additional custom search parameters may be defined depending on the implementation.
- Some parameters allow modifiers (e.g., `:exact`, `:contains`) for more advanced queries.
- Replace `[base]` with your FHIR server's base URL when constructing API calls.
```
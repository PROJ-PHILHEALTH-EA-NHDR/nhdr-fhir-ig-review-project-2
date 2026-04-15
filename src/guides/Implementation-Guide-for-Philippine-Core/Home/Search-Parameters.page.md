## {{page-title}}

## Search Parameter Types
- **Number**
- **Date/DateTime**
- **String**
- **Token**
- **Reference**
- **Composite**
- **Quantity**
- **URI**
- **Special**

## Parameters for All Resources
- **_id**
- **_lastUpdated**
- **_tag**
- **_profile**
- **_security**
- **_text**
- **_content**
- **_list**
- **_has**
- **_type**

## Search Result Parameters
- **_sort**
- **_count**
- **_include**
- **_revinclude**
- **_summary**
- **_total**
- **_elements**
- **_contained**
- **_containedType**

## Special Search Parameters
- **_query**: Allows for alternative searching methods.
- **_filter**: Allows for alternative searching methods.

## Parameters for All Interactions
- **_format**
- **_pretty**

---

### Notes:
- A single page exists that lists all the search parameters.
- Search parameter names are **case-sensitive**.
  - The specification ensures there are no parameters differing only by case.
  - Clients **SHOULD** use correct case.
  - Servers **SHALL NOT** define parameters with different meanings using names that only differ by case.



# Search Parameters for the Patient Resource

| **Search Parameter**      | **Type**       | **Description**                                                                 |
|---------------------------|----------------|---------------------------------------------------------------------------------|
| **_id**                   | Token          | Logical ID of the resource.                                                    |
| **_lastUpdated**           | Date/DateTime  | When the resource was last updated.                                            |
| **active**                | Token          | Whether the patient record is active.                                          |
| **address**               | String         | A portion of the patient’s address.                                            |
| **address-city**          | String         | A city specified in an address.                                                |
| **address-country**       | String         | A country specified in an address.                                             |
| **address-postalcode**    | String         | A postal code specified in an address.                                         |
| **address-state**         | String         | A state specified in an address.                                               |
| **address-use**           | Token          | A use code for an address (e.g., home, work).                                  |
| **birthdate**             | Date/DateTime  | The patient’s date of birth.                                                   |
| **communication**         | Token          | Languages the patient is known to communicate in.                              |
| **deceased**              | Token          | Indicates whether the patient is deceased.                                     |
| **email**                 | Token          | A value in an email contact.                                                   |
| **family**                | String         | A portion of the family name.                                                  |
| **gender**                | Token          | Gender of the patient (male, female, other, unknown).                          |
| **general-practitioner**  | Reference      | Patient's general practitioner.                                                |
| **given**                 | String         | A portion of the given name.                                                   |
| **identifier**            | Token          | A patient identifier (e.g., medical record number).                            |
| **language**              | Token          | The patient’s preferred language.                                              |
| **link**                  | Reference      | All patients linked to the given patient.                                      |
| **name**                  | String         | A portion of either family or given name.                                      |
| **organization**          | Reference      | The organization responsible for the patient.                                  |
| **phone**                 | Token          | A value in a phone contact.                                                    |
| **phonetic**              | String         | A portion of either family or given name using phonetic matching.              |
| **telecom**               | Token          | The value in any contact detail for the patient (phone, email, etc.).          |
| **identifier-type**       | Token          | Type of identifier (e.g., national ID, health plan ID).                        |

---

## Notes
- These parameters are case-sensitive as per FHIR's rules.
- Additional custom search parameters may be defined depending on the implementation.
- Some parameters allow modifiers (e.g., `:exact`, `:contains`) for more advanced queries.

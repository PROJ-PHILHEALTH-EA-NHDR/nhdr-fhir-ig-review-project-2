---
canonical: https://example.org/fhir/StructureDefinition/PH_Patient
expand: 2
---

# {{page-title}}

The **Patient Resource** in the Philippine healthcare system captures key demographic and administrative information about individuals receiving care or other health-related services. This data encompasses the "who" aspect of patient information, with a focus on the attributes necessary for administrative, financial, and logistic processes. These attributes help manage patient records across various healthcare settings.

### Scope and Usage
This **Patient Resource** is designed to handle data for human patients involved in health-related activities across a wide range of services, including:

- Curative and preventive healthcare activities
- Maternal and pregnancy care
- Primary Care Services
- Immunization
- Medication Administration
- Laboratory Services

Each organization providing care for a patient is responsible for creating and maintaining a unique **Patient Resource** record. As patients or animals may receive care across multiple organizations, their data may be duplicated across multiple systems, each containing its own set of patient records.

While the base **Patient Resource** covers core demographic and administrative fields, not all relevant fields are included by default (e.g., race, ethnicity, nationality, organ donor status). These additional fields are typically included in jurisdiction-specific profiles or through the use of standard extensions. In the Philippine context, relevant demographic data fields may vary across healthcare organizations, but a common structure is encouraged for consistency.

### Key Data Fields in the Philippine Context

The following are key fields relevant to the **Patient Resource** in the Philippines:

- **Patient.identifier**: A unique identifier for the patient, including the **PhilHealth ID** and other government or private IDs.
- **Patient.active**: A flag indicating whether the patient's record is currently active.
- **Patient.name**: The full legal name of the patient.
- **Patient.telecom**: Contact information, including phone numbers and email addresses.
- **Patient.sex**: The patient’s sex, often defined by gender norms in the system.
- **Patient.birthDate**: The patient's date of birth.
- **Patient.deceased[x]**: Information regarding whether the patient is deceased, including:
  - **deceasedBoolean**: A simple true/false flag.
  - **deceasedDateTime**: The exact date and time of death, if applicable.
- **Patient.address**: The patient's residential address.
- **Patient.maritalStatus**: The patient’s marital status (e.g., single, married, widowed).
- **Patient.nationality**: The patient's nationality.
- **Patient.photo**: A photograph of the patient for identification purposes.
- **Patient.contact**: Information about the patient’s emergency contact, including:
  - **Patient.contact.relationship**: The contact's relationship to the patient (e.g., spouse, sibling).
  - **Patient.contact.name**: The name of the emergency contact.
  - **Patient.contact.telecom**: The contact’s phone number and other communication details.
  - **Patient.contact.address**: The contact’s address.
- **Patient.generalPractitioner**: Information about the patient’s general practitioner or primary healthcare provider.
- **Patient.occupation**: The patient’s occupation, which may be relevant for healthcare provision.
- **Patient.indigenousPeople**: A field to indicate whether the patient belongs to an indigenous community.
- **Patient.indigenousGroup**: The specific indigenous group to which the patient belongs, if applicable.
- **Patient.religion**: The patient’s religion, if relevant to their care.
- **Patient.spouseName**: The name of the patient’s spouse, if applicable.
- **Patient.motherName**: The full name of the patient’s mother.
- **Patient.fatherName**: The full name of the patient’s father.
- **Patient.recordedDate**: The date when the patient’s data was recorded or last updated.
- **Patient.Signature**: The digital or physical signature of the patient, if required for certain procedures or consent.

### Extensibility and Jurisdiction-Specific Fields
In the Philippines, certain fields such as **PhilHealth ID**, **indigenous group**, and **religion** are highly relevant to care and administrative processing. These fields reflect cultural, social, and governmental requirements for healthcare delivery. While some fields are universal, others may require specific extensions or profiles tailored to local healthcare requirements. 

The structure and flexibility of the FHIR framework allow for these customizations, enabling better data exchange and interoperability across the Philippines’ diverse healthcare landscape.
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

## Default Search Parameters for Patient Resource

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
| **telecom**               | Token          | The value in any contact detail for the patient (phone, email, etc.).          |
| **identifier-type**       | Token          | Type of identifier (e.g., national ID, health plan ID).                        |

---

## Notes
- These parameters are case-sensitive as per FHIR's rules.
- Additional custom search parameters may be defined depending on the implementation.
- Some parameters allow modifiers (e.g., `:exact`, `:contains`) for more advanced queries.








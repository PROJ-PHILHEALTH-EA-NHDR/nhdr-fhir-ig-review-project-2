---
canonical: https://example.org/fhir/StructureDefinition/PH_QuestionnaireResponse
expand: 2
---

# {{page-title}}


A structured set of questions and their answers. The questions are ordered and grouped into coherent subsets, corresponding to the structure of the grouping of the questionnaire being responded to.

## Scope and Usage

QuestionnaireResponse provides a complete or partial list of answers to a set of questions filled when responding to a questionnaire. The questions may be included directly or by reference to a Questionnaire resource that defines the questions as well as the constraints on the allowed answers. In some cases, both formal rules for editing the questionnaire (via link to Questionnaire) as well as sufficient local information to allow rendering of the questionnaire may be provided.

Each time a questionnaire is completed for a different subject or at a different time, a distinct QuestionnaireResponse is generated, though it may be possible for a previously entered set of answers to be edited or updated.

Questionnaire responses cover the need to communicate data originating from forms used in medical history examinations, research questionnaires and sometimes full clinical specialty records. In many systems this data is collected using user-defined screens and forms. Questionnaire responses record specifics about data capture - exactly what questions were asked, in what order, what answers were given, etc. Each of these questions is part of the Questionnaire, and as such the Questionnaire is a separately identifiable Resource, whereas the individual questions are not.

Examples of Questionnaires include:

- Past medical history (PMH)
- Family diseases
- Social history
- Research questionnaires and Case report forms (CRFs)
- Quality and evaluation forms
- Patient intake form (e.g. clipboard)
- Insurance claim form

QuestionnaireResponse resources can be validated against their corresponding Questionnaire to verify that required groups and questions are answered and that answers fit constraints in terms of cardinality, data type, etc.



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

## Default Search Parameters for QuestionnaireResponse Resource

| **Search Parameter**      | **Type**       | **Description**                                                                 |
|---------------------------|----------------|---------------------------------------------------------------------------------|
| **_id**                   | Token          | Logical ID of the resource.                                                    |
| **_lastUpdated**           | Date/DateTime  | When the resource was last updated.                                            |
| **authored**              | Date/DateTime  | The date the response was authored.                                            |
| **based-on**              | Reference      | Plan or proposal fulfilled by this response.                                   |
| **context**               | Reference      | Encounter or episode associated with the questionnaire response.               |
| **identifier**            | Token          | The unique identifier for the questionnaire response.                          |
| **part-of**               | Reference      | A larger event or process that includes the response.                          |
| **patient**               | Reference      | The patient who is the subject of the questionnaire response.                  |
| **questionnaire**         | Reference      | The questionnaire this response is based on.                                   |
| **source**                | Reference      | The individual or device providing the answers.                                |
| **status**                | Token          | The status of the questionnaire response (e.g., in-progress, completed).       |
| **subject**               | Reference      | The subject (e.g., patient, group) of the questionnaire response.              |

---

## Notes
- These parameters are case-sensitive as per FHIR's rules.
- Additional custom search parameters may be defined depending on the implementation.
- Some parameters allow modifiers (e.g., `:exact`, `:contains`) for more advanced queries.
- Replace `[base]` with your FHIR server's base URL when constructing API calls.

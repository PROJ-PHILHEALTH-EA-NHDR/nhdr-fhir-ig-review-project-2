<ul class="nav nav-tabs">
    <li class="active"><a href="#">Content</a></li>
    <li><a href="CF3-mapping.html">Mappings</a></li>
    <li><a href="CF3-json.html">Sample JSON Bundles</a></li>
</ul>

This is a sample representation of the **Use Case** implementation guide for **Claims Form 3**

---

### Implementation Rules

* name.given is an array that captures the first name and middle name.
    1. name.`given[0]` is used to capture a person's **first name**.
    1. name.`given[1]` is used to capture a person's **middle name**.

---

**Questionnaire:**

```
  {
    "resource": {
        "resourceType": "Questionnaire",
        "id": "CF3-Questionnaire",
        "meta": {
        "profile": [
            "https://nhdr.gov.ph/fhir/StructureDefinition/PH_Questionnaire"
        ]
        },
        "status": "active",
        "item": [
        {
            "linkId": "CF3-Q1",
            "text": "Orientation to MCP/Availment of Benefits (Yes/No)",
            "type": "boolean"
        },
        {
            "linkId": "CF3-Q2",
            "text": "Perineal wound care",
            "type": "boolean"
        },
        {
            "linkId": "CF3-Q3",
            "text": "Perineal wound care - Remarks",
            "type": "string"
        },
        {
            "linkId": "CF3-Q4",
            "text": "Signs of Maternal Postpartum Complications",
            "type": "boolean"
        },
        {
            "linkId": "CF3-Q5",
            "text": "Signs of Maternal Postpartum Complications - Remarks",
            "type": "string"
        },
        {
            "linkId": "CF3-Q6",
            "text": "Counselling and Education (Breastfeeding and Nutrition)",
            "type": "boolean"
        },
        {
            "linkId": "CF3-Q7",
            "text": "Counselling and Education (Breastfeeding and Nutrition) - Remarks",
            "type": "string"
        },
        {
            "linkId": "CF3-Q8",
            "text": "Counselling and Education (Family Planning)",
            "type": "boolean"
        },
        {
            "linkId": "CF3-Q9",
            "text": "Counselling and Education (Family Planning) - Remarks",
            "type": "string"
        },
        {
            "linkId": "CF3-Q10",
            "text": "Provided family planning service to patient (as requested by patient)",
            "type": "boolean"
        },
        {
            "linkId": "CF3-Q11",
            "text": "Provided family planning service to patient (as requested by patient) - Remarks",
            "type": "string"
        },
        {
            "linkId": "CF3-Q12",
            "text": "Referred to partner physician for Voluntary Surgical Sterilization (as requested by pt.)",
            "type": "boolean"
        },
        {
            "linkId": "CF3-Q13",
            "text": "Referred to partner physician for Voluntary Surgical Sterilization (as requested by pt.) - Remarks",
            "type": "string"
        },
        {
            "linkId": "CF3-Q14",
            "text": "Schedule the next postpartum follow-up",
            "type": "boolean"
        },
        {
            "linkId": "CF3-Q15",
            "text": "Schedule the next postpartum follow-up - Remarks",
            "type": "string"
        }
        ]
    }
    }

```

**QuestionnaireResponse:**

```
{
  "resource": {
    "resourceType": "QuestionnaireResponse",
    "id": "CF3-QuestionnaireResponse",
    "meta": {
      "profile": [
        "https://nhdr.gov.ph/fhir/StructureDefinition/PH_QuestionnaireResponse"
      ]
    },
    "status": "completed",
    "questionnaire": "urn:uuid:questionnaire",
    "item": [
      {
        "linkId": "CF3-Q1",
        "answer": [
          {
            "valueBoolean": true
          }
        ]
      },
      {
        "linkId": "CF3-Q2",
        "answer": [
          {
            "valueBoolean": true
          }
        ]
      },
      {
        "linkId": "CF3-Q3",
        "answer": [
          {
            "valueString": "Patient instructed on proper perineal hygiene and wound care."
          }
        ]
      },
      {
        "linkId": "CF3-Q4",
        "answer": [
          {
            "valueBoolean": true
          }
        ]
      },
      {
        "linkId": "CF3-Q5",
        "answer": [
          {
            "valueString": "Patient advised to watch for fever, excessive bleeding, and severe abdominal pain."
          }
        ]
      },
      {
        "linkId": "CF3-Q6",
        "answer": [
          {
            "valueBoolean": true
          }
        ]
      },
      {
        "linkId": "CF3-Q7",
        "answer": [
          {
            "valueString": "Counselling provided on exclusive breastfeeding and balanced nutrition."
          }
        ]
      },
      {
        "linkId": "CF3-Q8",
        "answer": [
          {
            "valueBoolean": true
          }
        ]
      },
      {
        "linkId": "CF3-Q9",
        "answer": [
          {
            "valueString": "Discussed available family planning methods suitable for postpartum mothers."
          }
        ]
      },
      {
        "linkId": "CF3-Q10",
        "answer": [
          {
            "valueBoolean": false
          }
        ]
      },
      {
        "linkId": "CF3-Q11",
        "answer": [
          {
            "valueString": "Patient opted to decide on family planning method at next visit."
          }
        ]
      },
      {
        "linkId": "CF3-Q12",
        "answer": [
          {
            "valueBoolean": false
          }
        ]
      },
      {
        "linkId": "CF3-Q13",
        "answer": [
          {
            "valueString": "No referral requested by patient."
          }
        ]
      },
      {
        "linkId": "CF3-Q14",
        "answer": [
          {
            "valueBoolean": true
          }
        ]
      },
      {
        "linkId": "CF3-Q15",
        "answer": [
          {
            "valueString": "Next postpartum follow-up scheduled after 6 weeks."
          }
        ]
      }
    ]
  }
}



```
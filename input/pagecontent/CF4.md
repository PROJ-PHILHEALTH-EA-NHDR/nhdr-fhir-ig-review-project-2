<ul class="nav nav-tabs">
    <li class="active"><a href="#">Content</a></li>
    <li><a href="CF4-mapping.html">Mappings</a></li>
    <li><a href="CF4-json.html">Sample JSON Bundles</a></li>
</ul>

This is a sample representation of the **Use Case** implementation guide for **Claims Form 4**

---

### Implementation Rules

* name.given is an array that captures the first name and middle name.
    1. name.`given[0]` is used to capture a person's **first name**.
    1. name.`given[1]` is used to capture a person's **middle name**.


**Claim**

```
    {
      "resource": {
        "resourceType": "Claim",
        "meta": {
          "profile": [
            "https://nhdr.gov.ph/fhir/StructureDefinition/PH-Claim"
          ]
        },
        "extension": [
          {
            "url": "https://nhdr.gov.ph/fhir/StructureDefinition/EncounterExtension",
            "valueReference": {
              "reference": "urn:uuid:encounter"
            }
          }
        ],
        "identifier": [
          {
            "system": "https://nhdr.gov.ph/claim",
            "value": "CLAIM-0001"
          }
        ],
        "status": "active",
        "type": {
          "coding": [
            {
              "system": "http://terminology.hl7.org/CodeSystem/claim-type",
              "code": "institutional"
            }
          ]
        },
        "use": "claim",
        "patient": {
          "reference": "urn:uuid:patient"
        },
        "provider": {
          "reference": "urn:uuid:organization"
        },
        "created": "2026-03-17",
        "priority": {
          "coding": [
            {
              "system": "http://terminology.hl7.org/CodeSystem/processpriority",
              "code": "normal"
            }
          ]
        },
        "diagnosis": [
          {
            "sequence": 1,
            "diagnosisCodeableConcept": {
              "text": "Hypertension"
            }
          }
        ],
        "supportingInfo": [
          {
            "sequence": 1,
            "category": { "text": "Pertinent Past Medical History" },
            "valueReference": {
              "reference": "urn:uuid:observation-1"
            }
          },
          {
            "sequence": 2,
            "category": { "text": "Signs and Symptoms" },
            "valueReference": {
              "reference": "urn:uuid:observation-2"
            }
          },
          {
            "sequence": 3,
            "category": { "text": "Physical Examination" },
            "valueReference": {
              "reference": "urn:uuid:observation-3"
            }
          }
        ],
        "procedure": [
          {
            "sequence": 1,
            "procedureReference": {
              "reference": "urn:uuid:procedure"
            }
          }
        ],
        "insurance": [
          {
            "sequence": 1,
            "focal": true,
            "coverage": {
              "reference": "urn:uuid:coverage"
            }
          }
        ],
        "item": [
          {
            "sequence": 1,
            "productOrService": {
              "text": "General Ward"
            },
            "quantity": {
              "value": 1
            },
            "net": {
              "value": 1000,
              "currency": "PHP"
            }
          }
        ],
        "referral": {
          "reference": "urn:uuid:servicerequest"
        },
        "prescription": {
          "reference": "urn:uuid:medicationrequest"
        }
      },
      "request": {
        "method": "POST",
        "url": "Claim"
      }
    }


```
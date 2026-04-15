<ul class="nav nav-tabs">
    <li><a href="K4.html">Content</a></li>
    <li><a href="K4-mapping.html">Mappings</a></li>
    <li class="active"><a href="#">JSON</a></li>
</ul>

```json
   {
  "resourceType": "Bundle",
  "id": "Bundle-KonsultaPrescriptionSlip",
  "type": "transaction",
  "identifier": {
    "system": "http://nhdr.gov.ph/fhir/ValueSet-form-type",
    "value": "Konsulta-Prescription-Slip"
  },
  "entry": [
    {
      "fullUrl": "urn:uuid:patient-4",
      "resource": {
        "resourceType": "Patient",
        "id": "K4-Patient",
        "meta": {
          "profile": [
            "https://nhdr.gov.ph/fhir/StructureDefinition/PH-Patient"
          ]
        },
        "extension": [
          {
            "url": "https://nhdr.gov.ph/fhir/StructureDefinition/MemberType",
            "valueCodeableConcept": {
              "coding": [
                {
                  "system": "https://nhdr.gov.ph/fhir/ValueSet/MemberTypeVS",
                  "code": "3",
                  "display": "INDIGENT"
                }
              ],
              "text": "INDIGENT"
            }
          },
          {
            "url": "https://nhdr.gov.ph/fhir/StructureDefinition/PatientType",
            "valueCodeableConcept": {
              "coding": [
                {
                  "system": "https://nhdr.gov.ph/fhir/ValueSet/PatientTypeVS",
                  "code": "MM",
                  "display": "Member"
                }
              ],
              "text": "Member"
            }
          }
        ],
        "identifier": [
          {
            "system": "http://nhdr.gov.ph/fhir/Identifier/philhealth-id",
            "value": "PH-00001"
          }
        ],
        "name": [
          {
            "family": "Dela Cruz",
            "given": [
              "Juan",
              "Santos"
            ],
            "suffix": [
              "Jr"
            ]
          }
        ],
        "telecom": [
          {
            "system": "phone",
            "value": "09456469323"
          }
        ]
      },
      "request": {
        "method": "POST",
        "url": "Patient"
      }
    },
    {
      "fullUrl": "urn:uuid:encounter-4",
      "resource": {
        "resourceType": "Encounter",
        "id": "K4-Encounter",
        "meta": {
          "profile": [
            "https://nhdr.gov.ph/fhir/StructureDefinition/PH-Encounter"
          ]
        },
        "identifier": [
          {
            "system": "http://nhdr.gov.ph/fhir/Identifier/encounter-id",
            "value": "EN-0001"
          }
        ],
        "extension": [
          {
            "url": "https://nhdr.gov.ph/fhir/StructureDefinition/ageYears",
            "valueInteger": 35
          }
        ],
        "appointment": {
          "reference": "Appointment/13"
        },
        "class": [
          {
            "system": "http://terminology.hl7.org/CodeSystem/v3-ActCode",
            "code": "AMB"
          }
        ],
        "status": "booked"
      },
      "request": {
        "method": "POST",
        "url": "Encounter"
      }
    },
    {
      "fullUrl": "urn:uuid:practitioner-4",
      "resource": {
        "resourceType": "Practitioner",
        "id": "K4-Practitioner",
        "meta": {
          "profile": [
            "https://nhdr.gov.ph/fhir/StructureDefinition/PH-Practitioner"
          ]
        },
        "name": [
          {
            "family": "Santos",
            "given": [
              "Maria",
              "Gitna"
            ]
          }
        ]
      },
      "request": {
        "method": "POST",
        "url": "Practitioner"
      }
    },
    {
      "fullUrl": "urn:uuid:provenance-4",
      "resource": {
        "resourceType": "Provenance",
        "id": "K4-Provenance",
        "meta": {
          "profile": [
            "https://nhdr.gov.ph/fhir/StructureDefinition/PH-Provenance"
          ]
        },
        "target": [
          {
            "reference": "urn:uuid:patient-3"
          }
        ],
        "recorded": "2026-02-03T09:00:00+08:00",
        "agent": [
          {
            "who": {
              "reference": "Organization/33"
            }
          }
        ],
        "signature": [
          {
            "url": "https://nhdr.gov.ph/fhir/StructureDefinition/PH-Signature",
            "valueSignature": {
              "type": [
                {
                  "system": "urn:iso-astm:E1762-95:2013",
                  "code": "1.2.840.10065.1.12.1.20",
                  "display": "Electronic Signature"
                }
              ],
              "when": "2026-02-03T10:30:00+08:00",
              "who": {
                "reference": "urn:uuid:patient-4"
              },
              "data": "QkFTRTY0X1NJR05BVFVSRV9QQVRJRU5U"
            }
          }
        ]
      },
      "request": {
        "method": "POST",
        "url": "Provenance"
      }
    },
    {
      "fullUrl": "urn:uuid:questionnaireresponse-4",
      "resource": {
        "resourceType": "QuestionnaireResponse",
        "id": "K4-QuestionnaireResponse",
        "meta": {
          "profile": [
            "https://nhdr.gov.ph/fhir/StructureDefinition/PH-QuestionnaireResponse"
          ]
        },
        "status": "completed",
        "item": [
          {
            "linkId": "K4-Q1",
            "answer": [
              {
                "valueBoolean": true
              }
            ]
          },
          {
            "linkId": "K4-Q2",
            "answer": [
              {
                "valueString": "Very satisfied"
              }
            ]
          },
          {
            "linkId": "K4-Q3",
            "answer": [
              {
                "valueString": "Medicines were available and properly explained by the provider."
              }
            ]
          }
        ]
      },
      "request": {
        "method": "POST",
        "url": "QuestionnaireResponse"
      }
    },
    {
      "fullUrl": "urn:uuid:medication-4",
      "resource": {
        "resourceType": "Medication",
        "id": "K4-Medication",
        "meta": {
          "profile": [
            "https://nhdr.gov.ph/fhir/StructureDefinition/PH-Medication"
          ]
        },
         "code": {
          "coding": [
            {
              "system": "https://nhdr.gov.ph/fhir/ValueSet/DrugCodesVS",
              "code": "10544-165",
              "display": "Amoxicillin 500 mg Capsule"
            }
          ],
        },
        "form": {
          "coding": [
            {
              "system": "http://snomed.info/sct",
              "code": "385055001",
              "display": "Capsule"
            }
          ],
          "text": "Capsule"
        },
        "ingredient": [
          {
            "itemCodeableConcept": {
              "coding": [
                {
                  "system": "https://nhdr.gov.ph/fhir/ValueSet/DrugCodesVS",
                  "code": "10544-165",
                  "display": "Amoxicillin"
                }
              ],
              "text": "Amoxicillin"
            },
            "strength": {
              "numerator": {
                "value": 500,
                "unit": "mg",
                "system": "http://unitsofmeasure.org",
                "code": "mg"
              }
            }
          }
        ]
      },
      "request": {
        "method": "POST",
        "url": "Medication"
      }
    },
    {
      "fullUrl": "urn:uuid:medicationdispense-4",
      "resource": {
        "resourceType": "MedicationDispense",
        "id": "K4-MedicationDispense",
        "meta": {
          "profile": [
            "https://nhdr.gov.ph/fhir/StructureDefinition/PH-MedicationDispense"
          ]
        },
        "status": "completed",
        "medicationReference": {
          "reference": "urn:uuid:medication-4"
        },
        "note": [
          {
            "text": "Dispensed complete course. Advise patient to finish antibiotic therapy."
          }
        ]
      },
      "request": {
        "method": "POST",
        "url": "MedicationDispense"
      }
    },
    {
      "fullUrl": "urn:uuid:medicationrequest-4",
      "resource": {
        "resourceType": "MedicationRequest",
        "id": "K4-MedicationRequest",
        "meta": {
          "profile": [
            "https://nhdr.gov.ph/fhir/StructureDefinition/PH-MedicationRequest"
          ]
        },
        "status": "active",
        "intent": "order",
        "identifier": [
          {
            "system": "http://nhdr.gov.ph/fhir/Identifier/medication-request-id",
            "value": "MDR-0001"
          }
        ],
        "medicationCodeableConcept": {
          "coding": [
            {
              "system": "http://www.whocc.no/atc",
              "code": "J01CA04",
              "display": "Amoxicillin"
            }
          ],
          "text": "Amoxicillin 500 mg capsule"
        },
        "subject": {
          "reference": "urn:uuid:patient-4"
        },
        "encounter": {
          "reference": "urn:uuid:encounter-4"
        },
        "requester": {
          "reference": "Organization/66"
        },
        "dosageInstruction": [
          {
            "timing": {
              "repeat": {
                "frequency": 3,
                "period": 1,
                "periodUnit": "d"
              }
            }
          }
        ],
        "supportingInformation": [
          {
            "reference": "urn:uuid:condition-4"
          }
        ],
        "dispenseRequest": {
          "quantity": {
            "value": 10
          }
        }
      },
      "request": {
        "method": "POST",
        "url": "MedicationRequest"
      }
    }
  ]
}
```
<ul class="nav nav-tabs">
    <li><a href="K5.html">Content</a></li>
    <li><a href="K5-mapping.html">Mappings</a></li>
    <li class="active"><a href="#">JSON</a></li>
</ul>

```json
    {
  "resourceType": "Bundle",
  "id": "Bundle-NewHealthScreeningFPE",
  "type": "transaction",
  "identifier": {
    "system": "http://nhdr.gov.ph/fhir/ValueSet-form-type",
    "value": "K5-NewHealthScreeningFPE"
  },
  "entry": [
    {
      "fullUrl": "urn:uuid:patient-k5",
      "resource": {
        "resourceType": "Patient",
        "id": "K5-Patient",
        "meta": {
          "profile": [
            "https://nhdr.gov.ph/fhir/StructureDefinition/PH-Patient"
          ]
        },
        "extension": [
          {
            "url": "https://nhdr.gov.ph/fhir/StructureDefinition/PatientType",
            "valueCodeableConcept": {
              "coding": [
                {
                  "system": "https://nhdr.gov.ph/fhir/ValueSet/PatientTypeVS",
                  "code": "MM",
                  "display": "Member"
                }
              ]
            }
          },
          {
            "url": "https://nhdr.gov.ph/fhir/StructureDefinition/Sex",
            "valueCodeableConcept": {
              "coding": [
                {
                  "system": "https://nhdr.gov.ph/fhir/ValueSet/Sex",
                  "code": "M",
                  "display": "Male"
                }
              ]
            }
          }
        ],
        "identifier": [
          {
            "system": "http://nhdr.gov.ph/fhir/Identifier/philhealth-id",
            "value": "PH-00001",
            "type": {
              "text": "PhilHealth ID"
            }
          }
        ],
        "name": [
          {
            "family": "Senilla",
            "given": [
              "Quinn",
              "Ry"
            ]
          }
        ],
        "birthDate": "1998-07-08",
        "telecom": [
          {
            "system": "phone",
            "value": "09456469323"
          }
        ],
        "photo": [
          {
            "contentType": "image/jpeg",
            "url": "input/images/CF1.png"
          }
        ]
      },
      "request": {
        "method": "POST",
        "url": "Patient"
      }
    },
    {
      "fullUrl": "urn:uuid:encounter",
      "resource": {
        "resourceType": "Encounter",
        "id": "K5-Encounter",
        "meta": {
          "profile": [
            "https://nhdr.gov.ph/fhir/StructureDefinition/PH-Encounter"
          ]
        },
        "identifier": [
          {
            "system": "https://nhdr.gov.ph/fhir/Identifier/encounter-id",
            "value": "EN-0001"
          }
        ],
        "extension": [
          {
            "url": "https://nhdr.gov.ph/fhir/StructureDefinition/AgeYears",
            "valueInteger": 35
          }
        ],
        "class": {
          "system": "http://terminology.hl7.org/CodeSystem/v3-ActCode",
          "code": "AMB"
        },
        "status": "booked",
        "period": {
          "start": "2026-03-02T09:00:00+08:00"
        },
        "subject": {
          "reference": "Patient/K5-Patient"
        },
        "reasonReference": [
          {
            "reference": "Observation/K5-Observation-PPE"
          }
        ]
      },
      "request": {
        "method": "POST",
        "url": "Encounter"
      }
    },
    {
      "fullUrl": "urn:uuid:observation-female-physiology",
      "resource": {
        "resourceType": "Observation",
        "id": "K5-Observation-Female-Physiology",
        "meta": {
          "profile": [
            "https://nhdr.gov.ph/fhir/StructureDefinition/PH-Observation"
          ]
        },
        "status": "final",
        "code": {
          "coding": [
            {
              "system": "http://loinc.org",
              "code": "11111",
              "display": "Female Physiology"
            }
          ]
        },
        "valueString": "Lower abdominal pain and dizziness",
        "component": [
          {
            "code": {
              "text": "First menstrual Period"
            },
            "valuePeriod": {
              "start": "2026-02-20T08:30:00+08:00"
            }
          },
          {
            "code": {
              "text": "Last menstrual Period"
            },
            "valuePeriod": {
              "end": "2026-02-20T08:45:00+08:00"
            }
          },
          {
            "code": {
              "text": "Number of Pregnancies"
            },
            "valueInteger": 3
          }
        ]
      },
      "request": {
        "method": "POST",
        "url": "Observation"
      }
    },
    {
      "fullUrl": "urn:uuid:observation-PPE",
      "resource": {
        "resourceType": "Observation",
        "id": "K5-Observation-PPE",
        "meta": {
          "profile": [
            "https://nhdr.gov.ph/fhir/StructureDefinition/PH-Observation"
          ]
        },
        "status": "final",
        "code": {
          "coding": [
            {
              "system": "http://loinc.org",
              "code": "22222",
              "display": "Pertinent Physical Examination"
            }
          ]
        },
        "component": [
          {
            "code": {
              "text": "Blood Pressure"
            },
            "valueString": "120/80 mmHg"
          },
          {
            "code": {
              "text": "Heart Rate"
            },
            "valueQuantity": {
              "value": 72,
              "unit": "beats/minute"
            }
          },
          {
            "code": {
              "text": "Respiratory Rate"
            },
            "valueQuantity": {
              "value": 18,
              "unit": "breaths/minute"
            }
          },
          {
            "code": {
              "text": "Visual Acuity"
            },
            "valueRatio": {
              "numerator": {
                "value": 20
              },
              "denominator": {
                "value": 20
              }
            }
          },
          {
            "code": {
              "text": "Height (cm)"
            },
            "valueQuantity": {
              "value": 165,
              "unit": "cm"
            }
          },
          {
            "code": {
              "text": "Height (in)"
            },
            "valueQuantity": {
              "value": 64.96,
              "unit": "in"
            }
          },
          {
            "code": {
              "text": "Weight (kg)"
            },
            "valueQuantity": {
              "value": 60,
              "unit": "kg"
            }
          },
          {
            "code": {
              "text": "Weight (lb)"
            },
            "valueQuantity": {
              "value": 132.28,
              "unit": "lb"
            }
          },
          {
            "code": {
              "text": "BMI"
            },
            "valueQuantity": {
              "value": 22
            }
          },
          {
            "code": {
              "text": "Temperature"
            },
            "valueQuantity": {
              "value": 36.8
            }
          }
        ]
      },
      "request": {
        "method": "POST",
        "url": "Observation"
      }
    },
    {
      "fullUrl": "urn:uuid:observation-Pediatric-Client",
      "resource": {
        "resourceType": "Observation",
        "id": "K5-Observation-Pediatric-Client",
        "meta": {
          "profile": [
            "https://nhdr.gov.ph/fhir/StructureDefinition/PH-Observation"
          ]
        },
        "status": "final",
        "code": {
          "coding": [
            {
              "system": "http://loinc.org",
              "code": "33333",
              "display": "Pediatric Client aged 0-24 months"
            }
          ]
        },
        "component": [
          {
            "code": {
              "text": "Length"
            },
            "valueQuantity": {
              "value": 75,
              "unit": "cm"
            }
          },
          {
            "code": {
              "text": "Head Circumference"
            },
            "valueQuantity": {
              "value": 46,
              "unit": "cm"
            }
          },
          {
            "code": {
              "text": "Skinfold Thickness"
            },
            "valueQuantity": {
              "value": 1.2,
              "unit": "cm"
            }
          },
          {
            "code": {
              "text": "Body Circumference - Waist"
            },
            "valueQuantity": {
              "value": 48,
              "unit": "cm"
            }
          },
          {
            "code": {
              "text": "Body Circumference - Hip"
            },
            "valueQuantity": {
              "value": 50,
              "unit": "cm"
            }
          },
          {
            "code": {
              "text": "Body Circumference - Middle and Upper Arm"
            },
            "valueQuantity": {
              "value": 14,
              "unit": "cm"
            }
          }
        ]
      },
      "request": {
        "method": "POST",
        "url": "Observation"
      }
    },
    {
      "fullUrl": "urn:uuid:observation-Blood-Type",
      "resource": {
        "resourceType": "Observation",
        "id": "K5-Observation-Blood-Type",
        "meta": {
          "profile": [
            "https://nhdr.gov.ph/fhir/StructureDefinition/PH-Observation"
          ]
        },
        "status": "final",
        "code": {
          "coding": [
            {
              "system": "http://loinc.org",
              "code": "882-1",
              "display": "ABO and Rh blood group"
            }
          ]
        },
        "valueCodeableConcept": {
          "coding": [
            {
              "system": "http://terminology.hl7.org/CodeSystem/v2-0004",
              "code": "O+",
              "display": "O Positive"
            }
          ]
        }
      },
      "request": {
        "method": "POST",
        "url": "Observation"
      }
    },
    {
      "fullUrl": "urn:uuid:observation-General-Survey",
      "resource": {
        "resourceType": "Observation",
        "id": "K5-Observation-General-Survey",
        "meta": {
          "profile": [
            "https://nhdr.gov.ph/fhir/StructureDefinition/PH-Observation"
          ]
        },
        "status": "final",
        "code": {
          "coding": [
            {
              "system": "http://loinc.org",
              "code": "89205-8",
              "display": "General Survey"
            }
          ]
        },
        "valueCodeableConcept": {
          "coding": [
            {
              "system": "https://nhdr.gov.ph/fhir/ValueSet/ObservationValueVS",
              "code": "AbdominalCrampPain",
              "display": "ABDOMINAL CRAMP/PAIN"
            }
          ]
        }
      },
      "request": {
        "method": "POST",
        "url": "Observation"
      }
    },
    {
      "fullUrl": "urn:uuid:questionnaire",
      "resource": {
        "resourceType": "Questionnaire",
        "id": "K5-Questionnaire",
        "meta": {
          "profile": [
            "https://nhdr.gov.ph/fhir/StructureDefinition/PH-Questionnaire"
          ]
        },
        "status": "active",
        "item": [
          {
            "linkId": "K5-Q1",
            "text": "Do you experience any of the following: fever, cough, colds, or headache?",
            "type": "boolean"
          },
          {
            "linkId": "K5-Q2",
            "text": "If yes, please explain",
            "type": "string",
            "enableWhen": [
              {
                "question": "K5-Q1",
                "operator": "=",
                "answerBoolean": true
              }
            ]
          },
          {
            "linkId": "K5-Q3",
            "text": "Do you experience any of the following: unexplained change in weight, loss of appetite, change in bowel movement, or abdominal pain?",
            "type": "boolean"
          },
          {
            "linkId": "K5-Q4",
            "text": "If yes, please explain",
            "type": "string",
            "enableWhen": [
              {
                "question": "K5-Q3",
                "operator": "=",
                "answerBoolean": true
              }
            ]
          },
          {
            "linkId": "K5-Q5",
            "text": "Do you experience any of the following: chest pain or difficulty in breathing?",
            "type": "boolean"
          },
          {
            "linkId": "K5-Q6",
            "text": "If yes, please explain",
            "type": "string",
            "enableWhen": [
              {
                "question": "K5-Q5",
                "operator": "=",
                "answerBoolean": true
              }
            ]
          },
          {
            "linkId": "K5-Q7",
            "text": "Do you experience any of the following: frequent urination, frequent eating, frequent intake of fluids, smoking, and drinking alcohol?",
            "type": "boolean"
          },
          {
            "linkId": "K5-Q8",
            "text": "If yes, please explain",
            "type": "string",
            "enableWhen": [
              {
                "question": "K5-Q7",
                "operator": "=",
                "answerBoolean": true
              }
            ]
          },
          {
            "linkId": "K5-Q9",
            "text": "For male and female, do you experience any of the following: pain or discomfort on urination or frequency of urination?",
            "type": "boolean"
          },
          {
            "linkId": "K5-Q10",
            "text": "If yes, please explain",
            "type": "string",
            "enableWhen": [
              {
                "question": "K5-Q9",
                "operator": "=",
                "answerBoolean": true
              }
            ]
          }
        ]
      },
      "request": {
        "method": "POST",
        "url": "Questionnaire"
      }
    },
    {
      "fullUrl": "urn:uuid:questionnaireresponse",
      "resource": {
        "resourceType": "QuestionnaireResponse",
        "id": "K5-QuestionnaireResponse",
        "meta": {
          "profile": [
            "https://nhdr.gov.ph/fhir/StructureDefinition/PH-QuestionnaireResponse"
          ]
        },
        "status": "completed",
        "questionnaire": "urn:uuid:questionnaire-k5",
        "item": [
          {
            "linkId": "K5-Q1",
            "answer": [
              {
                "valueBoolean": true
              }
            ]
          },
          {
            "linkId": "K5-Q2",
            "answer": [
              {
                "valueString": "Fever and headache for 2 days"
              }
            ]
          },
          {
            "linkId": "K5-Q3",
            "answer": [
              {
                "valueBoolean": false
              }
            ]
          },
          {
            "linkId": "K5-Q4"
          },
          {
            "linkId": "K5-Q5",
            "answer": [
              {
                "valueBoolean": false
              }
            ]
          },
          {
            "linkId": "K5-Q6"
          },
          {
            "linkId": "K5-Q7",
            "answer": [
              {
                "valueBoolean": true
              }
            ]
          },
          {
            "linkId": "K5-Q8",
            "answer": [
              {
                "valueString": "Occasional drinking alcohol"
              }
            ]
          },
          {
            "linkId": "K5-Q9",
            "answer": [
              {
                "valueBoolean": false
              }
            ]
          },
          {
            "linkId": "K5-Q10"
          }
        ]
      },
      "request": {
        "method": "POST",
        "url": "QuestionnaireResponse"
      }
    }
  ]
}
```
<ul class="nav nav-tabs">
    <li><a href="CF4.html">Content</a></li>
    <li><a href="CF4-mapping.html">Mappings</a></li>
    <li class="active"><a href="#">Sample JSON Bundles</a></li>
</ul>

```json
  {
  "resourceType": "Bundle",
  "id": "Bundle-ClaimsForm4",
  "type": "transaction",
  "identifier": {
    "system": "http://nhdr.gov.ph/fhir/ValueSet-form-type",
    "value": "CF4"
  },
  "entry": [
    {
      "fullUrl": "urn:uuid:patient",
      "resource": {
        "resourceType": "Patient",
        "meta": {
          "profile": [
            "https://nhdr.gov.ph/fhir/StructureDefinition/PH-Patient"
          ]
        },
        "extension": [
          {
            "url": "https://nhdr.gov.ph/fhir/StructureDefinition/Sex",
            "valueCode": "M"
          }
        ],
        "identifier": [
          {
            "system": "http://nhdr.gov.ph/fhir/Identifier/philhealth-id",
            "type": {
              "text": "PhilHealth ID"
            },
            "value": "PH-00001"
          }
        ],
        "name": [
          {
            "family": "Apilyido",
            "given": [
              "John",
              "Mark"
            ],
            "suffix": [
              "Mr."
            ]
          }
        ]
      },
      "request": {
        "method": "POST",
        "url": "Patient"
      }
    },
    {
      "fullUrl": "urn:uuid:organization",
      "resource": {
        "resourceType": "Organization",
        "meta": {
          "profile": [
            "https://nhdr.gov.ph/fhir/StructureDefinition/PH-Organization"
          ]
        },
        "identifier": [
          {
            "type": {
              "coding": [
                {
                  "code": "AN"
                }
              ],
              "text": "PhilHealth Accreditation Number (PAN)"
            },
            "value": "AN199513893"
          }
        ],
        "name": "6th General Hospital",
        "address": [
          {
            "line": [
              "572 BLK 2 LOT 21",
              "Maharlika Village"
            ],
            "postalCode": "2300",
            "extension": [
              {
                "url": "https://nhdr.gov.ph/fhir/StructureDefinition/Barangay",
                "valueCoding": {
                  "code": "036916001",
                  "display": "San Roque"
                }
              },
              {
                "url": "https://nhdr.gov.ph/fhir/StructureDefinition/CityMunicipality",
                "valueCoding": {
                  "code": "036916000",
                  "display": "Tarlac City"
                }
              },
              {
                "url": "https://nhdr.gov.ph/fhir/StructureDefinition/Province",
                "valueCoding": {
                  "code": "036900000",
                  "display": "Tarlac"
                }
              }
            ]
          }
        ]
      },
      "request": {
        "method": "POST",
        "url": "Organization"
      }
    },
    {
      "fullUrl": "urn:uuid:encounter",
      "resource": {
        "resourceType": "Encounter",
        "meta": {
          "profile": [
            "https://nhdr.gov.ph/fhir/StructureDefinition/PH-Encounter"
          ]
        },
        "extension": [
          {
            "url": "https://nhdr.gov.ph/fhir/StructureDefinition/AgeYears",
            "valueInteger": 35
          }
        ],
        "status": "finished",
        "class": {
          "system": "http://terminology.hl7.org/CodeSystem/v3-ActCode",
          "code": "AMB",
          "display": "Ambulatory"
        },
        "period": {
          "start": "2026-03-11T08:00:00+08:00",
          "end": "2026-03-11T09:30:00+08:00"
        },
        "reasonReference": [
          {
            "reference": "Observation/CF4-Observation-Pertinent-Past-Medical-History"
          }
        ],
        "hospitalization": {
          "dischargeDisposition": {
            "coding": [
              {
                "system": "http://terminology.hl7.org/CodeSystem/discharge-disposition",
                "code": "home",
                "display": "Discharged to home"
              }
            ]
          }
        }
      },
      "request": {
        "method": "POST",
        "url": "Encounter"
      }
    },
    {
      "fullUrl": "urn:uuid:condition",
      "resource": {
        "resourceType": "Condition",
        "meta": {
          "profile": [
            "https://nhdr.gov.ph/fhir/StructureDefinition/PH-Condition"
          ]
        },
        "subject": {
          "reference": "urn:uuid:patient"
        },
        "code": {
          "coding": [
            {
              "system": "http://hl7.org/fhir/sid/icd-10",
              "code": "I10",
              "display": "Essential (primary) hypertension"
            }
          ]
        },
        "note": [
          {
            "text": "Patient reports persistent headaches for the past 2 weeks."
          },
          {
            "text": "Past medical history includes type 2 diabetes mellitus."
          }
        ]
      },
      "request": {
        "method": "POST",
        "url": "Condition"
      }
    },
    {
      "fullUrl": "urn:uuid:observation-1",
      "resource": {
        "resourceType": "Observation",
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
              "code": "57075-4",
              "display": "Pregnancy history panel"
            }
          ]
        },
        "component": [
          {
            "code": {
              "text": "OB/GYN History (G)"
            },
            "valueInteger": 3
          },
          {
            "code": {
              "text": "OB/GYN History (P)"
            },
            "valueInteger": 2
          },
          {
            "code": {
              "text": "OB/GYN History (P)(T)"
            },
            "valueInteger": 1
          },
          {
            "code": {
              "text": "OB/GYN History (P)(P)"
            },
            "valueInteger": 1
          },
          {
            "code": {
              "text": "OB/GYN History (P)(A)"
            },
            "valueInteger": 0
          },
          {
            "code": {
              "text": "OB/GYN History (P)(L)"
            },
            "valueInteger": 2
          },
          {
            "code": {
              "text": "OB/GYN History - LMP"
            },
            "valueDateTime": "2026-02-01"
          }
        ],
        "dataAbsentReason": {
          "coding": [
            {
              "system": "http://terminology.hl7.org/CodeSystem/data-absent-reason",
              "code": "not-applicable"
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
      "fullUrl": "urn:uuid:observation-2",
      "resource": {
        "resourceType": "Observation",
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
              "code": "75325-1",
              "display": "Pertinent signs and symptoms on admission"
            }
          ]
        },
        "component": [
          {
            "code": {
              "text": "Altered mental sensorium"
            },
            "valueBoolean": true
          },
          {
            "code": {
              "text": "Abdominal cramp/pain"
            },
            "valueBoolean": true
          },
          {
            "code": {
              "text": "Anorexia"
            },
            "valueBoolean": false
          },
          {
            "code": {
              "text": "Bleeding gum"
            },
            "valueBoolean": false
          },
          {
            "code": {
              "text": "Body weakness"
            },
            "valueBoolean": true
          }
        ]
      },
      "request": {
        "method": "POST",
        "url": "Observation"
      }
    },
    {
      "fullUrl": "urn:uuid:observation-3",
      "resource": {
        "resourceType": "Observation",
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
              "code": "29545-1",
              "display": "Physical findings on admission"
            }
          ]
        },
        "component": [
          {
            "code": {
              "coding": [
                {
                  "system": "http://loinc.org",
                  "code": "8302-2",
                  "display": "Body height"
                }
              ]
            },
            "valueQuantity": {
              "value": 160,
              "unit": "cm"
            }
          },
          {
            "code": {
              "coding": [
                {
                  "system": "http://loinc.org",
                  "code": "29463-7",
                  "display": "Body weight"
                }
              ]
            },
            "valueQuantity": {
              "value": 65,
              "unit": "kg"
            }
          },
          {
            "code": {
              "coding": [
                {
                  "system": "http://loinc.org",
                  "code": "80313-0",
                  "display": "Mental status - level of consciousness"
                }
              ]
            },
            "valueString": "Awake and alert"
          },
          {
            "code": {
              "coding": [
                {
                  "system": "http://loinc.org",
                  "code": "85354-9",
                  "display": "Blood pressure panel"
                }
              ]
            },
            "valueString": "120/80 mmHg"
          },
          {
            "code": {
              "coding": [
                {
                  "system": "http://loinc.org",
                  "code": "8867-4",
                  "display": "Heart rate"
                }
              ]
            },
            "valueQuantity": {
              "value": 82,
              "unit": "beats/min"
            }
          },
          {
            "code": {
              "coding": [
                {
                  "system": "http://loinc.org",
                  "code": "9279-1",
                  "display": "Respiratory rate"
                }
              ]
            },
            "valueQuantity": {
              "value": 20,
              "unit": "breaths/min"
            }
          },
          {
            "code": {
              "coding": [
                {
                  "system": "http://loinc.org",
                  "code": "8310-5",
                  "display": "Body temperature"
                }
              ]
            },
            "valueQuantity": {
              "value": 37,
              "unit": "°C"
            }
          },
          {
            "code": {
              "text": "HEENT"
            },
            "valueString": "Essentially Normal"
          },
          {
            "code": {
              "text": "Chest/Lungs"
            },
            "valueString": "Symmetrical chest expansion"
          },
          {
            "code": {
              "text": "CVS"
            },
            "valueString": "Displaced apex beat"
          },
          {
            "code": {
              "text": "Abdomen"
            },
            "valueString": "Abdominal rigidity"
          },
          {
            "code": {
              "text": "GU (IE)"
            },
            "valueString": "Blood stained on examining finger"
          },
          {
            "code": {
              "text": "Skin/Extremities"
            },
            "valueString": "Rashes/petechiae"
          },
          {
            "code": {
              "text": "Neuro Exam"
            },
            "valueString": "Essentially normal"
          }
        ]
      },
      "request": {
        "method": "POST",
        "url": "Observation"
      }
    },
    {
      "fullUrl": "urn:uuid:servicerequest",
      "resource": {
        "resourceType": "ServiceRequest",
        "meta": {
          "profile": [
            "https://nhdr.gov.ph/fhir/StructureDefinition/PH-ServiceRequest"
          ]
        },
        "status": "completed",
        "intent": "order",
        "subject": {
          "reference": "urn:uuid:patient"
        },
        "requester": {
          "reference": "urn:uuid:organization"
        },
        "reasonReference": [
          {
            "reference": "urn:uuid:observation-1"
          }
        ]
      },
      "request": {
        "method": "POST",
        "url": "ServiceRequest"
      }
    },
    {
      "fullUrl": "urn:uuid:clinicalimpression",
      "resource": {
        "resourceType": "ClinicalImpression",
        "meta": {
          "profile": [
            "https://nhdr.gov.ph/fhir/StructureDefinition/PH-ClinicalImpression"
          ]
        },
        "status": "completed",
        "description": "Clinical impression on admission based on history, pertinent signs and symptoms, and physical examination.",
        "effectiveDateTime": "2026-03-12T09:30:00+08:00",
        "subject": {
          "reference": "urn:uuid:patient"
        }
      },
      "request": {
        "method": "POST",
        "url": "ClinicalImpression"
      }
    },
    {
      "fullUrl": "urn:uuid:medicationrequest",
      "resource": {
        "resourceType": "MedicationRequest",
        "meta": {
          "profile": [
            "https://nhdr.gov.ph/fhir/StructureDefinition/PH-MedicationRequest"
          ]
        },
        "status": "active",
        "intent": "order",
        "medicationReference": {
          "reference": "urn:uuid:medication"
        },
        "subject": {
          "reference": "urn:uuid:patient"
        },
        "dosageInstruction": [
          {
            "doseAndRate": [
              {
                "doseQuantity": {
                  "value": 1,
                  "unit": "tablet"
                }
              }
            ],
            "route": {
              "coding": [
                {
                  "system": "http://snomed.info/sct",
                  "code": "26643006",
                  "display": "Oral route"
                }
              ]
            },
            "timing": {
              "repeat": {
                "frequency": 2,
                "period": 1,
                "periodUnit": "d"
              }
            }
          }
        ]
      },
      "request": {
        "method": "POST",
        "url": "MedicationRequest"
      }
    },
    {
      "fullUrl": "urn:uuid:provenance",
      "resource": {
        "resourceType": "Provenance",
        "meta": {
          "profile": [
            "https://nhdr.gov.ph/fhir/StructureDefinition/PH-Provenance"
          ]
        },
        "target": [
          {
            "reference": "urn:uuid:claim"
          }
        ],
        "recorded": "2026-02-03T09:00:00+08:00",
        "agent": [
          {
            "who": {
              "reference": "urn:uuid:practitioner"
            }
          }
        ],
        "signature": [
          {
            "type": [
              {
                "system": "urn:iso-astm:E1762-95:2013",
                "code": "1.2.840.10065.1.12.1.20",
                "display": "Electronic Signature"
              }
            ],
            "when": "2026-02-03T10:30:00+08:00",
            "who": {
              "reference": "urn:uuid:practitioner"
            },
            "data": "QkFTRTY0X1NJR05BVFVSRV9QQVRJRU5U"
          }
        ]
      },
      "request": {
        "method": "POST",
        "url": "Provenance"
      }
    },
    {
      "fullUrl": "urn:uuid:claim",
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
              "reference": "urn:uuid:obs-pmh"
            }
          },
          {
            "sequence": 2,
            "category": { "text": "Signs and Symptoms" },
            "valueReference": {
              "reference": "urn:uuid:obs-ssa"
            }
          },
          {
            "sequence": 3,
            "category": { "text": "Physical Examination" },
            "valueReference": {
              "reference": "urn:uuid:obs-pe"
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
  ]
}
```
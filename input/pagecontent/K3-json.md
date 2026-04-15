<ul class="nav nav-tabs">
    <li><a href="K3.html">Content</a></li>
    <li><a href="K3-mapping.html">Mappings</a></li>
    <li class="active"><a href="#">JSON</a></li>
</ul>

```json
  {
  "resourceType": "Bundle",
  "id": "Bundle-KonsultaAvailmentSlip",
  "type": "transaction",
  "identifier": {
    "system": "https://nhdr.gov.ph/fhir/ValueSet/form-type",
    "value": "Konsulta-Availment-Slip"
  },
  "entry": [
    {
      "fullUrl": "urn:uuid:patient-3",
      "resource": {
        "resourceType": "Patient",
        "id": "K1-Patient",
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
    "fullUrl": "urn:uuid:encounter-3",
    "resource": {
        "resourceType": "Encounter",
        "id": "K3-Encounter",
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
        "class":[
        {
            "system": "http://terminology.hl7.org/CodeSystem/v3-ActCode",
            "code": "AMB"
        }
        ],
        "status": "booked",
    },
    "request": {
        "method": "POST",
        "url": "Encounter"
    }
    },
    {
    "fullUrl": "urn:uuid:claim-3",
    "resource": {
        "resourceType": "Claim",
        "id": "K3-Claim",
        "meta": {
        "profile": [
            "https://nhdr.gov.ph/fhir/StructureDefinition/PH-Claim"
        ]
        },
        "identifier": [
            {
                "system": "https://nhdr.gov.ph/fhir/Identifier/claim-id",
                "value": "CLM-0001"
            }
        ],
        "status": "active",
        "type": {
        "coding": [
            {
            "system": "http://terminology.hl7.org/CodeSystem/claim-type",
            "code": "professional",
            "display": "Professional"
            }
        ],
        "text": "Professional Claim"
        },
        "use": "claim",
        "created": "2026-03-01T10:15:00+08:00",
        "priority": {
        "coding": [
            {
            "system": "http://terminology.hl7.org/CodeSystem/processpriority",
            "code": "normal",
            "display": "Normal"
            }
        ]
        },
        "extension": [
        {
            "url": "https://nhdr.gov.ph/fhir/StructureDefinition/EncounterExtension",
            "valueReference": {
            "reference": "urn:uuid:encounter-3"
            }
        }
        ],
        "provider": {
            "reference": "Organization/22"
        },
        "patient": {
            "reference": "urn:uuid:patient-3"
        },
        "careTeam": [
        {
            "sequence": 1,
            "provider": {
            "reference": "Practitioner/1"
            }
        }
        ],

        "insurance": [
        {
            "sequence": 1,
            "focal": true,
            "coverage": {
            "reference": "Coverage/30"
            }
        }
        ],
        "item": [
        {
            "sequence": 1,
            "servicedDate": "2026-03-01",
            "productOrService": {
            "coding": [
                {
                "system": "https://nhdr.gov.ph/fhir/CodeSystem/PH-ItemCode",
                "code": "CONSULT",
                "display": "Consultation Service"
                }
            ],
            "text": "Consultation"
            }
        }
        ]
        },
        "request": {
            "method": "POST",
            "url": "Claim"
        }
        },
        {
        "fullUrl": "urn:uuid:appointment-3",
        "resource": {
            "resourceType": "Appointment",
            "id": "K3-Appointment",
            "meta": {
            "profile": [
                "https://nhdr.gov.ph/fhir/StructureDefinition/PH-Appointment"
            ]
            },
            "identifier": [
              {
                "system": "https://nhdr.gov.ph/fhir/Identifier/appointment-id",
                "value": "K2-APPT-0001"
              }
            ],
            "status": "booked",
            "participant": [
              {
                "status": "accepted"
              }
            ]
        },
        "request": {
            "method": "POST",
            "url": "Appointment"
        }
      },
      {
        "fullUrl": "urn:uuid:practitioner-3",
        "resource": {
            "resourceType": "Practitioner",
            "id": "K3-Practitioner",
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
          ],
        },
        "request": {
            "method": "POST",
            "url": "Practitioner"
        }
      },
      {
      "fullUrl": "urn:uuid:provenance-3",
      "resource": {
        "resourceType": "Provenance",
        "id": "K3-Provenance",
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
                "reference": "urn:uuid:patient-3",
              },
              "data": "QkFTRTY0X1NJR05BVFVSRV9QQVRJRU5U",
            }
          },
        ]
      },
      "request": {
        "method": "POST",
        "url": "Provenance"
      }
    },
    {
      "fullUrl": "urn:uuid:questionnaireresponse-3",
      "resource": {
        "resourceType": "QuestionnaireResponse",
        "id": "K3-QuestionnaireResponse",
        "meta": {
          "profile": [
            "https://nhdr.gov.ph/fhir/StructureDefinition/PH-QuestionnaireResponse"
          ]
        },
      "status": "completed",
      "item": [
      {
        "linkId": "K3-Q1",
        "answer": [
          {
            "valueBoolean": true
          }
        ]
      },
      {
        "linkId": "K3-Q2",
        "answer": [
          {
            "valueBoolean": true
          }
        ]
      },
      {
        "linkId": "K3-Q3",
        "answer": [
          {
            "valueBoolean": true
          }
        ]
      },
      {
        "linkId": "K3-Q4",
        "answer": [
          {
            "valueString": "Very satisfied"
          }
        ]
      },
      {
        "linkId": "K3-Q5",
        "answer": [
          {
            "valueString": "The staff were courteous and the service was fast."
          }
        ]
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
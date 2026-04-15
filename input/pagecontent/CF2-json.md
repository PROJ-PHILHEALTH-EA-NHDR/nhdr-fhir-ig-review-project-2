<ul class="nav nav-tabs">
    <li><a href="CF2.html">Content</a></li>
    <li><a href="CF2-mapping.html">Mappings</a></li>
    <li class="active"><a href="#">JSON</a></li>
</ul>

```json  
{
  "resourceType": "Bundle",
  "id": "Bundle-ClaimsForm2",
  "type": "transaction",
  "identifier": {
    "system": "http://nhdr.gov.ph/fhir/ValueSet-form-type",
    "value": "CF2"
  },
  "entry": [
    {
      "fullUrl": "urn:uuid:CF2-Patient",
      "resource": {
        "resourceType": "Patient",
        "meta": {
          "profile": [
            "https://nhdr.gov.ph/fhir/StructureDefinition/PH-Patient"
          ]
        },
        "name": [
          {
            "family": "Doe",
            "given": [
              "John",
              "Harris"
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
      "fullUrl": "urn:uuid:CF2-RelatedPerson",
      "resource": {
        "resourceType": "RelatedPerson",
        "meta": {
          "profile": [
            "https://nhdr.gov.ph/fhir/StructureDefinition/PH_RelatedPerson"
          ]
        },
        "patient": {
          "reference": "urn:uuid:CF2-Patient"
        },
        "relationship": [
          {
            "coding": [
              {
                "system": "http://terminology.hl7.org/CodeSystem/v3-RoleCode",
                "code": "MTH",
                "display": "mother"
              }
            ]
          }
        ],
        "name": [
          {
            "family": "Dela Cruz",
            "given": [
              "Maria"
            ]
          }
        ]
      },
      "request": {
        "method": "POST",
        "url": "RelatedPerson"
      }
    },
    {
      "fullUrl": "urn:uuid:CF2-Organization",
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
              "San Roque",
              "Tarlac City",
              "Tarlac"
            ],
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
        ],
        "contact": [
          {
            "name": {
              "text": "Dr. Maria Santos"
            }
          }
        ]
      },
      "request": {
        "method": "POST",
        "url": "Organization"
      }
    },
    {
      "fullUrl": "urn:uuid:CF2-Encounter",
      "resource": {
        "resourceType": "Encounter",
        "meta": {
          "profile": [
            "https://nhdr.gov.ph/fhir/StructureDefinition/PH-Encounter"
          ]
        },
        "status": "booked",
        "class": {
          "system": "http://terminology.hl7.org/CodeSystem/v3-ActCode",
          "code": "AMB"
        },
        "period": {
          "start": "2024-07-18T08:00:00+08:00",
          "end": "2024-07-18T10:00:00+08:00"
        },
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
        },
        "serviceProvider": {
          "reference": "urn:uuid:CF2-Organization"
        }
      },
      "request": {
        "method": "POST",
        "url": "Encounter"
      }
    },
    {
      "fullUrl": "urn:uuid:CF2-Observation",
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
              "code": "81247-9",
              "display": "Preoperative assessment"
            }
          ]
        },
        "subject": {
          "reference": "urn:uuid:CF2-Patient"
        },
        "valueCodeableConcept": {
          "text": "Subject for Surgery"
        }
      },
      "request": {
        "method": "POST",
        "url": "Observation"
      }
    },
    {
      "fullUrl": "urn:uuid:CF2-Procedure",
      "resource": {
        "resourceType": "Procedure",
        "meta": {
          "profile": [
            "https://nhdr.gov.ph/fhir/StructureDefinition/PH-Procedure"
          ]
        },
        "status": "completed",
        "subject": {
          "reference": "urn:uuid:CF2-Patient"
        },
        "code": {
          "coding": [
            {
              "system": "https://nhdr.gov.ph/fhir/ValueSet/ProcedureCodeVS",
              "code": "10060",
              "display": "INCISION AND DRAINAGE OF ABSCESS"
            }
          ]
        },
        "bodySite": [
          {
            "coding": [
              {
                "system": "http://snomed.info/sct",
                "code": "66754008",
                "display": "Appendix structure"
              }
            ]
          }
        ]
      },
      "request": {
        "method": "POST",
        "url": "Procedure"
      }
    },
    {
      "fullUrl": "urn:uuid:CF2-ServiceRequest",
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
          "reference": "urn:uuid:CF2-Patient"
        },
        "reasonReference": [
          {
            "reference": "urn:uuid:CF2-Observation"
          }
        ],
        "requester": {
          "reference": "Organization/33"
        },
        "performer": [
          {
            "reference": "urn:uuid:CF2-Organization"
          }
        ]
      },
      "request": {
        "method": "POST",
        "url": "ServiceRequest"
      }
    },
    {
      "fullUrl": "urn:uuid:CF2-Practitioner",
      "resource": {
        "resourceType": "Practitioner",
        "meta": {
          "profile": [
            "https://nhdr.gov.ph/fhir/StructureDefinition/PH-Practitioner"
          ]
        },
        "identifier": [
          {
            "system": "https://prc.gov.ph",
            "value": "1234567"
          }
        ],
        "name": [
          {
            "family": "Santos",
            "given": [
              "Maria"
            ],
            "suffix": [
              "MD"
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
      "fullUrl": "urn:uuid:CF2-Coverage",
      "resource": {
        "resourceType": "Coverage",
        "meta": {
          "profile": [
            "https://nhdr.gov.ph/fhir/StructureDefinition/PH-Coverage"
          ]
        },
        "status": "active",
        "type": {
          "coding": [
            {
              "system": "http://terminology.hl7.org/CodeSystem/v3-ActCode",
              "code": "EHCPOL",
              "display": "extended healthcare"
            }
          ]
        },
        "beneficiary": {
          "reference": "urn:uuid:CF2-Patient"
        },
        "payor": [
          {
            "reference": "urn:uuid:CF2-Organization"
          }
        ],
        "costToBeneficiary": [
          {
            "type": {
              "coding": [
                {
                  "system": "http://terminology.hl7.org/CodeSystem/coverage-copay-type",
                  "code": "copay",
                  "display": "Copayment"
                }
              ]
            },
            "valueMoney": {
              "value": 500,
              "currency": "PHP"
            }
          }
        ]
      },
      "request": {
        "method": "POST",
        "url": "Coverage"
      }
    },
    {
      "fullUrl": "urn:uuid:CF2-Questionnaire",
      "resource": {
        "resourceType": "Questionnaire",
        "meta": {
          "profile": [
            "https://nhdr.gov.ph/fhir/StructureDefinition/PH-Questionnaire"
          ]
        },
        "status": "active",
        "item": [
          {
            "linkId": "CF2-Q1",
            "text": "A. Certification of Consumption of Benefits (Y/N)",
            "type": "boolean"
          }
        ]
      },
      "request": {
        "method": "POST",
        "url": "Questionnaire"
      }
    },
    {
      "fullUrl": "urn:uuid:CF2-QuestionnaireResponse",
      "resource": {
        "resourceType": "QuestionnaireResponse",
        "meta": {
          "profile": [
            "https://nhdr.gov.ph/fhir/StructureDefinition/PH-QuestionnaireResponse"
          ]
        },
        "status": "completed",
        "item": [
          {
            "linkId": "CF2-Q1",
            "answer": [
              {
                "valueBoolean": true
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
      "fullUrl": "urn:uuid:CF2-Provenance",
      "resource": {
        "resourceType": "Provenance",
        "meta": {
          "profile": [
            "https://nhdr.gov.ph/fhir/StructureDefinition/PH-Provenance"
          ]
        },
        "target": [
          {
            "reference": "urn:uuid:CF2-Claim"
          }
        ],
        "recorded": "2026-02-03T09:00:00+08:00",
        "agent": [
          {
            "who": {
              "reference": "urn:uuid:CF2-Practitioner"
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
              "reference": "urn:uuid:CF2-Practitioner"
            },
            "data": "U1VCTUlUU0lPTl9QUkFDVElUSU9ORVJfU0lHTg==",
            "extension": [
              {
                "url": "https://nhdr.gov.ph/fhir/StructureDefinition/SignaturePosition",
                "valueString": "Attending Physician"
              }
            ]
          },
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
              "reference": "urn:uuid:CF2-Patient"
            },
            "data": "U1VCTUlUU0lPTl9QQVRJRU5UX1NJR04="
          },
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
              "reference": "urn:uuid:CF2-RelatedPerson"
            },
            "data": "U1VCTUlUU0lPTl9SRUxBVEVEX1NJR04="
          }
        ]
      },
      "request": {
        "method": "POST",
        "url": "Provenance"
      }
    },
    {
      "fullUrl": "urn:uuid:CF2-Claim",
      "resource": {
        "resourceType": "Claim",
        "meta": {
          "profile": [
            "https://nhdr.gov.ph/fhir/StructureDefinition/PH-Claim"
          ]
        },
        "identifier": [
          {
            "system": "https://philhealth.gov.ph/claim",
            "value": "CLM-2026-00001"
          }
        ],
        "status": "active",
        "type": {
          "coding": [
            {
              "system": "http://terminology.hl7.org/CodeSystem/claim-type",
              "code": "institutional",
              "display": "Institutional"
            }
          ]
        },
        "use": "claim",
        "created": "2026-02-03T08:00:00+08:00",
        "priority": {
          "coding": [
            {
              "system": "http://terminology.hl7.org/CodeSystem/processpriority",
              "code": "normal",
              "display": "Normal"
            }
          ]
        },
        "provider": {
          "reference": "urn:uuid:CF2-Organization"
        },
        "patient": {
          "reference": "urn:uuid:CF2-Patient"
        },
        "referral": {
          "reference": "urn:uuid:CF2-ServiceRequest"
        },
        "extension": [
          {
            "url": "https://nhdr.gov.ph/fhir/StructureDefinition/EncounterExtension",
            "valueReference": {
              "reference": "urn:uuid:CF2-Encounter"
            }
          }
        ],
        "insurance": [
          {
            "sequence": 1,
            "focal": true,
            "coverage": {
              "reference": "urn:uuid:CF2-Coverage"
            }
          }
        ],
        "total": {
          "value": 15000,
          "currency": "PHP"
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
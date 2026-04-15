<ul class="nav nav-tabs">
    <li><a href="K1.html">Content</a></li>
    <li><a href="K1-mapping.html">Mappings</a></li>
    <li class="active"><a href="#">JSON</a></li>
</ul>

```json
{
  "resourceType": "Bundle",
  "id": "Bundle-KonsultaRegistrationForm",
  "type": "transaction",
  "identifier": {
    "system": "http://nhdr.gov.ph/fhir/ValueSet-form-type",
    "value": "Konsulta-Registration"
  },
  "entry": [
    {
      "fullUrl": "urn:uuid:patient-1",
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
            ]
          }
        ],
        "birthDate": "1990-05-10",
        "address": [
          {
            "extension": [
              {
                "url": "https://nhdr.gov.ph/fhir/StructureDefinition/Province",
                "valueCoding": {
                  "system": "https://nhdr.gov.ph/fhir/ValueSet/ProvinceVS",
                  "code": "036900000",
                  "display": "Tarlac"
                }
              },
              {
                "url": "https://nhdr.gov.ph/fhir/StructureDefinition/CityMunicipality",
                "valueCoding": {
                  "system": "https://nhdr.gov.ph/fhir/ValueSet/CityVS",
                  "code": "036916000",
                  "display": "Tarlac City"
                }
              },
              {
                "url": "https://nhdr.gov.ph/fhir/StructureDefinition/Barangay",
                "valueCoding": {
                  "system": "https://nhdr.gov.ph/fhir/ValueSet/BarangayVS",
                  "code": "036916001",
                  "display": "San Roque"
                }
              }
            ]
          }
        ],
        "telecom": [
          {
            "system": "phone",
            "value": "09456469323"
          }
        ],
        "generalPractitioner": [
          {
            "reference": "urn:uuid:organization-1",
            "display": "Philippine General Hospital"
          }
        ]
      },
      "request": {
        "method": "POST",
        "url": "Patient"
      }
    },
    {
      "fullUrl": "urn:uuid:organization-1",
      "resource": {
        "resourceType": "Organization",
        "id": "K1-Organization",
        "meta": {
          "profile": [
            "https://nhdr.gov.ph/fhir/StructureDefinition/PH-Organization"
          ]
        },
        "name": "Philippine General Hospital",
        "address": [
          {
            "extension": [
              {
                "url": "https://nhdr.gov.ph/fhir/StructureDefinition/Province",
                "valueCoding": {
                  "system": "https://nhdr.gov.ph/fhir/ValueSet/ProvinceVS",
                  "code": "036900000",
                  "display": "Tarlac"
                }
              },
              {
                "url": "https://nhdr.gov.ph/fhir/StructureDefinition/CityMunicipality",
                "valueCoding": {
                  "system": "https://nhdr.gov.ph/fhir/ValueSet/CityVS",
                  "code": "036916000",
                  "display": "Tarlac City"
                }
              },
              {
                "url": "https://nhdr.gov.ph/fhir/StructureDefinition/Barangay",
                "valueCoding": {
                  "system": "https://nhdr.gov.ph/fhir/ValueSet/BarangayVS",
                  "code": "036916001",
                  "display": "San Roque"
                }
              }
            ],
            "contact": [
              {
                "name": {
                  "text": "Dr. Maria Santos"
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
      "fullUrl": "urn:uuid:questionnaireresponse-1",
      "resource": {
        "resourceType": "QuestionnaireResponse",
        "id": "K1-QuestionnaireResponse",
        "meta": {
          "profile": [
            "https://nhdr.gov.ph/fhir/StructureDefinition/PH-QuestionnaireResponse"
          ]
        },
        "status": "completed",
        "item": [
          {
            "linkId": "K1-Q1",
            "answer": [
              {
                "valueBoolean": true
              }
            ]
          },
          {
            "linkId": "K1-Q2",
            "answer": [
              {
                "valueBoolean": true
              }
            ]
          },
          {
            "linkId": "K1-Q3",
            "answer": [
              {
                "valueBoolean": false
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
      "fullUrl": "urn:uuid:provenance-1",
      "resource": {
        "resourceType": "Provenance",
        "id": "K1-Provenance",
        "meta": {
          "profile": [
            "https://nhdr.gov.ph/fhir/StructureDefinition/PH-Provenance"
          ]
        },
        "target": [
          {
            "reference": "urn:uuid:patient-1"
          }
        ],
        "recorded": "2026-02-03T09:00:00+08:00",
        "agent": [
          {
            "who": {
              "reference": "urn:uuid:organization-1"
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
                "reference": "urn:uuid:patient-1",
                "display": "Juan Santos Dela Cruz"
              },
              "data": "QkFTRTY0X1NJR05BVFVSRV9QQVRJRU5U"
            }
          },
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
                "reference": "urn:uuid:practitioner-1",
                "display": "Ms. Maria Santos"
              },
              "onBehalfOf": {
                "reference": "urn:uuid:organization-1",
                "display": "Philippine General Hospital"
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
      "fullUrl": "urn:uuid:practitioner-1",
      "resource": {
        "resourceType": "Practitioner",
        "id": "K1-Practitioner",
        "meta": {
          "profile": [
            "https://nhdr.gov.ph/fhir/StructureDefinition/PH-Practitioner"
          ]
        },
        "name": [
          {
            "family": "Santos",
            "given": [
              "Maria"
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
      "fullUrl": "urn:uuid:coverage-1",
      "resource": {
        "resourceType": "Coverage",
        "id": "K1-Coverage",
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
          ],
        },
        "beneficiary": {
          "reference": "urn:uuid:patient-1"
        },
        "payor": [
          {
            "reference": "Organization/23"
          }
        ]
      },
      "request": {
        "method": "POST",
        "url": "Coverage"
      }
    },
    {
      "fullUrl": "urn:uuid:enrollmentrequest-1",
      "resource": {
        "resourceType": "EnrollmentRequest",
        "id": "K1-EnrollmentRequest",
        "meta": {
          "profile": [
            "https://nhdr.gov.ph/fhir/StructureDefinition/PH-EnrollmentRequest"
          ]
        },
        "identifier": [
          {
            "system": "https://nhdr.gov.ph/identifiers/enrollment-request",
            "value": "ER-2026-0001"
          }
        ],
        "created": "2026-02-04",
        "insurer": {
          "reference": "Organization/23",
          "display": "PhilHealth"
        },
        "candidate": {
          "reference": "urn:uuid:patient-1",
          "display": "Juan Dela Cruz"
        },
        "coverage": {
          "reference": "urn:uuid:coverage-1",
          "display": "PhilHealth Konsulta Coverage"
        }
      },
      "request": {
        "method": "POST",
        "url": "EnrollmentRequest"
      }
    }
  ]
}

```

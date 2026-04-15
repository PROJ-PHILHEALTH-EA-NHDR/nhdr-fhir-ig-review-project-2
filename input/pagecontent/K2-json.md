<ul class="nav nav-tabs">
    <li><a href="K2.html">Content</a></li>
    <li><a href="K2-mapping.html">Mappings</a></li>
    <li class="active"><a href="#">JSON</a></li>
</ul>

```json
{
  "resourceType": "Bundle",
  "id": "Bundle-KonsultaRequestforAuthorizationTransactionCodeForm",
  "type": "transaction",
  "identifier": {
    "system": "http://nhdr.gov.ph/fhir/ValueSet-form-type",
    "value": "KonsultaRequestforAuthorizationTransactionCode"
  },
  "entry": [
    {
      "fullUrl": "urn:uuid:patient-2",
      "resource": {
        "resourceType": "Patient",
        "id": "K2-Patient",
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
        ]
      },
      "request": {
        "method": "POST",
        "url": "Patient"
      }
    },
    {
      "fullUrl": "urn:uuid:organization-2",
      "resource": {
        "resourceType": "Organization",
        "id": "K2-Organization",
        "meta": {
          "profile": [
            "https://nhdr.gov.ph/fhir/StructureDefinition/PH-Organization"
          ]
        },
        "name": "Philippine Health Insurance Corporation",
        "contact": [
          {
            "name": {
              "text": "Mr. Balim bing"
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
      "fullUrl": "urn:uuid:provenance-2",
      "resource": {
        "resourceType": "Provenance",
        "id": "K2-Provenance",
        "meta": {
          "profile": [
            "https://nhdr.gov.ph/fhir/StructureDefinition/PH-Provenance"
          ]
        },
        "target": [
          {
            "reference": "urn:uuid:patient-2"
          }
        ],
        "recorded": "2026-02-03T09:00:00+08:00",
        "agent": [
          {
            "who": {
              "reference": "urn:uuid:organization-2"
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
                "reference": "urn:uuid:patient-2",
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
                "reference": "urn:uuid:organization-2",
                "display": "Mr. Balim Bing"
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
      "fullUrl": "urn:uuid:appointment-2",
      "resource": {
        "resourceType": "Appointment",
        "id": "K2-Appointment",
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
        "created": "2026-03-01T08:30:00+08:00",
        "participant": [
          {
            "actor": {
              "reference": "urn:uuid:patient-2"
            },
            "status": "accepted"
          }
        ]
      },
      "request": {
        "method": "POST",
        "url": "Appointment"
      }
    }
  ]
}
```
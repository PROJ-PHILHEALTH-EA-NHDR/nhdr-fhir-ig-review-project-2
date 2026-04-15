<ul class="nav nav-tabs">
    <li><a href="CF3.html">Content</a></li>
    <li><a href="CF3-mapping.html">Mappings</a></li>
    <li class="active"><a href="#">Sample JSON Bundles</a></li>
</ul>

```json
    {
  "resourceType": "Bundle",
  "id": "Bundle-ClaimsForm3",
  "type": "transaction",
  "identifier": {
    "system": "http://nhdr.gov.ph/fhir/ValueSet-form-type",
    "value": "CF3"
  },
  "entry": [
    {
      "fullUrl": "urn:uuid:patient",
      "resource": {
        "resourceType": "Patient",
        "id": "CF3-Patient",
        "meta": {
          "profile": [
            "https://nhdr.gov.ph/fhir/StructureDefinition/PH-Patient"
          ]
        },
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
        "id": "CF2-Org",
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
            "value": "AN55555"
          }
        ],
        "name": "Pasig General Hospital"
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
        "id": "CF3-Encounter",
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
        "reasonReference": [
          {
            "reference": "urn:uuid:physical-exam"
          }
        ]
      },
      "request": {
        "method": "POST",
        "url": "Encounter"
      },
      {
      "fullUrl": "urn:uuid:physical-exam",
      "resource": {
        "resourceType": "Observation",
        "id": "CF3-Observation-Physical-Examination",
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
              "display": "Physical examination"
            }
          ]
        },
        "valueString": "Patient complains of severe headache",
        "component": [
          {
            "code": {
              "text": "General Survey"
            },
            "valueString": "Patient appears weak"
          },
          {
            "code": {
              "text": "Vital Signs - BP"
            },
            "valueString": "120/80 mmHg"
          },
          {
            "code": {
              "text": "Vital Signs - CR"
            },
            "valueString": "78 bpm"
          },
          {
            "code": {
              "text": "Vital Signs - RR"
            },
            "valueString": "18 breaths/min"
          },
          {
            "code": {
              "text": "Vital Signs - Temperature"
            },
            "valueString": "36.8°C"
          },
          {
            "code": {
              "text": "Abdomen"
            },
            "valueString": "Soft, non-tender, no organomegaly"
          },
          {
            "code": {
              "text": "HEENT"
            },
            "valueString": "Pupils equal, round, reactive to light; oropharynx clear"
          },
          {
            "code": {
              "text": "GU (IE)"
            },
            "valueString": "Normal external genitalia; no masses or tenderness"
          },
          {
            "code": {
              "text": "Chest/Lungs"
            },
            "valueString": "Clear to auscultation bilaterally; no wheezes or crackles"
          },
          {
            "code": {
              "text": "Skin/Extremities"
            },
            "valueString": "Skin warm and dry; no rashes; peripheral pulses palpable"
          },
          {
            "code": {
              "text": "CVS"
            },
            "valueString": "Heart sounds normal; regular rate and rhythm; no murmurs"
          },
          {
            "code": {
              "text": "Neuro Examination"
            },
            "valueString": "Alert, cranial nerves II-XII intact; motor and sensory exam normal"
          }
        ]
      },
      "request": {
        "method": "POST",
        "url": "Observation"
      }
    },
     {
      "fullUrl": "urn:uuid:pertinent-lab",
      "resource": {
        "resourceType": "Observation",
        "id": "CF3-Observation-Pertinent-Laboratory",
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
              "code": "26436-6",
              "display": "Pertinent Laboratory"
            }
          ]
        },
        "component": [
          {
            "code": {
              "text": "CBC"
            },
            "valueString": "Normal"
          }
        ]
      },
      "request": {
        "method": "POST",
        "url": "Observation"
      }
    },
    {
      "fullUrl": "urn:uuid:pregnancy-risk",
      "resource": {
        "resourceType": "Observation",
        "id": "CF3-Observation-Pregnancy-Risk-Assessment",
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
              "code": "82810-3",
              "display": "Pregnancy risk assessment"
            }
          ]
        },
        "component": [
          {
            "code": {
              "text": "Vital signs"
            },
            "interpretation": [
              {
                "text": "Normal"
              }
            ]
          },
          {
            "code": {
              "text": "Pregnancy Low Risk"
            },
            "valueBoolean": true
          },
          {
            "code": {
              "text": "Menstrual History - Last Menstrual Period (LMP)"
            },
            "valueDateTime": "2026-02-10"
          },
          {
            "code": {
              "text": "Menstrual History - Age of Menarche"
            },
            "valueInteger": 13
          },
          {
            "code": {
              "text": "Obstetric History (G)"
            },
            "valueInteger": 2
          },
          {
            "code": {
              "text": "Obstetric History (P)"
            },
            "valueInteger": 1
          },
          {
            "code": {
              "text": "Obstetric History (P)[T]"
            },
            "valueInteger": 1
          },
          {
            "code": {
              "text": "Obstetric History (P)[P]"
            },
            "valueInteger": 0
          },
          {
            "code": {
              "text": "Obstetric History (P)[A]"
            },
            "valueInteger": 0
          },
          {
            "code": {
              "text": "Obstetric History (P)[L]"
            },
            "valueInteger": 1
          }
        ]
      },
      "request": {
        "method": "POST",
        "url": "Observation"
      }
    },
    {
      "fullUrl": "urn:uuid:obstetric-risk",
      "resource": {
        "resourceType": "Observation",
        "id": "CF3-Observation-Obstetric-Risk-Factors",
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
              "code": "82801-8",
              "display": "Obstetric risk factors"
            }
          ]
        },
        "component": [
          {
            "code": { "text": "Multiple pregnancy" },
            "valueBoolean": false
          },
          {
            "code": { "text": "Ovarian cyst" },
            "valueBoolean": true
          },
          {
            "code": { "text": "Myoma uteri" },
            "valueBoolean": false
          },
          {
            "code": { "text": "Placenta previa" },
            "valueBoolean": false
          },
          {
            "code": { "text": "History of 3 miscarriages" },
            "valueBoolean": true
          },
          {
            "code": { "text": "History of stillbirth" },
            "valueBoolean": false
          },
          {
            "code": { "text": "History of pre-eclampsia" },
            "valueBoolean": true
          },
          {
            "code": { "text": "History of eclampsia" },
            "valueBoolean": false
          },
          {
            "code": { "text": "Premature contraction" },
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
      "fullUrl": "urn:uuid:estimated-delivery-date",
      "resource": {
        "resourceType": "Observation",
        "id": "CF3-Observation-Estimated-Delivery-Date",
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
              "code": "11778-8",
              "display": "Delivery date Estimated"
            }
          ]
        },
        "effectiveDateTime": "2026-03-10"
      },
      "request": {
        "method": "POST",
        "url": "Observation"
      }
    },
    {
      "fullUrl": "urn:uuid:age-of-gestation",
      "resource": {
        "resourceType": "Observation",
        "id": "CF3-Observation-Age-of-Gestation",
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
              "code": "18185-9",
              "display": "Age of Gestation"
            }
          ]
        },
        "valueQuantity": {
          "value": 20,
          "unit": "weeks"
        }
      },
      "request": {
        "method": "POST",
        "url": "Observation"
      }
    },
    {
      "fullUrl": "urn:uuid:weight-vital-signs",
      "resource": {
        "resourceType": "Observation",
        "id": "CF3-Observation-Weight-and-Vital-Signs",
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
              "code": "85353-1",
              "display": "Vital signs panel"
            }
          ]
        },
        "component": [
          {
            "code": {
              "text": "Weight"
            },
            "valueQuantity": {
              "value": 65,
              "unit": "kg"
            }
          },
          {
            "code": {
              "text": "Cardiac Rate"
            },
            "valueQuantity": {
              "value": 80,
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
              "text": "Blood Pressure"
            },
            "valueString": "120/80 mmHg"
          },
          {
            "code": {
              "text": "Temperature"
            },
            "valueQuantity": {
              "value": 36.8,
              "unit": "°C"
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
      "fullUrl": "urn:uuid:pregnancy-status-panel",
      "resource": {
        "resourceType": "Observation",
        "id": "CF3-Observation-Pregnancy-status-panel",
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
              "display": "Pregnancy status panel"
            }
          ]
        },
        "component": [
          {
            "code": {
              "text": "Maternal Outcome - Obstetric Index"
            },
            "valueString": "G2P1 (1-0-0-1)"
          },
          {
            "code": {
              "text": "Pregnancy Uterine - AOG by LMP"
            },
            "valueString": "20 weeks"
          },
          {
            "code": {
              "text": "Pregnancy Uterine - Manner of Delivery"
            },
            "valueString": "Normal Spontaneous Vaginal Delivery"
          },
          {
            "code": {
              "text": "Pregnancy Uterine - Presentation"
            },
            "valueString": "Cephalic"
          }
        ]
      },
      "request": {
        "method": "POST",
        "url": "Observation"
      }
    },
    {
      "fullUrl": "urn:uuid:birth-outcome-panel",
      "resource": {
        "resourceType": "Observation",
        "id": "CF3-Observation-Birth-Outcome-Panel",
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
              "code": "57076-2",
              "display": "Birth outcome panel"
            }
          ]
        },
        "component": [
          {
            "code": {
              "text": "Birth Outcome - Fetal Outcome"
            },
            "valueString": "Live birth"
          },
          {
            "code": {
              "text": "Birth Outcome - Sex"
            },
            "valueString": "Male"
          },
          {
            "code": {
              "text": "Birth Outcome - Birth Weight (grm)"
            },
            "valueQuantity": {
              "value": 3200,
              "unit": "g"
            }
          },
          {
            "code": {
              "text": "Birth Outcome - APGAR Score"
            },
            "valueInteger": 9
          }
        ]
      },
      "request": {
        "method": "POST",
        "url": "Observation"
      }
    },
     {
      "fullUrl": "urn:uuid:clinical-impression",
      "resource": {
        "resourceType": "ClinicalImpression",
        "id": "CF3-ClinicalImpression",
        "meta": {
          "profile": [
            "https://nhdr.gov.ph/fhir/StructureDefinition/PH-ClinicalImpression"
          ]
        },
        "status": "completed",
        "description": "Patient admitted for observation and management of hypertension. During the ward stay, vital signs stabilized, medications were adjusted, and patient responded well to treatment. No complications noted. Discharged in stable condition.",
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
      "fullUrl": "urn:uuid:diagnostic-report",
      "resource": {
        "resourceType": "DiagnosticReport",
        "id": "CF3-DiagnosticReport",
        "meta": {
          "profile": [
            "https://nhdr.gov.ph/fhir/StructureDefinition/PH-DiagnosticReport"
          ]
        },
        "status": "final",
        "code": {
          "coding": [
            {
              "system": "http://hl7.org/fhir/sid/icd-10",
              "code": "D64.9",
              "display": "Anemia, unspecified"
            }
          ]
        },
        "conclusion": "Patient shows mild anemia with hemoglobin slightly below normal range; other CBC parameters within normal limits."
      },
      "request": {
        "method": "POST",
        "url": "DiagnosticReport"
      }
    },
    {
      "fullUrl": "urn:uuid:provenance",
      "resource": {
        "resourceType": "Provenance",
        "id": "CF3-Provenance",
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
              "reference": "Practitioner/K4-Practitioner"
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
              "reference": "Practitioner/K4-Practitioner"
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
    "fullUrl": "urn:uuid:questionnaire",
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
    },
    "request": {
        "method": "POST",
        "url": "Questionnaire"
    }
    },
    {
    "fullUrl": "urn:uuid:questionnaire-response",
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
    },
    "request": {
        "method": "POST",
        "url": "QuestionnaireResponse"
    }
    },
    {
      "fullUrl": "urn:uuid:claim",
      "resource": {
        "resourceType": "Claim",
        "id": "CF3-Claim",
        "meta": {
          "profile": [
            "https://nhdr.gov.ph/fhir/StructureDefinition/PH_Claim"
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
        "status": "active",
        "use": "claim",
        "type": {
          "coding": [
            {
              "system": "http://terminology.hl7.org/CodeSystem/claim-type",
              "code": "institutional",
              "display": "Institutional"
            }
          ]
        },
        "patient": {
          "reference": "urn:uuid:patient"
        },
        "provider": {
          "reference": "urn:uuid:organization"
        },
        "created": "2024-07-18",
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
            "diagnosisReference": {
              "reference": "Condition/CF2-Condition"
            }
          },
          {
            "sequence": 2,
            "diagnosisCodeableConcept": {
              "coding": [
                {
                  "system": "http://hl7.org/fhir/sid/icd-10",
                  "code": "J45.4",
                  "display": "Moderate persistent asthma"
                }
              ]
            }
          }
        ],
        "insurance": [
          {
            "sequence": 1,
            "focal": true,
            "coverage": {
              "reference": "Coverage/K1-Coverage"
            }
          }
        ],
        "item": [
          {
            "sequence": 1,
            "productOrService": {
              "text": "Maternity Care Package Service"
            },
            "servicedDate": "2024-07-18"
          }
        ]
      },
      "request": {
        "method": "POST",
        "url": "Claim"
      }
    }
  ]
}
         
```
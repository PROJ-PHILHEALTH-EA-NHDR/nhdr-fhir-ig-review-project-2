// ========== Claims Form 1-1 ========
Instance: ClaimsForm1-1
InstanceOf: Bundle
Usage: #example
* type = #transaction
* identifier.system = "http://nhdr.gov.ph/fhir/ValueSet-form-type"
* identifier.value = "CF1"
* entry[0].fullUrl = "urn:uuid:relatedperson"
* entry[=].resource = CF1-RelatedPerson
* entry[=].request.method = #POST
* entry[=].request.url = "RelatedPerson"
* entry[+].fullUrl = "urn:uuid:organization"
* entry[=].resource = CF1-Organization
* entry[=].request.method = #POST
* entry[=].request.url = "Organization"
* entry[+].fullUrl = "urn:uuid:questionnaire"
* entry[=].resource = CF1-Questionnaire
* entry[=].request.method = #POST
* entry[=].request.url = "Questionnaire"
* entry[+].fullUrl = "urn:uuid:questionnaireresponse"
* entry[=].resource = CF1-QuestionnaireResponse
* entry[=].request.method = #POST
* entry[=].request.url = "QuestionnaireResponse"
* entry[+].fullUrl = "urn:uuid:provenance"
* entry[=].resource = CF1-Provenance
* entry[=].request.method = #POST
* entry[=].request.url = "Provenance"
* entry[+].fullUrl = "urn:uuid:coverage"
* entry[=].resource = CF1-Coverage
* entry[=].request.method = #POST
* entry[=].request.url = "Coverage"
* entry[+].fullUrl = "urn:uuid:claim"
* entry[=].resource = CF1-Claim
* entry[=].request.method = #POST
* entry[=].request.url = "Claim"

Instance: CF1-RelatedPerson
InstanceOf: PH_RelatedPerson
Usage: #inline
* meta.profile = "https://nhdr.gov.ph/fhir/StructureDefinition/PH-RelatedPerson"
* identifier.type.coding.code = #NIIP
* identifier.type.text = "PhilHealth Identification Number"
* identifier.value = "PH54321"
* patient = Reference(CF1-Patient-2) "Patient"
* name.family = "Bautista"
* name.given[0] = "Lorna Mae"
* name.given[+] = "Santos"
* name.suffix = "Mrs."
* birthDate = "1971-02-11"
* address.line = "Fordham Road"
* address.extension[0].url = "https://nhdr.gov.ph/fhir/StructureDefinition/Barangay"
* address.extension[=].valueCoding = #0123456789 "Blue Ridge"
* address.extension[+].url = "https://nhdr.gov.ph/fhir/StructureDefinition/CityMunicipality"
* address.extension[=].valueCoding = #0123456 "Quezon City"
* address.extension[+].url = "https://nhdr.gov.ph/fhir/StructureDefinition/Province"
* address.extension[=].valueCoding = #01234 "Metro Manila"
* address.country = "PH"
* address.postalCode = "1110"
* extension.url = "https://nhdr.gov.ph/fhir/StructureDefinition/Sex"
* extension.valueCode = #F
* telecom[0].value = "912-00-00"
* telecom[=].system = #phone
* telecom[+].value = "0927-000-0000"
* telecom[=].system = #phone
* telecom[+].value = "lmbautista@email.com"
* telecom[=].system = #email

Instance: CF1-Organization
InstanceOf: PH_Organization
Usage: #inline
* meta.profile = "https://nhdr.gov.ph/fhir/StructureDefinition/PH-Organization"
* identifier.type.coding.code = #EN
* identifier.type.text = "PhilHealth Employer Number (PEN)"
* identifier.value = "EN15243"
* telecom.value = "080-00-00"
* name = "PhilHealth"

Instance: CF1-Provenance
InstanceOf: PH_Provenance
Usage: #inline
* meta.profile = "https://nhdr.gov.ph/fhir/StructureDefinition/PH-Provenance"
* target[0] = Reference(CF1-Claim) "Claim"
* recorded = "2026-02-03T09:00:00+08:00"
* agent[0].who = Reference(CF1-Organization) "Organization"
* signature[0].type[0].system = "urn:iso-astm:E1762-95:2013"
* signature[0].type[0].code = #1.2.840.10065.1.12.1.20
* signature[0].type[0].display = "Electronic Signature"
* signature[0].when = "2026-02-03T10:30:00+08:00"
* signature[0].who = Reference(CF1-RelatedPerson) "Related Person"
* signature[0].data = "QkFTRTY0X1NJR05BVFVSRV9QQVRJRU5U"
* signature[0].extension[0].url = "https://nhdr.gov.ph/fhir/StructureDefinition/SignatureReason"
* signature[0].extension[0].valueString = "Claim Approval"

* signature[1].type[0].system = "urn:iso-astm:E1762-95:2013"
* signature[1].type[0].code = #1.2.840.10065.1.12.1.20
* signature[1].type[0].display = "Electronic Signature"
* signature[1].when = "2026-02-03T10:30:00+08:00"
* signature[1].who = Reference(CF1-Organization) "PhilHealth Regional Office"
* signature[1].data = "QkFTRTY0X1NJR05BVFVSRV9PUkdBTklaVElPTg=="

Instance: CF1-Questionnaire
InstanceOf: PH_Questionnaire
Usage: #inline
* meta.profile = "https://nhdr.gov.ph/fhir/StructureDefinition/PH-Questionnaire"
* item[0].linkId = "CF1-Q1"
* item[=].text = "Patient is the member?"
* item[=].type = #boolean
* status = #active

Instance: CF1-QuestionnaireResponse
InstanceOf: PH_QuestionnaireResponse
Usage: #inline
* meta.profile = "https://nhdr.gov.ph/fhir/StructureDefinition/PH-QuestionnaireResponse"
* item[0].linkId = "CF1-Q1"
* item[0].answer[0].valueBoolean = true
* status = #completed

Instance: CF1-Coverage
InstanceOf: PH_Coverage
Usage: #inline
* meta.profile = "https://nhdr.gov.ph/fhir/StructureDefinition/PH-Coverage"
* policyHolder = Reference(CF1-Organization) "Organization"
* status = #active
* beneficiary = Reference(CF1-Patient-2) "Patient"
* payor[0] = Reference(CF1-Organization) "Organization"

Instance: CF1-Claim
InstanceOf: PH_Claim
Usage: #inline
* meta.profile = "https://nhdr.gov.ph/fhir/StructureDefinition/PH-Claim"
* identifier.system = "https://philhealth.gov.ph/claim"
* identifier.value = "CF1-CLM-00001"
* status = #active
* type.coding.system = "http://terminology.hl7.org/CodeSystem/claim-type"
* type.coding.code = #institutional
* type.coding.display = "Institutional"
* use = #claim
* created = "2026-02-03T08:00:00+08:00"
* provider = Reference(CF1-Organization) "Organization"
* priority.coding.system = "http://terminology.hl7.org/CodeSystem/processpriority"
* priority.coding.code = #normal
* priority.coding.display = "Normal"
* payee.type.coding.system = "http://terminology.hl7.org/CodeSystem/payeetype"
* payee.type.coding.code = #subscriber
* payee.type.coding.display = "Subscriber"
* payee.party = Reference(CF1-RelatedPerson) "RelatedPerson"
* patient = Reference(CF1-Patient-2) "Patient"
* insurance[0].sequence = 1
* insurance[0].focal = true
* insurance[0].coverage = Reference(CF1-Coverage) "Coverage"


// ========== Claims Form 1-2 ========
Instance: ClaimsForm1-2
InstanceOf: Bundle
Usage: #example
* type = #transaction
* identifier.system = "http://nhdr.gov.ph/fhir/ValueSet-form-type"
* identifier.value = "CF1"
* entry[0].fullUrl = "urn:uuid:relatedperson"
* entry[=].resource = CF1-RelatedPerson-2
* entry[=].request.method = #POST
* entry[=].request.url = "RelatedPerson"
* entry[+].fullUrl = "urn:uuid:patient"
* entry[=].resource = CF1-Patient-2
* entry[=].request.method = #POST
* entry[=].request.url = "Patient"
* entry[+].fullUrl = "urn:uuid:organization"
* entry[=].resource = CF1-Organization-2
* entry[=].request.method = #POST
* entry[=].request.url = "Organization"
* entry[+].fullUrl = "urn:uuid:questionnaire"
* entry[=].resource = CF1-Questionnaire-2
* entry[=].request.method = #POST
* entry[=].request.url = "Questionnaire"
* entry[+].fullUrl = "urn:uuid:questionnaireresponse"
* entry[=].resource = CF1-QuestionnaireResponse-2
* entry[=].request.method = #POST
* entry[=].request.url = "QuestionnaireResponse"
* entry[+].fullUrl = "urn:uuid:provenance"
* entry[=].resource = CF1-Provenance-2
* entry[=].request.method = #POST
* entry[=].request.url = "Provenance"
* entry[+].fullUrl = "urn:uuid:coverage"
* entry[=].resource = CF1-Coverage-2
* entry[=].request.method = #POST
* entry[=].request.url = "Coverage"
* entry[+].fullUrl = "urn:uuid:claim"
* entry[=].resource = CF1-Claim-2
* entry[=].request.method = #POST
* entry[=].request.url = "Claim"

Instance: CF1-RelatedPerson-2
InstanceOf: PH_RelatedPerson
Usage: #inline
* meta.profile = "https://nhdr.gov.ph/fhir/StructureDefinition/PH-RelatedPerson"
* identifier.type.coding.code = #NIIP
* identifier.type.text = "PhilHealth Identification Number"
* identifier.value = "PH54321"
* patient = Reference(CF1-Patient-2) "Patient"
* name.family = "Bautista"
* name.given[0] = "Lorna Mae"
* name.given[+] = "Santos"
* name.suffix = "Mrs."
* birthDate = "1971-02-11"
* address.line = "Fordham Road"
* address.extension[0].url = "https://nhdr.gov.ph/fhir/StructureDefinition/Barangay"
* address.extension[=].valueCoding = #0123456789 "Blue Ridge"
* address.extension[+].url = "https://nhdr.gov.ph/fhir/StructureDefinition/CityMunicipality"
* address.extension[=].valueCoding = #0123456 "Quezon City"
* address.extension[+].url = "https://nhdr.gov.ph/fhir/StructureDefinition/Province"
* address.extension[=].valueCoding = #01234 "Metro Manila"
* address.country = "PH"
* address.postalCode = "1110"
* extension.url = "https://nhdr.gov.ph/fhir/StructureDefinition/Sex"
* extension.valueCode = #F
* telecom[0].value = "912-00-00"
* telecom[=].system = #phone
* telecom[+].value = "0927-000-0000"
* telecom[=].system = #phone
* telecom[+].value = "lmbautista@email.com"
* telecom[=].system = #email

Instance: CF1-Patient-2
InstanceOf: PH_Patient
Usage: #inline
* meta.profile = "https://nhdr.gov.ph/fhir/StructureDefinition/PH-Patient"
* identifier.type.coding.code = #NIIP
* identifier.type.text = "PhilHealth Identification Number"
* identifier.value = "PH12345"
* name.family = "Manipol"
* name.given[0] = "Antonio Jerome"
* name.given[+] = "Morales"
* name.suffix = "Mr."
* birthDate = "1994-02-25"
* contact[0].telecom[0].system = #phone
* contact[0].telecom[0].value = "09171234567"
* contact.relationship = #E "Employer"
* extension.url = "https://nhdr.gov.ph/fhir/StructureDefinition/Sex"
* extension.valueCode = #M

Instance: CF1-Organization-2
InstanceOf: PH_Organization
Usage: #inline
* meta.profile = "https://nhdr.gov.ph/fhir/StructureDefinition/PH-Organization"
* identifier.type.coding.code = #EN
* identifier.type.text = "PhilHealth Employer Number (PEN)"
* identifier.value = "EN15243"
* telecom.value = "080-00-00"
* name = "PhilHealth"

Instance: CF1-Provenance-2
InstanceOf: PH_Provenance
Usage: #inline
* meta.profile = "https://nhdr.gov.ph/fhir/StructureDefinition/PH-Provenance"
* target[0] = Reference(CF1-Claim-2) "Claim"
* recorded = "2026-02-03T09:00:00+08:00"
* agent[0].who = Reference(CF1-Organization-2) "Organization"
* signature[0].type[0].system = "urn:iso-astm:E1762-95:2013"
* signature[0].type[0].code = #1.2.840.10065.1.12.1.20
* signature[0].type[0].display = "Electronic Signature"
* signature[0].when = "2026-02-03T10:30:00+08:00"
* signature[0].who = Reference(CF1-RelatedPerson-2) "Related Person"
* signature[0].data = "QkFTRTY0X1NJR05BVFVSRV9QQVRJRU5U"
* signature[0].extension[0].url = "https://nhdr.gov.ph/fhir/StructureDefinition/SignatureReason"
* signature[0].extension[0].valueString = "Claim Approval"

* signature[1].type[0].system = "urn:iso-astm:E1762-95:2013"
* signature[1].type[0].code = #1.2.840.10065.1.12.1.20
* signature[1].type[0].display = "Electronic Signature"
* signature[1].when = "2026-02-03T10:30:00+08:00"
* signature[1].who = Reference(CF1-Organization-2) "PhilHealth Regional Office"
* signature[1].data = "QkFTRTY0X1NJR05BVFVSRV9PUkdBTklaVElPTg=="

Instance: CF1-Questionnaire-2
InstanceOf: PH_Questionnaire
Usage: #inline
* meta.profile = "https://nhdr.gov.ph/fhir/StructureDefinition/PH-Questionnaire"
* item[0].linkId = "CF1-Q1"
* item[=].text = "Patient is the member?"
* item[=].type = #boolean
* status = #active

Instance: CF1-QuestionnaireResponse-2
InstanceOf: PH_QuestionnaireResponse
Usage: #inline
* meta.profile = "https://nhdr.gov.ph/fhir/StructureDefinition/PH-QuestionnaireResponse"
* item[0].linkId = "CF1-Q1"
* item[0].answer[0].valueBoolean = false
* status = #completed

Instance: CF1-Coverage-2
InstanceOf: PH_Coverage
Usage: #inline
* meta.profile = "https://nhdr.gov.ph/fhir/StructureDefinition/PH-Coverage"
* policyHolder = Reference(CF1-Organization-2) "Organization"
* status = #active
* beneficiary = Reference(CF1-Patient-2) "Patient"
* payor[0] = Reference(CF1-Organization-2) "PhilHealth"

Instance: CF1-Claim-2
InstanceOf: PH_Claim
Usage: #inline
* meta.profile = "https://nhdr.gov.ph/fhir/StructureDefinition/PH-Claim"
* identifier.system = "https://philhealth.gov.ph/claim"
* identifier.value = "CF1-CLM-00001"
* status = #active
* type.coding.system = "http://terminology.hl7.org/CodeSystem/claim-type"
* type.coding.code = #institutional
* type.coding.display = "Institutional"
* use = #claim
* created = "2026-02-03T08:00:00+08:00"
* provider = Reference(CF1-Organization-2) "Organization"
* priority.coding.system = "http://terminology.hl7.org/CodeSystem/processpriority"
* priority.coding.code = #normal
* priority.coding.display = "Normal"
* payee.type.coding.system = "http://terminology.hl7.org/CodeSystem/payeetype"
* payee.type.coding.code = #subscriber
* payee.type.coding.display = "Subscriber"
* payee.party = Reference(CF1-RelatedPerson-2) "RelatedPerson"
* patient = Reference(CF1-Patient-2) "Patient"
* insurance[0].sequence = 1
* insurance[0].focal = true
* insurance[0].coverage = Reference(CF1-Coverage-2) "Coverage"


// ========== Claims Form 2 ==========

Alias: $sct = http://snomed.info/sct
Alias: $v3-ActCode = http://terminology.hl7.org/CodeSystem/v3-ActCode
Alias: $condition-clinical = http://terminology.hl7.org/CodeSystem/condition-clinical
Alias: $RVSCodeCS = https://nhdr.gov.ph/fhir/CodeSystem/RVSCodeCS
Alias: $CodeSystem-location-physical-type.html = http://terminology.hl7.org/CodeSystem/location-physical-type
Alias: $ICD = http://hl7.org/fhir/sid/icd-10

Instance: ClaimsForm2
InstanceOf: Bundle
Usage: #example
* type = #transaction
* identifier.system = "http://nhdr.gov.ph/fhir/ValueSet-form-type"
* identifier.value = "CF2"
* entry[0].fullUrl = "urn:uuid:patient"
* entry[=].resource = CF2-Patient
* entry[=].request.method = #POST
* entry[=].request.url = "Patient"
* entry[+].fullUrl = "urn:uuid:relatedperson"
* entry[=].resource = CF2-RelatedPerson
* entry[=].request.method = #POST
* entry[=].request.url = "RelatedPerson"
* entry[+].fullUrl = "urn:uuid:organization"
* entry[=].resource = CF2-Organization
* entry[=].request.method = #POST
* entry[=].request.url = "Organization"
* entry[+].fullUrl = "urn:uuid:encounter"
* entry[=].resource = CF2-Encounter
* entry[=].request.method = #POST
* entry[=].request.url = "Encounter"
* entry[+].fullUrl = "urn:uuid:procedure"
* entry[=].resource = CF2-Procedure
* entry[=].request.method = #POST
* entry[=].request.url = "Procedure"
* entry[+].fullUrl = "urn:uuid:servicerequest"
* entry[=].resource = CF2-ServiceRequest
* entry[=].request.method = #POST
* entry[=].request.url = "ServiceRequest"
* entry[+].fullUrl = "urn:uuid:observation"
* entry[=].resource = CF2-Observation
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"
* entry[+].fullUrl = "urn:uuid:practitioner"
* entry[=].resource = CF2-Practitioner
* entry[=].request.method = #POST
* entry[=].request.url = "Practitioner"
* entry[+].fullUrl = "urn:uuid:coverage"
* entry[=].resource = CF2-Coverage
* entry[=].request.method = #POST
* entry[=].request.url = "Coverage"
* entry[+].fullUrl = "urn:uuid:questionnaire"
* entry[=].resource = CF2-Questionnaire
* entry[=].request.method = #POST
* entry[=].request.url = "Questionnaire"
* entry[+].fullUrl = "urn:uuid:questionnaireResponse"
* entry[=].resource = CF2-QuestionnaireResponse
* entry[=].request.method = #POST
* entry[=].request.url = "QuestionnaireResponse"
* entry[+].fullUrl = "urn:uuid:provenance"
* entry[=].resource = CF2-Provenance
* entry[=].request.method = #POST
* entry[=].request.url = "Provenance"
* entry[+].fullUrl = "urn:uuid:claim"
* entry[=].resource = CF2-Claim
* entry[=].request.method = #POST
* entry[=].request.url = "Claim"
// patient, relatedperson, organization, encounter, procedure, service request, observation, practitioner, coverage, questionnaire, questionnaire response, provenance, claim
Instance: CF2-Patient
InstanceOf: PH_Patient
Usage: #inline
* meta.profile = "https://nhdr.gov.ph/fhir/StructureDefinition/PH-Patient"
* name.family = "Doe"
* name.given[0] = "John"
* name.given[+] = "Harris"
* name.suffix = "Mr."

Instance: CF2-RelatedPerson
InstanceOf: PH_RelatedPerson
Usage: #inline
* meta.profile = "https://nhdr.gov.ph/fhir/StructureDefinition/PH_RelatedPerson"
* patient = Reference(CF2-Patient) "Patient"
* relationship = http://terminology.hl7.org/CodeSystem/v3-RoleCode#MTH "mother"
* name.family = "Dela Cruz"
* name.given = "Maria"

Instance: CF2-Organization
InstanceOf: PH_Organization
Usage: #inline
* meta.profile = "https://nhdr.gov.ph/fhir/StructureDefinition/PH-Organization"
* identifier.type.coding.code = #AN
* identifier.type.text = "PhilHealth Accreditation Number (PAN)"
* identifier.value = "AN199513893"
* name = "6th General Hospital"
* address[0].line = "San Roque"
* address[+].line = "Tarlac City"
* address[+].line = "Tarlac"
// The Address.extension backbone extension is not reflected in the UI.
* address[=].extension[0].url = "https://nhdr.gov.ph/fhir/StructureDefinition/Barangay"
* address[=].extension[=].valueCoding = #036916001 "San Roque"
* address[=].extension[+].url = "https://nhdr.gov.ph/fhir/StructureDefinition/CityMunicipality"
* address[=].extension[=].valueCoding = #036916000 "Tarlac City"
* address[=].extension[+].url = "https://nhdr.gov.ph/fhir/StructureDefinition/Province"
* address[=].extension[=].valueCoding = #036900000 "Tarlac"
* contact[0].name.text = "Dr. Maria Santos" 

Instance: CF2-Encounter
InstanceOf: PH_Encounter
Usage: #inline
* meta.profile = "https://nhdr.gov.ph/fhir/StructureDefinition/PH-Encounter"
* period.start = "2024-07-18T08:00:00+08:00"
* period.end = "2024-07-18T10:00:00+08:00"
* hospitalization.dischargeDisposition.coding.system = "http://terminology.hl7.org/CodeSystem/discharge-disposition"
* hospitalization.dischargeDisposition.coding.code = #home
* hospitalization.dischargeDisposition.coding.display = "Discharged to home"
* class.system = "http://terminology.hl7.org/CodeSystem/v3-ActCode"
* class.code = #AMB
* status = #booked
// * location.location = Reference(CF2-Location)
* serviceProvider = Reference(CF2-Organization) "Organization"

Instance: CF2-Procedure
InstanceOf: PH_Procedure
Usage: #inline
* meta.profile = "https://nhdr.gov.ph/fhir/StructureDefinition/PH-Procedure"
* status = #completed
* subject = Reference(CF2-Patient) "Patient"
* code.coding.system = "https://nhdr.gov.ph/fhir/ValueSet/ProcedureCodeVS"
* code.coding.code = #10060
* code.coding.display = "INCISION AND DRAINAGE OF ABSCESS (E.G., CARBUNCLE, SUPPURATIVE HIDRADENITIS, CUTANEOUS OR SUBCUTANEOUS ABSCESS, CYST, FURUNCLE, OR PARONYCHIA)"
* bodySite.coding.system = "http://snomed.info/sct"
* bodySite.coding.code = #66754008
* bodySite.coding.display = "Appendix structure"

Instance: CF2-ServiceRequest
InstanceOf: PH_ServiceRequest
Usage: #inline
* meta.profile = "https://nhdr.gov.ph/fhir/StructureDefinition/PH-ServiceRequest"
* status = #completed
* intent = #order
* subject = Reference(CF2-Patient) "Patient"
* reasonReference = Reference(CF2-Observation) "Observation"
* requester = Reference(CF3-Organization) "Organization"
* performer = Reference(CF2-Organization) "Organization"

Instance: CF2-Observation
InstanceOf: PH_Observation
Usage: #inline
* meta.profile = "https://nhdr.gov.ph/fhir/StructureDefinition/PH-Observation"
* status = #final
* code.coding.system = "http://loinc.org"
* code.coding.code = #81247-9
* code.coding.display = "Preoperative assessment"
* subject = Reference(CF2-Patient) "Patient"
* valueCodeableConcept.text = "Subject for Surgery"

Instance: CF2-Practitioner
InstanceOf: PH_Practitioner
Usage: #inline
* meta.profile = "https://nhdr.gov.ph/fhir/StructureDefinition/PH-Practitioner"
* identifier.system = "https://prc.gov.ph"
* identifier.value = "1234567"
* name[0].family = "Santos"
* name[0].given[0] = "Maria"
* name[0].suffix = "MD"

Instance: CF2-Coverage
InstanceOf: PH_Coverage
Usage: #inline
* meta.profile = "https://nhdr.gov.ph/fhir/StructureDefinition/PH-Coverage"
* status = #active
* type.coding[0].system = "http://terminology.hl7.org/CodeSystem/v3-ActCode"
* type.coding[0].code = #EHCPOL
* type.coding[0].display = "extended healthcare"
* beneficiary = Reference(CF2-Patient) "Patient"
* payor[0] = Reference(CF2-Organization) "Organization"
* costToBeneficiary.type.coding.system = "http://terminology.hl7.org/CodeSystem/coverage-copay-type"
* costToBeneficiary.type.coding.code = #copay
* costToBeneficiary.type.coding.display = "Copayment"
* costToBeneficiary.valueMoney.value = 500
* costToBeneficiary.valueMoney.currency = #PHP

Instance: CF2-Questionnaire
InstanceOf: PH_Questionnaire
Usage: #inline
* meta.profile = "https://nhdr.gov.ph/fhir/StructureDefinition/PH-Questionnaire"
* status = #active
* item[0].linkId = "CF2-Q1"
* item[0].text = "A. Certification of Consumption of Benefits (Y/N)"
* item[0].type = #boolean

Instance: CF2-QuestionnaireResponse
InstanceOf: PH_QuestionnaireResponse
Usage: #inline
* meta.profile = "https://nhdr.gov.ph/fhir/StructureDefinition/PH-QuestionnaireResponse"
* status = #completed
* item[0].linkId = "CF2-Q1"
* item[0].answer[0].valueBoolean = true

Instance: CF2-Provenance
InstanceOf: PH_Provenance
Usage: #inline
* meta.profile = "https://nhdr.gov.ph/fhir/StructureDefinition/PH-Provenance"
* target[0] = Reference(CF2-Claim) "Claim"
* recorded = "2026-02-03T09:00:00+08:00"
* agent[0].who = Reference(CF2-Practitioner) "Practitioner"
* signature[0].type[0].system = "urn:iso-astm:E1762-95:2013"
* signature[0].type[0].code = #1.2.840.10065.1.12.1.20
* signature[0].type[0].display = "Electronic Signature"
* signature[0].when = "2026-02-03T10:30:00+08:00"
* signature[0].who = Reference(CF2-Practitioner) "Practitioner"
* signature[0].data = "U1VCTUlUU0lPTl9QUkFDVElUSU9ORVJfU0lHTg=="
* signature[0].extension[0].url = "https://nhdr.gov.ph/fhir/StructureDefinition/SignaturePosition"
* signature[0].extension[0].valueString = "Attending Physician"

* signature[1].type[0].system = "urn:iso-astm:E1762-95:2013"
* signature[1].type[0].code = #1.2.840.10065.1.12.1.20
* signature[1].type[0].display = "Electronic Signature"
* signature[1].when = "2026-02-03T10:30:00+08:00"
* signature[1].who = Reference(CF2-Patient) "Patient"
* signature[1].data = "U1VCTUlUU0lPTl9QQVRJRU5UX1NJR04="

* signature[2].type[0].system = "urn:iso-astm:E1762-95:2013"
* signature[2].type[0].code = #1.2.840.10065.1.12.1.20
* signature[2].type[0].display = "Electronic Signature"
* signature[2].when = "2026-02-03T10:30:00+08:00"
* signature[2].who = Reference(CF2-RelatedPerson) "RelatedPerson"
* signature[2].data = "U1VCTUlUU0lPTl9SRUxBVEVEX1NJR04="

Instance: CF2-Claim
InstanceOf: PH_Claim
Usage: #inline
* meta.profile = "https://nhdr.gov.ph/fhir/StructureDefinition/PH-Claim"
* identifier.system = "https://philhealth.gov.ph/claim"
* identifier.value = "CLM-2026-00001"
* status = #active
* type.coding.system = "http://terminology.hl7.org/CodeSystem/claim-type"
* type.coding.code = #institutional
* type.coding.display = "Institutional"
* use = #claim
* created = "2026-02-03T08:00:00+08:00"
* priority.coding.system = "http://terminology.hl7.org/CodeSystem/processpriority"
* priority.coding.code = #normal
* priority.coding.display = "Normal"
* provider = Reference(CF2-Organization) "Organization"
* patient = Reference(CF2-Patient) "Patient"
* referral = Reference(CF2-ServiceRequest) "ServiceRequest"
* extension[0].url = "https://nhdr.gov.ph/fhir/StructureDefinition/EncounterExtension"
* extension[0].valueReference = Reference(CF2-Encounter) "Encounter"
* diagnosis[0].sequence = 1
* diagnosis[0].diagnosisCodeableConcept.coding.system = "http://hl7.org/fhir/sid/icd-10"
* diagnosis[0].diagnosisCodeableConcept.coding.code = #I10
* diagnosis[0].diagnosisCodeableConcept.coding.display = "Essential (primary) hypertension"
* procedure[0].sequence = 1
* procedure[0].procedureReference = Reference(CF2-Procedure) "Procedure"
* procedure[0].date = "2026-02-03T09:00:00+08:00"
* item[0].sequence = 1
* item[0].productOrService.coding.system = "http://terminology.hl7.org/CodeSystem/service-uscls"
* item[0].productOrService.coding.code = #80146002
* item[0].productOrService.coding.display = "Appendectomy"
* item[0].servicedDate = "2026-02-03"
* item[0].net.value = 15000
* item[0].net.currency = #PHP
* item[0].detail[0].sequence = 1
* item[0].detail[0].productOrService.coding.system = "http://terminology.hl7.org/CodeSystem/service-uscls"
* item[0].detail[0].productOrService.coding.code = #80146002
* item[0].detail[0].productOrService.coding.display = "Appendectomy Procedure Fee"
* item[0].detail[0].net.value = 15000
* item[0].detail[0].net.currency = #PHP
* supportingInfo[0].sequence = 1
* supportingInfo[0].category.coding.system = "http://terminology.hl7.org/CodeSystem/claiminformationcategory"
* supportingInfo[0].category.coding.code = #information
* supportingInfo[0].category.coding.display = "Supporting Information"
* supportingInfo[0].valueReference = Reference(CF2-Practitioner) "Practitioner"
* insurance[0].sequence = 1
* insurance[0].focal = true
* insurance[0].coverage = Reference(CF2-Coverage) "Coverage"
* total.value = 15000
* total.currency = #PHP


// ========== Claims Form 3 ========

Instance: ClaimsForm3
InstanceOf: Bundle
Usage: #example
* type = #transaction
* identifier.system = "http://nhdr.gov.ph/fhir/ValueSet-form-type"
* identifier.value = "CF3"
* entry[0].fullUrl = "urn:uuid:patient"
* entry[=].resource = CF3-Patient
* entry[=].request.method = #POST
* entry[=].request.url = "Patient"
* entry[+].fullUrl = "urn:uuid:organization"
* entry[=].resource = CF3-Organization
* entry[=].request.method = #POST
* entry[=].request.url = "Organization"
* entry[+].fullUrl = "urn:uuid:encounter"
* entry[=].resource = CF3-Encounter
* entry[=].request.method = #POST
* entry[=].request.url = "Encounter"
* entry[+].fullUrl = "urn:uuid:observation"
* entry[=].resource = CF3-Observation-Physical-Examination
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"
* entry[+].fullUrl = "urn:uuid:observation"
* entry[=].resource = CF3-Observation-Pertinent-Laboratory
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"
* entry[+].fullUrl = "urn:uuid:observation"
* entry[=].resource = CF3-Observation-Pregnancy-Risk-Assessment
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"
* entry[+].fullUrl = "urn:uuid:observation"
* entry[=].resource = CF3-Observation-Obstetric-Risk-Factors
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"
* entry[+].fullUrl = "urn:uuid:observation"
* entry[=].resource = CF3-Observation-Estimated-Delivery-Date
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"
* entry[+].fullUrl = "urn:uuid:observation"
* entry[=].resource = CF3-Observation-Age-of-Gestation
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"
* entry[+].fullUrl = "urn:uuid:observation"
* entry[=].resource = CF3-Observation-Weight-and-Vital-Signs
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"
* entry[+].fullUrl = "urn:uuid:observation"
* entry[=].resource = CF3-Observation-Pregnancy-status-panel
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"
* entry[+].fullUrl = "urn:uuid:observation"
* entry[=].resource = CF3-Observation-Birth-Outcome-Panel
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"    
* entry[+].fullUrl = "urn:uuid:clinicalimpression"
* entry[=].resource = CF3-ClinicalImpression
* entry[=].request.method = #POST
* entry[=].request.url = "ClinicalImpression"  
* entry[+].fullUrl = "urn:uuid:diagnosticreport"
* entry[=].resource = CF3-DiagnosticReport
* entry[=].request.method = #POST
* entry[=].request.url = "DiagnosticReport"  
* entry[+].fullUrl = "urn:uuid:provenance"
* entry[=].resource = CF3-Provenance
* entry[=].request.method = #POST
* entry[=].request.url = "Provenance" 
* entry[+].fullUrl = "urn:uuid:questionnaire"
* entry[=].resource = CF3-Questionnaire
* entry[=].request.method = #POST
* entry[=].request.url = "Questionnaire" 
* entry[+].fullUrl = "urn:uuid:questionnaireresponse"
* entry[=].resource = CF3-QuestionnaireResponse
* entry[=].request.method = #POST
* entry[=].request.url = "QuestionnaireResponse" 
* entry[+].fullUrl = "urn:uuid:claim"
* entry[=].resource = CF3-Claim
* entry[=].request.method = #POST
* entry[=].request.url = "Claim" 

Instance: CF3-Patient
InstanceOf: PH_Patient
Usage: #inline
* meta.profile = "https://nhdr.gov.ph/fhir/StructureDefinition/PH-Patient"
* name.family = "Apilyido"
* name.given[0] = "John"
* name.given[+] = "Mark"
* name.suffix = "Mr."

Instance: CF3-Organization
InstanceOf: PH_Organization
Usage: #inline
* meta.profile = "https://nhdr.gov.ph/fhir/StructureDefinition/PH-Organization"
* identifier.type.coding.code = #AN
* identifier.type.text = "PhilHealth Accreditation Number (PAN)"
* identifier.value = "AN55555"
* name = "Pasig General Hospital"

Instance: CF3-Encounter
InstanceOf: PH_Encounter
Usage: #example
* meta.profile = "https://nhdr.gov.ph/fhir/StructureDefinition/PH-Encounter"
* period.start = "2024-07-18T08:00:00+08:00"
* period.end = "2024-07-18T10:00:00+08:00"
* hospitalization.dischargeDisposition.coding.system = "http://terminology.hl7.org/CodeSystem/discharge-disposition"
* hospitalization.dischargeDisposition.coding.code = #home
* hospitalization.dischargeDisposition.coding.display = "Discharged to home"
* reasonReference = Reference(CF3-Observation-Physical-Examination) "Observation"
* class.system = "http://terminology.hl7.org/CodeSystem/v3-ActCode"
* class.code = #AMB
* status = #booked

Instance: CF3-Observation-Physical-Examination
InstanceOf: PH_Observation
Usage: #inline
* meta.profile = "https://nhdr.gov.ph/fhir/StructureDefinition/PH-Observation"
* status = #final
* code.coding.system = "http://loinc.org"
* code.coding.code = #29545-1
* code.coding.display = "Physical examination"
* valueString = "Patient complains of severe headache"
* component[0].code.text = "General Survey"
* component[0].valueString = "Patient appears weak"
* component[1].code.text = "Vital Signs - BP"
* component[1].valueString = "120/80 mmHg"
* component[2].code.text = "Vital Signs - CR"
* component[2].valueString = "78 bpm"
* component[3].code.text = "Vital Signs - RR"
* component[3].valueString = "18 breaths/min"
* component[4].code.text = "Vital Signs - Temperature"
* component[4].valueString = "36.8°C"
* component[5].code.text = "Abdomen"
* component[5].valueString = "Soft, non-tender, no organomegaly"
* component[6].code.text = "HEENT"
* component[6].valueString = "Pupils equal, round, reactive to light; oropharynx clear"
* component[7].code.text = "GU (IE)"
* component[7].valueString = "Normal external genitalia; no masses or tenderness"
* component[8].code.text = "Chest/Lungs"
* component[8].valueString = "Clear to auscultation bilaterally; no wheezes or crackles"
* component[9].code.text = "Skin/Extremities"
* component[9].valueString = "Skin warm and dry; no rashes; peripheral pulses palpable"
* component[10].code.text = "CVS"
* component[10].valueString = "Heart sounds normal; regular rate and rhythm; no murmurs"
* component[11].code.text = "Neuro Examination"
* component[11].valueString = "Alert, cranial nerves II-XII intact; motor and sensory exam normal"

Instance: CF3-Observation-Pertinent-Laboratory
InstanceOf: PH_Observation
Usage: #inline
* meta.profile = "https://nhdr.gov.ph/fhir/StructureDefinition/PH-Observation"
* status = #final
* code.coding.system = "http://loinc.org"
* code.coding.code = #26436-6
* code.coding.display = "Pertinent Laboratory"
* component[0].code.text = "CBC"
* component[0].valueString = "Normal"

Instance: CF3-Observation-Pregnancy-Risk-Assessment
InstanceOf: PH_Observation
Usage: #inline
* meta.profile = "https://nhdr.gov.ph/fhir/StructureDefinition/PH-Observation"
* status = #final
* code.coding.system = "http://loinc.org"
* code.coding.code = #82810-3
* code.coding.display = "Pregnancy risk assessment"
* component[0].code.text = "Vital signs"
* component[0].interpretation.text = "Normal"
* component[1].code.text = "Pregnancy Low Risk"
* component[1].valueBoolean = true
* component[2].code.text = "Menstrual History - Last Menstrual Period (LMP)"
* component[2].valueDateTime = "2026-02-10"
* component[3].code.text = "Menstrual History - Age of Menarche"
* component[3].valueInteger = 13
* component[4].code.text = "Obstetric History (G)"
* component[4].valueInteger = 2
* component[5].code.text = "Obstetric History (P)"
* component[5].valueInteger = 1
* component[6].code.text = "Obstetric History (P)[T]"
* component[6].valueInteger = 1
* component[7].code.text = "Obstetric History (P)[P]"
* component[7].valueInteger = 0
* component[8].code.text = "Obstetric History (P)[A]"
* component[8].valueInteger = 0
* component[9].code.text = "Obstetric History (P)[L]"
* component[9].valueInteger = 1

Instance: CF3-Observation-Obstetric-Risk-Factors
InstanceOf: PH_Observation
Usage: #inline
* meta.profile = "https://nhdr.gov.ph/fhir/StructureDefinition/PH-Observation"
* status = #final
* code.coding.system = "http://loinc.org"
* code.coding.code = #82801-8
* code.coding.display = "Obstetric risk factors"
* component[0].code.text = "Multiple pregnancy"
* component[0].valueBoolean = false
* component[1].code.text = "Ovarian cyst"
* component[1].valueBoolean = true
* component[2].code.text = "Myoma uteri"
* component[2].valueBoolean = false
* component[3].code.text = "Placenta previa"
* component[3].valueBoolean = false
* component[4].code.text = "History of 3 miscarriages"
* component[4].valueBoolean = true
* component[5].code.text = "History of stillbirth"
* component[5].valueBoolean = false
* component[6].code.text = "History of pre-eclampsia"
* component[6].valueBoolean = true
* component[7].code.text = "History of eclampsia"
* component[7].valueBoolean = false
* component[8].code.text = "Premature contraction"
* component[8].valueBoolean = true

Instance: CF3-Observation-Estimated-Delivery-Date
InstanceOf: PH_Observation
Usage: #inline
* meta.profile = "https://nhdr.gov.ph/fhir/StructureDefinition/PH-Observation"
* status = #final
* code.coding.system = "http://loinc.org"
* code.coding.code = #11778-8
* code.coding.display = "Delivery date Estimated"
* effectiveDateTime = "2026-03-10"

Instance: CF3-Observation-Age-of-Gestation
InstanceOf: PH_Observation
Usage: #inline
* meta.profile = "https://nhdr.gov.ph/fhir/StructureDefinition/PH-Observation"
* status = #final
* code.coding.system = "http://loinc.org"
* code.coding.code = #18185-9
* code.coding.display = "Age of Gestation"
* valueQuantity.value = 20
* valueQuantity.unit = "weeks"

Instance: CF3-Observation-Weight-and-Vital-Signs 
InstanceOf: PH_Observation
Usage: #inline
* meta.profile = "https://nhdr.gov.ph/fhir/StructureDefinition/PH-Observation"
* status = #final
* code.coding.system = "http://loinc.org"
* code.coding.code = #85353-1
* code.coding.display = "Vital signs panel"
* component[0].code.text = "Weight"
* component[0].valueQuantity.value = 65
* component[0].valueQuantity.unit = "kg"
* component[1].code.text = "Cardiac Rate"
* component[1].valueQuantity.value = 80
* component[1].valueQuantity.unit = "beats/minute"
* component[2].code.text = "Respiratory Rate"
* component[2].valueQuantity.value = 18
* component[2].valueQuantity.unit = "breaths/minute"
* component[3].code.text = "Blood Pressure"
* component[3].valueString = "120/80 mmHg"
* component[4].code.text = "Temperature"
* component[4].valueQuantity.value = 36.8
* component[4].valueQuantity.unit = "°C"

Instance: CF3-Observation-Pregnancy-status-panel 
InstanceOf: PH_Observation
Usage: #inline
* meta.profile = "https://nhdr.gov.ph/fhir/StructureDefinition/PH-Observation"
* status = #final
* code.coding.system = "http://loinc.org"
* code.coding.code = #57075-4
* code.coding.display = "Pregnancy status panel"
* component[0].code.text = "Maternal Outcome - Obstetric Index"
* component[0].valueString = "G2P1 (1-0-0-1)"
* component[1].code.text = "Pregnancy Uterine - AOG by LMP"
* component[1].valueString = "20 weeks"
* component[2].code.text = "Pregnancy Uterine - Manner of Delivery"
* component[2].valueString = "Normal Spontaneous Vaginal Delivery"
* component[3].code.text = "Pregnancy Uterine - Presentation"
* component[3].valueString = "Cephalic"

Instance: CF3-Observation-Birth-Outcome-Panel 
InstanceOf: PH_Observation
Usage: #inline
* meta.profile = "https://nhdr.gov.ph/fhir/StructureDefinition/PH-Observation"
* status = #final
* code.coding.system = "http://loinc.org"
* code.coding.code = #57076-2
* code.coding.display = "Birth outcome panel"
* component[0].code.text = "Birth Outcome - Fetal Outcome"
* component[0].valueString = "Live birth"
* component[1].code.text = "Birth Outcome - Sex"
* component[1].valueString = "Male"
* component[2].code.text = "Birth Outcome - Birth Weight (grm)"
* component[2].valueQuantity.value = 3200
* component[2].valueQuantity.unit = "g"
* component[3].code.text = "Birth Outcome - APGAR Score"
* component[3].valueInteger = 9

Instance: CF3-ClinicalImpression 
InstanceOf: PH_ClinicalImpression
Usage: #inline
* meta.profile = "https://nhdr.gov.ph/fhir/StructureDefinition/PH-ClinicalImpression"
* description = "Patient admitted for observation and management of hypertension. During the ward stay, vital signs stabilized, medications were adjusted, and patient responded well to treatment. No complications noted. Discharged in stable condition."
* subject = Reference(CF3-Patient)
* status = #completed

Instance: CF3-DiagnosticReport 
InstanceOf: PH_DiagnosticReport
Usage: #inline
* meta.profile = "https://nhdr.gov.ph/fhir/StructureDefinition/PH-DiagnosticReport"
* status = #final
* code.coding.system = "http://hl7.org/fhir/sid/icd-10"
* code.coding.code = #D64.9
* code.coding.display = "Anemia, unspecified"
* conclusion = "Patient shows mild anemia with hemoglobin slightly below normal range; other CBC parameters within normal limits."

Instance: CF3-Provenance 
InstanceOf: PH_Provenance
Usage: #inline
* meta.profile = "https://nhdr.gov.ph/fhir/StructureDefinition/PH-Provenance"
* target[0] = Reference(CF3-Claim) 
* recorded = "2026-02-03T09:00:00+08:00"
* agent[0].who = Reference(K4-Practitioner) "Practitioner"
* signature[0].type[0].system = "urn:iso-astm:E1762-95:2013"
* signature[0].type[0].code = #1.2.840.10065.1.12.1.20
* signature[0].type[0].display = "Electronic Signature"
* signature[0].when = "2026-02-03T10:30:00+08:00"
* signature[0].who = Reference(K4-Practitioner) "Practitioner"
* signature[0].data = "QkFTRTY0X1NJR05BVFVSRV9QQVRJRU5U"

Instance: CF3-Questionnaire 
InstanceOf: PH_Questionnaire
Usage: #inline
* meta.profile = "https://nhdr.gov.ph/fhir/StructureDefinition/PH_Questionnaire"
* status = #active
* item[0].linkId = "CF3-Q1"
* item[0].text = "Orientation to MCP/Availment of Benefits (Yes/No)"
* item[0].type = #boolean
* item[1].linkId = "CF3-Q2"
* item[1].text = "Perineal wound care"
* item[1].type = #boolean
* item[2].linkId = "CF3-Q3"
* item[2].text = "Perineal wound care - Remarks"
* item[2].type = #string
* item[3].linkId = "CF3-Q4"
* item[3].text = "Signs of Maternal Postpartum Complications"
* item[3].type = #boolean
* item[4].linkId = "CF3-Q5"
* item[4].text = "Signs of Maternal Postpartum Complications - Remarks"
* item[4].type = #string
* item[5].linkId = "CF3-Q6"
* item[5].text = "Counselling and Education (Breastfeeding and Nutrition)"
* item[5].type = #boolean
* item[6].linkId = "CF3-Q7"
* item[6].text = "Counselling and Education (Breastfeeding and Nutrition) - Remarks"
* item[6].type = #string
* item[7].linkId = "CF3-Q8"
* item[7].text = "Counselling and Education (Family Planning)"
* item[7].type = #boolean
* item[8].linkId = "CF3-Q9"
* item[8].text = "Counselling and Education (Family Planning) - Remarks"
* item[8].type = #string
* item[9].linkId = "CF3-Q10"
* item[9].text = "Provided family planning service to patient (as requested by patient)"
* item[9].type = #boolean
* item[10].linkId = "CF3-Q11"
* item[10].text = "Provided family planning service to patient (as requested by patient) - Remarks"
* item[10].type = #string
* item[11].linkId = "CF3-Q12"
* item[11].text = "Referred to partner physician for Voluntary Surgical Sterilization (as requested by pt.)"
* item[11].type = #boolean
* item[12].linkId = "CF3-Q13"
* item[12].text = "Referred to partner physician for Voluntary Surgical Sterilization (as requested by pt.) - Remarks"
* item[12].type = #string
* item[13].linkId = "CF3-Q14"
* item[13].text = "Schedule the next postpartum follow-up"
* item[13].type = #boolean
* item[14].linkId = "CF3-Q15"
* item[14].text = "Schedule the next postpartum follow-up - Remarks"
* item[14].type = #string


Instance: CF3-QuestionnaireResponse 
InstanceOf: PH_QuestionnaireResponse
Usage: #inline
* meta.profile = "https://nhdr.gov.ph/fhir/StructureDefinition/PH_QuestionnaireResponse"
* status = #completed
* item[0].linkId = "CF3-Q1"
* item[0].answer.valueBoolean = true
* item[1].linkId = "CF3-Q2"
* item[1].answer.valueBoolean = true
* item[2].linkId = "CF3-Q3"
* item[2].answer.valueString = "Patient instructed on proper perineal hygiene and wound care."
* item[3].linkId = "CF3-Q4"
* item[3].answer.valueBoolean = true
* item[4].linkId = "CF3-Q5"
* item[4].answer.valueString = "Patient advised to watch for fever, excessive bleeding, and severe abdominal pain."
* item[5].linkId = "CF3-Q6"
* item[5].answer.valueBoolean = true
* item[6].linkId = "CF3-Q7"
* item[6].answer.valueString = "Counselling provided on exclusive breastfeeding and balanced nutrition."
* item[7].linkId = "CF3-Q8"
* item[7].answer.valueBoolean = true
* item[8].linkId = "CF3-Q9"
* item[8].answer.valueString = "Discussed available family planning methods suitable for postpartum mothers."
* item[9].linkId = "CF3-Q10"
* item[9].answer.valueBoolean = false
* item[10].linkId = "CF3-Q11"
* item[10].answer.valueString = "Patient opted to decide on family planning method at next visit."
* item[11].linkId = "CF3-Q12"
* item[11].answer.valueBoolean = false
* item[12].linkId = "CF3-Q13"
* item[12].answer.valueString = "No referral requested by patient."
* item[13].linkId = "CF3-Q14"
* item[13].answer.valueBoolean = true
* item[14].linkId = "CF3-Q15"
* item[14].answer.valueString = "Next postpartum follow-up scheduled after 6 weeks."

Instance: CF3-Claim
InstanceOf: PH_Claim
Usage: #inline
* meta.profile = "https://nhdr.gov.ph/fhir/StructureDefinition/PH_Claim"
* extension[0].url = "https://nhdr.gov.ph/fhir/StructureDefinition/EncounterExtension"
* extension[0].valueReference = Reference(CF3-Encounter) "Encounter"
* status = #active
* use = #claim
* type.coding.system = "http://terminology.hl7.org/CodeSystem/claim-type"
* type.coding.code = #institutional
* type.coding.display = "Institutional"
* patient = Reference(CF3-Patient) "Patient"
* provider = Reference(CF3-Organization) "Organization"
* created = "2024-07-18"
* priority.coding.system = "http://terminology.hl7.org/CodeSystem/processpriority"
* priority.coding.code = #normal
* diagnosis[0].sequence = 1
* diagnosis[0].diagnosisReference = Reference(CF4-Condition) "Condition"
* diagnosis[1].sequence = 2
* diagnosis[1].diagnosisCodeableConcept.coding.system = "http://hl7.org/fhir/sid/icd-10"
* diagnosis[1].diagnosisCodeableConcept.coding.code = #J45.4
* diagnosis[1].diagnosisCodeableConcept.coding.display = "Moderate persistent asthma"
* supportingInfo[0].sequence = 1
* supportingInfo[0].category.coding.system = "http://terminology.hl7.org/CodeSystem/claiminformationcategory"
* supportingInfo[0].category.coding.code = #exam
* supportingInfo[0].category.coding.display = "Physical Examination"
* supportingInfo[0].valueReference = Reference(CF3-Observation-Physical-Examination) "Observation"
* supportingInfo[1].sequence = 2
* supportingInfo[1].category.coding.system = "http://terminology.hl7.org/CodeSystem/claiminformationcategory"
* supportingInfo[1].category.coding.code = #lab
* supportingInfo[1].category.coding.display = "Laboratory"
* supportingInfo[1].valueReference = Reference(CF3-Observation-Pertinent-Laboratory) "Observation"
* supportingInfo[2].sequence = 3
* supportingInfo[2].category.text = "Pregnancy Risk Assessment"
* supportingInfo[2].valueReference = Reference(CF3-Observation-Pregnancy-Risk-Assessment) "Observation"
* supportingInfo[3].sequence = 4
* supportingInfo[3].category.text = "Obstetric Risk Factors"
* supportingInfo[3].valueReference = Reference(CF3-Observation-Obstetric-Risk-Factors) "Observation"
* supportingInfo[4].sequence = 5
* supportingInfo[4].category.text = "Estimated Delivery Date"
* supportingInfo[4].valueReference = Reference(CF3-Observation-Estimated-Delivery-Date) "Observation"
* supportingInfo[5].sequence = 6
* supportingInfo[5].category.text = "Age of Gestation"
* supportingInfo[5].valueReference = Reference(CF3-Observation-Age-of-Gestation) "Observation"
* supportingInfo[6].sequence = 7
* supportingInfo[6].category.text = "Weight and Vital Signs"
* supportingInfo[6].valueReference = Reference(CF3-Observation-Weight-and-Vital-Signs) "Observation"
* supportingInfo[7].sequence = 8
* supportingInfo[7].category.text = "Pregnancy Status Panel"
* supportingInfo[7].valueReference = Reference(CF3-Observation-Pregnancy-status-panel) "Observation"
* supportingInfo[8].sequence = 9
* supportingInfo[8].category.text = "Birth Outcome Panel"
* supportingInfo[8].valueReference = Reference(CF3-Observation-Birth-Outcome-Panel) "Observation"
* insurance[0].sequence = 1
* insurance[0].focal = true
* insurance[0].coverage = Reference(K1-Coverage) "Coverage"
* item[0].sequence = 1
* item[0].productOrService.text = "Maternity Care Package Service"
* item[0].servicedDate = "2024-07-18"

// ========== Claims Form 4 ========

Instance: ClaimsForm4
InstanceOf: Bundle
Usage: #example
* type = #transaction
* identifier.system = "http://nhdr.gov.ph/fhir/ValueSet-form-type"
* identifier.value = "CF4"
* entry[0].fullUrl = "urn:uuid:patient"
* entry[=].resource = CF4-Patient
* entry[=].request.method = #POST
* entry[=].request.url = "Patient"
* entry[+].fullUrl = "urn:uuid:organization"
* entry[=].resource = CF4-Organization
* entry[=].request.method = #POST
* entry[=].request.url = "Organization"
* entry[+].fullUrl = "urn:uuid:encounter"
* entry[=].resource = CF4-Encounter
* entry[=].request.method = #POST
* entry[=].request.url = "Encounter"
* entry[+].fullUrl = "urn:uuid:condition"
* entry[=].resource = CF4-Condition
* entry[=].request.method = #POST
* entry[=].request.url = "Condition"
* entry[+].fullUrl = "urn:uuid:observation"
* entry[=].resource = CF4-Observation-Pertinent-Past-Medical-History
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"
* entry[+].fullUrl = "urn:uuid:observation"
* entry[=].resource = CF4-Observation-Pertinent-Signs-and-Symptoms-on-Admission
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"
* entry[+].fullUrl = "urn:uuid:observation"
* entry[=].resource = CF4-Observation-Physical-Examination-on-Admission
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"
* entry[+].fullUrl = "urn:uuid:servicerequest"
* entry[=].resource = CF4-ServiceRequest
* entry[=].request.method = #POST
* entry[=].request.url = "ServiceRequest"
* entry[+].fullUrl = "urn:uuid:clinicalimpression"
* entry[=].resource = CF4-ClinicalImpression
* entry[=].request.method = #POST
* entry[=].request.url = "ClinicalImpression"
* entry[+].fullUrl = "urn:uuid:provenance"
* entry[=].resource = CF4-Provenance
* entry[=].request.method = #POST
* entry[=].request.url = "Provenance"
* entry[+].fullUrl = "urn:uuid:claim"
* entry[=].resource = CF4-Claim
* entry[=].request.method = #POST
* entry[=].request.url = "Claim"


Instance: CF4-Patient
InstanceOf: PH_Patient
Usage: #inline
* meta.profile = "https://nhdr.gov.ph/fhir/StructureDefinition/PH-Patient"
* extension[0].url = "https://nhdr.gov.ph/fhir/StructureDefinition/Sex"
* extension[0].valueCode = #M
* name.family = "Apilyido"
* name.given[0] = "John"
* name.given[+] = "Mark"
* name.suffix = "Mr."
* identifier.system = "http://nhdr.gov.ph/fhir/Identifier/philhealth-id"
* identifier.type.text = "PhilHealth ID"
* identifier.value = "PH-00001"

Instance: CF4-Organization
InstanceOf: PH_Organization
Usage: #inline
* meta.profile = "https://nhdr.gov.ph/fhir/StructureDefinition/PH-Organization"
* identifier.type.coding.code = #AN
* identifier.type.text = "PhilHealth Accreditation Number (PAN)"
* identifier.value = "AN199513893"
* name = "6th General Hospital"
* address[0].line[0] = "572 BLK 2 LOT 21"
* address[0].line[+] = "Maharlika Village"
* address[0].postalCode = "2300"
* address[0].extension[0].url = "https://nhdr.gov.ph/fhir/StructureDefinition/Barangay"
* address[0].extension[0].valueCoding.code = #036916001
* address[0].extension[0].valueCoding.display = "San Roque"
* address[0].extension[1].url = "https://nhdr.gov.ph/fhir/StructureDefinition/CityMunicipality"
* address[0].extension[1].valueCoding.code = #036916000
* address[0].extension[1].valueCoding.display = "Tarlac City"
* address[0].extension[2].url = "https://nhdr.gov.ph/fhir/StructureDefinition/Province"
* address[0].extension[2].valueCoding.code = #036900000
* address[0].extension[2].valueCoding.display = "Tarlac"

Instance: CF4-Encounter
InstanceOf: PH_Encounter
Usage: #inline
* meta.profile = "https://nhdr.gov.ph/fhir/StructureDefinition/PH-Encounter"
* extension[0].url = "https://nhdr.gov.ph/fhir/StructureDefinition/AgeYears"
* extension[0].valueInteger = 35
* reasonReference = Reference(CF4-Observation-Pertinent-Past-Medical-History) "Observation"
* period.start = "2026-03-11T08:00:00+08:00"
* period.end = "2026-03-11T09:30:00+08:00"
* hospitalization.dischargeDisposition.coding.system = "http://terminology.hl7.org/CodeSystem/discharge-disposition"
* hospitalization.dischargeDisposition.coding.code = #home
* hospitalization.dischargeDisposition.coding.display = "Discharged to home"
* status = #finished
* class.system = "http://terminology.hl7.org/CodeSystem/v3-ActCode"
* class.code = #AMB
* class.display = "Ambulatory"

Instance: CF4-Condition
InstanceOf: PH_Condition
Usage: #inline
* meta.profile = "https://nhdr.gov.ph/fhir/StructureDefinition/PH-Condition"
* subject = Reference(CF4-Patient) "Patient"
* code.coding[0].system = "http://hl7.org/fhir/sid/icd-10"
* code.coding[0].code = #I10
* code.coding[0].display = "Essential (primary) hypertension"
* note[0].text = "Patient reports persistent headaches for the past 2 weeks."
* note[1].text = "Past medical history includes type 2 diabetes mellitus, controlled on metformin."

Instance: CF4-Observation-Pertinent-Past-Medical-History
InstanceOf: PH_Observation
Usage: #inline
* meta.profile = "https://nhdr.gov.ph/fhir/StructureDefinition/PH-Observation"
* status = #final
* code.coding.system = "http://loinc.org"
* code.coding.code = #57075-4
* code.coding.display = "Pregnancy history panel"
* component[0].code.text = "OB/GYN History (G)"
* component[0].valueInteger = 3
* component[1].code.text = "OB/GYN History (P)"
* component[1].valueInteger = 2
* component[2].code.text = "OB/GYN History (P)(T)"
* component[2].valueInteger = 1
* component[3].code.text = "OB/GYN History (P)(P)"
* component[3].valueInteger = 1
* component[4].code.text = "OB/GYN History (P)(A)"
* component[4].valueInteger = 0
* component[5].code.text = "OB/GYN History (P)(L)"
* component[5].valueInteger = 2
* component[6].code.text = "OB/GYN History - LMP"
* component[6].valueDateTime = "2026-02-01"
* dataAbsentReason.coding.system = "http://terminology.hl7.org/CodeSystem/data-absent-reason"
* dataAbsentReason.coding.code = #not-applicable

Instance: CF4-Observation-Pertinent-Signs-and-Symptoms-on-Admission
InstanceOf: PH_Observation
Usage: #inline
* meta.profile = "https://nhdr.gov.ph/fhir/StructureDefinition/PH-Observation"
* status = #final
* code.coding.system = "http://loinc.org"
* code.coding.code = #75325-1
* code.coding.display = "Pertinent signs and symptoms on admission"
* component[0].code.text = "Altered mental sensorium"
* component[0].valueBoolean = true
* component[1].code.text = "Abdominal cramp/pain"
* component[1].valueBoolean = true
* component[2].code.text = "Anorexia"
* component[2].valueBoolean = false
* component[3].code.text = "Bleeding gum"
* component[3].valueBoolean = false
* component[4].code.text = "Body weakness"
* component[4].valueBoolean = true

Instance: CF4-Observation-Physical-Examination-on-Admission
InstanceOf: PH_Observation
Usage: #inline
* meta.profile = "https://nhdr.gov.ph/fhir/StructureDefinition/PH-Observation"
* status = #final
* code.coding.system = "http://loinc.org"
* code.coding.code = #29545-1
* code.coding.display = "Physical findings on admission"
* component[0].code = http://loinc.org#8302-2 "Body height"
* component[0].valueQuantity.value = 160
* component[0].valueQuantity.unit = "cm"
* component[1].code = http://loinc.org#29463-7 "Body weight"
* component[1].valueQuantity.value = 65
* component[1].valueQuantity.unit = "kg"
* component[2].code = http://loinc.org#80313-0 "Mental status - level of consciousness"
* component[2].valueString = "Awake and alert"
* component[3].code = http://loinc.org#85354-9 "Blood pressure panel"
* component[3].valueString = "120/80 mmHg"
* component[4].code = http://loinc.org#8867-4 "Heart rate"
* component[4].valueQuantity.value = 82
* component[4].valueQuantity.unit = "beats/min"
* component[5].code = http://loinc.org#9279-1 "Respiratory rate"
* component[5].valueQuantity.value = 20
* component[5].valueQuantity.unit = "breaths/min"
* component[6].code = http://loinc.org#8310-5 "Body temperature"
* component[6].valueQuantity.value = 37
* component[6].valueQuantity.unit = "°C"
* component[7].code.text = "HEENT"
* component[7].valueString = "Essentially Normal"
* component[8].code.text = "Chest/Lungs"
* component[8].valueString = "Symmetrical chest expansion"
* component[9].code.text = "CVS"
* component[9].valueString = "Displaced apex beat"
* component[10].code.text = "Abdomen"
* component[10].valueString = "Abdominal rigidity"
* component[11].code.text = "GU (IE)"
* component[11].valueString = "Blood stained on examining finger"
* component[12].code.text = "Skin/Extremities"
* component[12].valueString = "Rashes/petechiae"
* component[13].code.text = "Neuro Exam"
* component[13].valueString = "Essentially normal"

Instance: CF4-ServiceRequest
InstanceOf: PH_ServiceRequest
Usage: #inline
* meta.profile = "https://nhdr.gov.ph/fhir/StructureDefinition/PH-ServiceRequest"
* status = #completed
* intent = #order
* subject = Reference(CF4-Patient) "Patient"
* reasonReference = Reference(CF4-Observation-Physical-Examination-on-Admission) "Observation"
* requester = Reference(CF4-Organization) "Organization"

Instance: CF4-ClinicalImpression
InstanceOf: PH_ClinicalImpression
Usage: #inline
* meta.profile = "https://nhdr.gov.ph/fhir/StructureDefinition/PH-ClinicalImpression"
* status = #completed
* description = "Clinical impression on admission based on history, pertinent signs and symptoms, and physical examination."
* effectiveDateTime = "2026-03-12T09:30:00+08:00"
* subject = Reference(CF4-Patient) "Patient"

Instance: CF4-MedicationRequest
InstanceOf: PH_MedicationRequest
Usage: #inline
* meta.profile = "https://nhdr.gov.ph/fhir/StructureDefinition/PH-ClinicalImpression"
* status = #active
* intent = #order
* medicationReference = Reference(K4-Medication) "Medication"
* subject = Reference(CF4-Patient)
* dosageInstruction.doseAndRate[0].doseQuantity.value = 1
* dosageInstruction.doseAndRate[0].doseQuantity.unit = "tablet"
* dosageInstruction.route = http://snomed.info/sct#26643006 "Oral route"
* dosageInstruction.timing.repeat.frequency = 2
* dosageInstruction.timing.repeat.period = 1
* dosageInstruction.timing.repeat.periodUnit = #d

Instance: CF4-Provenance 
InstanceOf: PH_Provenance
Usage: #inline
* meta.profile = "https://nhdr.gov.ph/fhir/StructureDefinition/PH-Provenance"
* target[0] = Reference(CF4-Claim) "Claim"
* recorded = "2026-02-03T09:00:00+08:00"
* agent[0].who = Reference(K4-Practitioner) "Practitioner"
* signature[0].type[0].system = "urn:iso-astm:E1762-95:2013"
* signature[0].type[0].code = #1.2.840.10065.1.12.1.20
* signature[0].type[0].display = "Electronic Signature"
* signature[0].when = "2026-02-03T10:30:00+08:00"
* signature[0].who = Reference(K4-Practitioner) "Practitioner"
* signature[0].data = "QkFTRTY0X1NJR05BVFVSRV9QQVRJRU5U"

Instance: CF4-Claim 
InstanceOf: PH_Claim
Usage: #inline
* meta.profile = "https://nhdr.gov.ph/fhir/StructureDefinition/PH-Claim"
* extension[0].url = "https://nhdr.gov.ph/fhir/StructureDefinition/EncounterExtension"
* extension[0].valueReference = Reference(CF4-Encounter) "Encounter"
* identifier[0].system = "https://nhdr.gov.ph/claim"
* identifier[0].value = "CLAIM-0001"
* status = #active
* type.coding.system = "http://terminology.hl7.org/CodeSystem/claim-type"
* type.coding.code = #institutional
* use = #claim
* patient = Reference(CF4-Patient) "Patient"
* provider = Reference(CF4-Organization) "Organization"
* created = "2026-03-17"
* priority.coding.system = "http://terminology.hl7.org/CodeSystem/processpriority"
* priority.coding.code = #normal
* diagnosis[0].sequence = 1
* diagnosis[0].diagnosisCodeableConcept.text = "Hypertension"
* supportingInfo[0].sequence = 1
* supportingInfo[0].category.text = "Pertinent Past Medical History"
* supportingInfo[0].valueReference = Reference(CF4-Observation-Pertinent-Past-Medical-History) "Observation"
* supportingInfo[1].sequence = 2
* supportingInfo[1].category.text = "Signs and Symptoms"
* supportingInfo[1].valueReference = Reference(CF4-Observation-Pertinent-Signs-and-Symptoms-on-Admission) "Observation"
* supportingInfo[2].sequence = 3
* supportingInfo[2].category.text = "Physical Examination"
* supportingInfo[2].valueReference = Reference(CF4-Observation-Physical-Examination-on-Admission) "Observation"
* procedure[0].sequence = 1
* procedure[0].procedureReference = Reference(CF2-Procedure) "Procedure"
* insurance[0].sequence = 1
* insurance[0].focal = true
* insurance[0].coverage = Reference(K1-Coverage) "Coverage"
* item[0].sequence = 1
* item[0].productOrService.text = "General Ward"
* item[0].quantity.value = 1
* item[0].net.value = 1000
* item[0].net.currency = #PHP
* referral = Reference(CF4-ServiceRequest) "ServiceRequest"
* prescription = Reference(CF4-MedicationRequest) "MedicationRequest"

// Patient, organization, Encounter, condition, Observation, ServiceRequest, ClinicalImpression, MedicationRequest, Provenance, Claim

// ======= Konsulta Registration Form =======

Instance: Konsulta-Registration
InstanceOf: Bundle
Usage: #example
* type = #transaction
* identifier.system = "http://nhdr.gov.ph/fhir/ValueSet-form-type"
* identifier.value = "Konsulta-Registration"
* entry[0].fullUrl = "urn:uuid:patient-1"
* entry[=].resource = K1-Patient
* entry[=].request.method = #POST
* entry[=].request.url = "Patient"
* entry[+].fullUrl = "urn:uuid:organization-1"
* entry[=].resource = K1-Organization
* entry[=].request.method = #POST
* entry[=].request.url = "Organization"
* entry[+].fullUrl = "urn:uuid:organization-2"
* entry[=].resource = K2-Organization
* entry[=].request.method = #POST
* entry[=].request.url = "Organization"
* entry[+].fullUrl = "urn:uuid:questionnaire-1"
* entry[=].resource = K1-Questionnaire
* entry[=].request.method = #POST
* entry[=].request.url = "Questionnaire"
* entry[+].fullUrl = "urn:uuid:questionnaireresponse-1"
* entry[=].resource = K1-QuestionnaireResponse
* entry[=].request.method = #POST
* entry[=].request.url = "QuestionnaireResponse"
* entry[+].fullUrl = "urn:uuid:provenance-1"
* entry[=].resource = K1-Provenance
* entry[=].request.method = #POST
* entry[=].request.url = "Provenance"
* entry[+].fullUrl = "urn:uuid:practitioner-1"
* entry[=].resource = K1-Practitioner
* entry[=].request.method = #POST
* entry[=].request.url = "Practitioner"
* entry[+].fullUrl = "urn:uuid:coverage-1"
* entry[=].resource = K1-Coverage
* entry[=].request.method = #POST
* entry[=].request.url = "Coverage"
* entry[+].fullUrl = "urn:uuid:enrollmentrequest-1"
* entry[=].resource = K1-EnrollmentRequest
* entry[=].request.method = #POST
* entry[=].request.url = "EnrollmentRequest"

Instance: K1-Patient
InstanceOf: PH_Patient
Usage: #inline
* meta.profile = "https://nhdr.gov.ph/fhir/StructureDefinition/PH-Patient"
* extension[0].url = "https://nhdr.gov.ph/fhir/StructureDefinition/PatientType"
* extension[0].valueCodeableConcept.coding[0].system = "https://nhdr.gov.ph/fhir/ValueSet/PatientTypeVS"
* extension[0].valueCodeableConcept.coding[0].code = #MM
* extension[0].valueCodeableConcept.coding[0].display = "Member"
* identifier.system = "http://nhdr.gov.ph/fhir/Identifier/philhealth-id"
* identifier.type.text = "PhilHealth ID"
* identifier.value = "PH-00001"
* name.family = "Senilla"
* name.given[0] = "Quinn"
* name.given[1] = "Ry"
* birthDate = "1990-05-10"
// The Address.extension backbone extension is not reflected in the UI, but properly reflected in JSON
* address.extension[0].url = "https://nhdr.gov.ph/fhir/StructureDefinition/Province"
* address.extension[0].valueCoding.system = "https://psa.gov.ph/classification/psgc"
* address.extension[0].valueCoding.code = #036900000
* address.extension[0].valueCoding.display = "Tarlac"
* address.extension[1].url = "https://nhdr.gov.ph/fhir/StructureDefinition/CityMunicipality"
* address.extension[1].valueCoding.system = "https://psa.gov.ph/classification/psgc"
* address.extension[1].valueCoding.code = #036916000
* address.extension[1].valueCoding.display = "Tarlac City"
* address.extension[2].url = "https://nhdr.gov.ph/fhir/StructureDefinition/Barangay"
* address.extension[2].valueCoding.system = "https://psa.gov.ph/classification/psgc"
* address.extension[2].valueCoding.code = #036916001
* address.extension[2].valueCoding.display = "San Roque"
* telecom.system = #phone
* telecom.value = "09456469323"
* generalPractitioner = Reference (K1-Organization)

Instance: K1-Organization
InstanceOf: PH_Organization
Usage: #inline
* meta.profile = "https://nhdr.gov.ph/fhir/StructureDefinition/PH-Organization"
* identifier.type.coding.code = #AN
* identifier.type.text = "PhilHealth Accreditation Number (PAN)"
* identifier.value = "AN199513893"
* name = "6th General Hospital"
* address[0].line = "San Roque"
* address[+].line = "Tarlac City"
* address[+].line = "Tarlac"
// The Address.extension backbone extension is not reflected in the UI.
* address[=].extension[0].url = "https://nhdr.gov.ph/fhir/StructureDefinition/Barangay"
* address[=].extension[=].valueCoding = #036916001 "San Roque"
* address[=].extension[+].url = "https://nhdr.gov.ph/fhir/StructureDefinition/CityMunicipality"
* address[=].extension[=].valueCoding = #036916000 "Tarlac City"
* address[=].extension[+].url = "https://nhdr.gov.ph/fhir/StructureDefinition/Province"
* address[=].extension[=].valueCoding = #036900000 "Tarlac"
* contact[0].name.text = "Dr. Maria Santos" 


Instance: K1-Questionnaire
InstanceOf: PH_Questionnaire
Usage: #inline
* meta.profile = "https://nhdr.gov.ph/fhir/StructureDefinition/PH-Questionnaire"
* status = #active
* item[0].linkId = "K1-Q1"
* item[0].text = "Register to a Konsulta Package Provider (KPP)?"
* item[0].type = #boolean
* item[1].linkId = "K1-Q2"
* item[1].text = "Register all your declared minor dependents?"
* item[1].type = #boolean
* item[2].linkId = "K1-Q3"
* item[2].text = "Transfer?"
* item[2].type = #boolean

Instance: K1-QuestionnaireResponse
InstanceOf: PH_QuestionnaireResponse
Usage: #inline
* meta.profile = "https://nhdr.gov.ph/fhir/StructureDefinition/PH-QuestionnaireResponse"
* status = #completed
* item[0].linkId = "K1-Q1"
* item[0].answer[0].valueBoolean = true
* item[1].linkId = "K1-Q2"
* item[1].answer[0].valueBoolean = true
* item[2].linkId = "K1-Q3"
* item[2].answer[0].valueBoolean = false

Instance: K1-Provenance
InstanceOf: PH-Provenance
Usage: #inline
* meta.profile = "https://nhdr.gov.ph/fhir/StructureDefinition/PH-Provenance"
* target[0] = Reference(K1-Patient) "Patient"
* recorded = "2026-02-03T09:00:00+08:00"
* agent[0].who = Reference(CF1-Organization) "Organization"
* signature[0].type[0].system = "urn:iso-astm:E1762-95:2013"
* signature[0].type[0].code = #1.2.840.10065.1.12.1.20
* signature[0].type[0].display = "Electronic Signature"
* signature[0].when = "2026-02-03T10:30:00+08:00"
* signature[0].who = Reference(K1-Patient) "Patient"
* signature[0].data = "QkFTRTY0X1NJR05BVFVSRV9QQVRJRU5U"

* signature[1].type[0].system = "urn:iso-astm:E1762-95:2013"
* signature[1].type[0].code = #1.2.840.10065.1.12.1.20
* signature[1].type[0].display = "Electronic Signature"
* signature[1].when = "2026-02-03T10:30:00+08:00"
* signature[1].who = Reference(K1-Practitioner) "Practitioner"
* signature[1].data = "QkFTRTY0X1NJR05BVFVSRV9QQVRJRU5U"

Instance: K1-Practitioner
InstanceOf: PH-Practitioner
Usage: #inline
* meta.profile = "https://nhdr.gov.ph/fhir/StructureDefinition/PH-Practitioner"
* name[0].family = "Santos"
* name[0].given[0] = "Maria"

Instance: K1-Coverage
InstanceOf: PH-Coverage
Usage: #inline
* meta.profile = "https://nhdr.gov.ph/fhir/StructureDefinition/PH-Coverage"
* status = #active
* type.coding[0].system = "http://terminology.hl7.org/CodeSystem/v3-ActCode"
* type.coding[0].code = #EHCPOL
* type.coding[0].display = "extended healthcare"
* beneficiary = Reference(K1-Patient) "Patient"
* payor[0] = Reference(CF1-Organization) "Organization"
// The payor element is not reflected in the UI.

Instance: K1-EnrollmentRequest
InstanceOf: PH-EnrollmentRequest
Usage: #inline
* meta.profile = "https://nhdr.gov.ph/fhir/StructureDefinition/PH-EnrollmentRequest"
* identifier[0].system = "https://nhdr.gov.ph/identifiers/enrollment-request"
* identifier[0].value = "ER-2026-0001"
* created = "2026-02-04"
* insurer = Reference(K2-Organization) "Organization"
* candidate = Reference(K1-Patient) "Patient"
* coverage = Reference(K1-Coverage) "Coverage"

// ======== Konsulta Request for Authorization Transaction Code Form ========

Instance: Konsulta-RequestforAuthorizationTransactionCode
InstanceOf: Bundle
Usage: #example
* type = #transaction
* identifier.system = "http://nhdr.gov.ph/fhir/ValueSet-form-type"
* identifier.value = "Request-for-Authorization-Transaction-Code"
* entry[0].fullUrl = "urn:uuid:patient-2"
* entry[=].resource = K1-Patient
* entry[=].request.method = #POST
* entry[=].request.url = "Patient"
* entry[+].fullUrl = "urn:uuid:organization-2"
* entry[=].resource = K2-Organization
* entry[=].request.method = #POST
* entry[=].request.url = "Organization"
* entry[+].fullUrl = "urn:uuid:provenance-2"
* entry[=].resource = K1-Provenance
* entry[=].request.method = #POST
* entry[=].request.url = "Provenance"
* entry[+].fullUrl = "urn:uuid:appointment-2"
* entry[=].resource = K2-Appointment
* entry[=].request.method = #POST
* entry[=].request.url = "Appointment"

Instance: K2-Organization
InstanceOf: PH_Organization
Usage: #inline
* meta.profile = "https://nhdr.gov.ph/fhir/StructureDefinition/PH-Organization"
* name = "Philippine Health Insurance Corporation"
* contact[0].name.text = "Dr. Maria Santos" 

Instance: K2-Appointment
InstanceOf: PH_Appointment
Usage: #inline
* meta.profile = "https://nhdr.gov.ph/fhir/StructureDefinition/PH-Appointment"
* identifier[0].system = "https://nhdr.gov.ph/fhir/Identifier/appointment-id"
* identifier[0].value = "K2-APPT-0001"
* status = #booked
* created = "2026-03-01T08:30:00+08:00"
* participant[0].actor = Reference(K1-Patient) "Patient"
* participant[0].status = #Accepted


// ======== Konsulta Availment Slip Form ========

Instance: Konsulta-Availment-Slip
InstanceOf: Bundle
Usage: #example
* type = #transaction
* identifier.system = "http://nhdr.gov.ph/fhir/ValueSet-form-type"
* identifier.value = "Konsulta-Availment-Slip"
* entry[0].fullUrl = "urn:uuid:patient-3"
* entry[=].resource = K1-Patient
* entry[=].request.method = #POST
* entry[=].request.url = "Patient"
* entry[+].fullUrl = "urn:uuid:organization-3"
* entry[=].resource = K1-Organization
* entry[=].request.method = #POST
* entry[=].request.url = "Organization"
* entry[+].fullUrl = "urn:uuid:encounter-3"
* entry[=].resource = K3-Encounter
* entry[=].request.method = #POST
* entry[=].request.url = "Encounter"
* entry[+].fullUrl = "urn:uuid:claim-3"
* entry[=].resource = K3-Claim
* entry[=].request.method = #POST
* entry[=].request.url = "Claim"
* entry[+].fullUrl = "urn:uuid:appointment-3"
* entry[=].resource = K3-Appointment
* entry[=].request.method = #POST
* entry[=].request.url = "Appointment"
// * entry[+].fullUrl = "urn:uuid:practitioner-3"
// * entry[=].resource = K1-Practitioner
// * entry[=].request.method = #POST
// * entry[=].request.url = "Practitioner"
// * entry[+].fullUrl = "urn:uuid:provenance-3"
// * entry[=].resource = K3-Provenance
// * entry[=].request.method = #POST
// * entry[=].request.url = "Provenance"
// * entry[+].fullUrl = "urn:uuid:questionnaire-3"
// * entry[=].resource = K3-Questionnaire
// * entry[=].request.method = #POST
// * entry[=].request.url = "Questionnaire"
// * entry[+].fullUrl = "urn:uuid:questionnaireresponse-3"
// * entry[=].resource = K3-QuestionnaireResponse
// * entry[=].request.method = #POST
// * entry[=].request.url = "QuestionnaireResponse"

Instance: K3-Encounter
InstanceOf: PH_Encounter
Usage: #inline
* meta.profile = "https://nhdr.gov.ph/fhir/StructureDefinition/PH-Encounter"
* identifier[0].system = "https://nhdr.gov.ph/fhir/Identifier/encounter-id"
* identifier[0].value = "EN-0001"
* extension[0].url = "https://nhdr.gov.ph/fhir/StructureDefinition/AgeYears"
* extension[0].valueInteger = 35
// * appointment = Reference(K2-Appointment) "Appointment"
* class.system = "http://terminology.hl7.org/CodeSystem/v3-ActCode"
* class.code = #AMB
* status = #booked

Instance: K3-Claim
InstanceOf: PH_Claim
Usage: #inline
* meta.profile = "https://nhdr.gov.ph/fhir/StructureDefinition/PH-Claim"
* identifier[0].system = "https://nhdr.gov.ph/fhir/Identifier/claim-id"
* identifier[0].value = "CLM-0001"
* status = #active
* type.coding[0].system = "http://terminology.hl7.org/CodeSystem/claim-type"
* type.coding[0].code = #professional
* type.coding[0].display = "Professional"
* use = #claim
* created = "2026-03-01T10:15:00+08:00"
* priority.coding[0].system = "http://terminology.hl7.org/CodeSystem/processpriority"
* priority.coding[0].code = #normal
* priority.coding[0].display = "Normal"
* extension[0].url = "https://nhdr.gov.ph/fhir/StructureDefinition/EncounterExtension"
* extension[0].valueReference = Reference(K3-Encounter) "Encounter"
* provider = Reference(K1-Organization) "Organization"
* patient = Reference(K1-Patient) "Patient"
* careTeam[0].sequence = 1
* careTeam[0].provider = Reference(K1-Practitioner) "Practitioner"
* insurance[0].sequence = 1
* insurance[0].focal = true
* insurance[0].coverage = Reference(K1-Coverage) "Coverage"
* item[0].sequence = 1
* item[0].servicedDate = "2026-03-01"
* item[0].productOrService.coding[0].system = "https://nhdr.gov.ph/fhir/CodeSystem/PH-ItemCode"
* item[0].productOrService.coding[0].code = #CONSULT
* item[0].productOrService.coding[0].display = "Consultation Service"


Instance: K3-Appointment
InstanceOf: PH_Appointment
Usage: #inline
* meta.profile = "https://nhdr.gov.ph/fhir/StructureDefinition/PH-Appointment"
* identifier[0].system = "https://nhdr.gov.ph/fhir/Identifier/appointment-id"
* identifier[0].value = "K3-APPT-0001"
* status = #booked
* participant[0].status = #Accepted
// ========== DRAFT Konsulta Prescription Slip Form ========

Instance: Konsulta-Prescription-Slip
InstanceOf: Bundle
Usage: #example
* type = #transaction
* identifier.system = "http://nhdr.gov.ph/fhir/ValueSet-form-type"
* identifier.value = "Konsulta-Availment-Slip"
* entry[0].fullUrl = "urn:uuid:patient-4"
* entry[=].resource = K4-Patient
* entry[=].request.method = #POST
* entry[=].request.url = "Patient"
* entry[+].fullUrl = "urn:uuid:organization-4"
* entry[=].resource = K4-Organization
* entry[=].request.method = #POST
* entry[=].request.url = "Organization"
* entry[+].fullUrl = "urn:uuid:encounter-4"
* entry[=].resource = K4-Encounter
* entry[=].request.method = #POST
* entry[=].request.url = "Encounter"
* entry[+].fullUrl = "urn:uuid:practitioner-4"
* entry[=].resource = K4-Practitioner
* entry[=].request.method = #POST
* entry[=].request.url = "Practitioner"
* entry[+].fullUrl = "urn:uuid:provenance-4"
* entry[=].resource = K4-Provenance
* entry[=].request.method = #POST
* entry[=].request.url = "Provenance"
* entry[+].fullUrl = "urn:uuid:questionnaire-4"
* entry[=].resource = K4-Questionnaire
* entry[=].request.method = #POST
* entry[=].request.url = "Questionnaire"
* entry[+].fullUrl = "urn:uuid:questionnaireresponse-4"
* entry[=].resource = K4-QuestionnaireResponse
* entry[=].request.method = #POST
* entry[=].request.url = "QuestionnaireResponse"
* entry[+].fullUrl = "urn:uuid:medication-4"
* entry[=].resource = K4-Medication
* entry[=].request.method = #POST
* entry[=].request.url = "Medication"
* entry[+].fullUrl = "urn:uuid:medicationdispense-4"
* entry[=].resource = K4-MedicationDispense
* entry[=].request.method = #POST
* entry[=].request.url = "MedicationDispense"
* entry[+].fullUrl = "urn:uuid:medicationrequest-4"
* entry[=].resource = K4-MedicationRequest
* entry[=].request.method = #POST
* entry[=].request.url = "MedicationRequest"

Instance: K4-Patient
InstanceOf: PH_Patient
Usage: #inline
* meta.profile = "https://nhdr.gov.ph/fhir/StructureDefinition/PH-Patient"
* extension[0].url = "https://nhdr.gov.ph/fhir/StructureDefinition/MemberType"
* extension[0].valueCodeableConcept.coding[0].system = "https://nhdr.gov.ph/fhir/ValueSet/MemberTypeVS"
* extension[0].valueCodeableConcept.coding[0].code = #3
* extension[0].valueCodeableConcept.coding[0].display = "INDIGENT"
* extension[1].url = "https://nhdr.gov.ph/fhir/StructureDefinition/PatientType"
* extension[1].valueCodeableConcept.coding[0].system = "https://nhdr.gov.ph/fhir/ValueSet/PatientTypeVS"
* extension[1].valueCodeableConcept.coding[0].code = #MM
* extension[1].valueCodeableConcept.coding[0].display = "Member"
* identifier.system = "http://nhdr.gov.ph/fhir/Identifier/philhealth-id"
* identifier.type.text = "PhilHealth ID"
* identifier.value = "PH-00001"
* name.family = "Senilla"
* name.given[0] = "Quinn"
* name.given[1] = "Ry"
* telecom.system = #phone
* telecom.value = "09456469323"

Instance: K4-Organization
InstanceOf: PH_Organization
Usage: #inline
* meta.profile = "https://nhdr.gov.ph/fhir/StructureDefinition/PH-Organization"
* identifier.type.coding.code = #AN
* identifier.type.text = "PhilHealth Accreditation Number (PAN)"
* identifier.value = "AN199513893"
* name = "6th General Hospital"

Instance: K4-Encounter
InstanceOf: PH_Encounter
Usage: #inline
* meta.profile = "https://nhdr.gov.ph/fhir/StructureDefinition/PH-Encounter"
* identifier[0].system = "https://nhdr.gov.ph/fhir/Identifier/encounter-id"
* identifier[0].value = "EN-0001"
* extension[0].url = "https://nhdr.gov.ph/fhir/StructureDefinition/AgeYears"
* extension[0].valueInteger = 35
// * appointment = Reference(K2-Appointment) "Appointment"
* class.system = "http://terminology.hl7.org/CodeSystem/v3-ActCode"
* class.code = #AMB
* status = #booked

Instance: K4-Practitioner
InstanceOf: PH-Practitioner
Usage: #inline
* meta.profile = "https://nhdr.gov.ph/fhir/StructureDefinition/PH-Practitioner"
* identifier.system = "http://nhdr.gov.ph/fhir/Identifier/PRC-id"
* identifier.type.text = "PRC License Number"
* identifier.value = "PRC-00001"
* name.family = "Dela Cruz"
* name.given[0] = "Sheena"
* name.given[+] = "Abesamis"

Instance: K4-Provenance
InstanceOf: PH-Provenance
Usage: #inline
* meta.profile = "https://nhdr.gov.ph/fhir/StructureDefinition/PH-Provenance"
* target[0] = Reference(K4-Patient) "Patient"
* recorded = "2026-02-03T09:00:00+08:00"
* agent[0].who = Reference(K4-Organization) "Organization"
* signature[0].type[0].system = "urn:iso-astm:E1762-95:2013"
* signature[0].type[0].code = #1.2.840.10065.1.12.1.20
* signature[0].type[0].display = "Electronic Signature"
* signature[0].when = "2026-02-03T10:30:00+08:00"
* signature[0].who = Reference(K4-Patient) "Patient"
* signature[0].data = "QkFTRTY0X1NJR05BVFVSRV9QQVRJRU5U"

* signature[1].type[0].system = "urn:iso-astm:E1762-95:2013"
* signature[1].type[0].code = #1.2.840.10065.1.12.1.20
* signature[1].type[0].display = "Electronic Signature"
* signature[1].when = "2026-02-03T10:30:00+08:00"
* signature[1].who = Reference(K4-Practitioner) "Practitioner"
* signature[1].data = "QkFTRTY0X1NJR05BVFVSRV9QQVRJRU5U"

Instance: K4-Questionnaire
InstanceOf: PH_Questionnaire
Usage: #inline
* meta.profile = "https://nhdr.gov.ph/fhir/StructureDefinition/PH-Questionnaire"
* status = #active
* item[0].linkId = "K4-Q1"
* item[0].text = "Have you received the above-mentioned medicines? [Y|N]"
* item[0].type = #boolean
* item[1].linkId = "K4-Q2"
* item[1].text = "How satisfied are you with the medicines you received?"
* item[1].type = #string
* item[2].linkId = "K4-Q3"
* item[2].text = "For your comment, suggestion or complaint"
* item[2].type = #string

Instance: K4-QuestionnaireResponse
InstanceOf: PH_QuestionnaireResponse
Usage: #inline
* meta.profile = "https://nhdr.gov.ph/fhir/StructureDefinition/PH-QuestionnaireResponse"
* status = #completed
* item[0].linkId = "K4-Q1"
* item[0].answer[0].valueBoolean = true
* item[1].linkId = "K4-Q2"
* item[1].answer[0].valueString = "Very satisfied"
* item[2].linkId = "K4-Q3"
* item[2].answer[0].valueString = "Medicines were available and properly explained by the provider."

Instance: K4-Medication
InstanceOf: PH_Medication
Usage: #inline
* meta.profile = "https://nhdr.gov.ph/fhir/StructureDefinition/PH-Medication"
* code.coding.system = "https://nhdr.gov.ph/fhir/ValueSet/DrugCodesVS"
* code.coding.code = #10544-165
* code.coding.display = "Amoxicillin"
* form.coding.system = "http://terminology.hl7.org/ValueSet/v3-OrderableDrugForm"
* form.coding.code = #TAB
* form.coding.display = "Tablet"
* ingredient[0].itemCodeableConcept.coding.system = "https://nhdr.gov.ph/fhir/ValueSet/DrugCodesVS"
* ingredient[0].itemCodeableConcept.coding.code = #10544-165
* ingredient[0].itemCodeableConcept.coding.display = "Amoxicillin"
* ingredient[0].strength.numerator.value = 500
* ingredient[0].strength.numerator.unit = "mg"
* ingredient[0].strength.denominator.value = 1
* ingredient[0].strength.denominator.unit = "tablet"

Instance: K4-MedicationDispense
InstanceOf: PH_MedicationDispense
Usage: #inline
* meta.profile = "https://nhdr.gov.ph/fhir/StructureDefinition/PH-MedicationDispense"
* status = #completed
* medicationCodeableConcept.coding.system = "https://nhdr.gov.ph/fhir/ValueSet/DrugCodesVS"
* medicationCodeableConcept.coding.code = #10544-165
* medicationCodeableConcept.coding.display = "Amoxicillin 500 mg Capsule"
* medicationCodeableConcept.text = "Amoxicillin 500 mg Capsule"
* note.text = "Dispensed after outpatient consultation"

Instance: K4-MedicationRequest
InstanceOf: PH_MedicationRequest
Usage: #inline
* meta.profile = "https://nhdr.gov.ph/fhir/StructureDefinition/PH-MedicationRequest"
* identifier.system = "http://nhdr.gov.ph/fhir/Identifier/medication-request"
* identifier.value = "MR-00001"
* status = #active
* intent = #order
* medicationReference = Reference(K4-Medication)
* subject = Reference(K4-Patient)
* requester = Reference(K4-Practitioner) 
* encounter = Reference(K4-Encounter) 

// ========== DRAFT Konsulta-Health-Screening/FPE Form ========

Instance: Konsulta-Health-Screening-FPE
InstanceOf: Bundle
Usage: #example
* type = #transaction
* identifier.system = "http://nhdr.gov.ph/fhir/ValueSet-form-type"
* identifier.value = "Konsulta-Availment-Slip"
* entry[0].fullUrl = "urn:uuid:patient-5"
* entry[=].resource = K5-Patient
* entry[=].request.method = #POST
* entry[=].request.url = "Patient"
* entry[+].fullUrl = "urn:uuid:encounter-5"
* entry[=].resource = K5-Encounter
* entry[=].request.method = #POST
* entry[=].request.url = "Encounter"
* entry[+].fullUrl = "urn:uuid:observation-5"
* entry[=].resource = K5-Observation-Female-Physiology
* entry[=].request.method = #POST   
* entry[=].request.url = "Observation"
* entry[+].fullUrl = "urn:uuid:observation-5"
* entry[=].resource = K5-Observation-PPE
* entry[=].request.method = #POST   
* entry[=].request.url = "Observation"
* entry[+].fullUrl = "urn:uuid:observation-5"
* entry[=].resource = K5-Observation-Pediatric-Client
* entry[=].request.method = #POST   
* entry[=].request.url = "Observation"
* entry[+].fullUrl = "urn:uuid:observation-5"
* entry[=].resource = K5-Observation-Blood-Type
* entry[=].request.method = #POST   
* entry[=].request.url = "Observation"
* entry[+].fullUrl = "urn:uuid:observation-5"
* entry[=].resource = K5-Observation-General-Survey
* entry[=].request.method = #POST   
* entry[=].request.url = "Observation"
* entry[+].fullUrl = "urn:uuid:questionnaire-5"
* entry[=].resource = K5-Questionnaire
* entry[=].request.method = #POST
* entry[=].request.url = "Questionnaire"
* entry[+].fullUrl = "urn:uuid:questionnaireresponse-5"
* entry[=].resource = K5-QuestionnaireResponse
* entry[=].request.method = #POST
* entry[=].request.url = "QuestionnaireResponse"

Instance: K5-Patient
InstanceOf: PH_Patient
Usage: #inline
* meta.profile = "https://nhdr.gov.ph/fhir/StructureDefinition/PH-Patient"
* extension[0].url = "https://nhdr.gov.ph/fhir/StructureDefinition/PatientType"
* extension[0].valueCodeableConcept.coding[0].system = "https://nhdr.gov.ph/fhir/ValueSet/PatientTypeVS"
* extension[0].valueCodeableConcept.coding[0].code = #MM
* extension[0].valueCodeableConcept.coding[0].display = "Member"
* extension[1].url = "https://nhdr.gov.ph/fhir/StructureDefinition/Sex"
* extension[1].valueCodeableConcept.coding[0].system = "https://nhdr.gov.ph/fhir/ValueSet/Sex"
* extension[1].valueCodeableConcept.coding[0].code = #M
* extension[1].valueCodeableConcept.coding[0].display = "Male"
* identifier.system = "http://nhdr.gov.ph/fhir/Identifier/philhealth-id"
* identifier.type.text = "PhilHealth ID"
* identifier.value = "PH-00001"
* name.family = "Senilla"
* name.given[0] = "Quinn"
* name.given[1] = "Ry"
* birthDate = "1998-07-08"
* telecom.system = #phone
* telecom.value = "09456469323"
* photo.contentType = #image/jpeg
* photo.url = "input/images/CF1.png"
// * photo.url = "https://example.org/photos/patient-k5.jpg"

Instance: K5-Encounter
InstanceOf: PH_Encounter
Usage: #inline
* meta.profile = "https://nhdr.gov.ph/fhir/StructureDefinition/PH-Encounter"
* identifier[0].system = "https://nhdr.gov.ph/fhir/Identifier/encounter-id"
* identifier[0].value = "EN-0001"
* extension[0].url = "https://nhdr.gov.ph/fhir/StructureDefinition/AgeYears"
* extension[0].valueInteger = 35
// * appointment = Reference(K2-Appointment) "Appointment"
* class.system = "http://terminology.hl7.org/CodeSystem/v3-ActCode"
* class.code = #AMB
* status = #booked
* period.start = "2026-03-02T09:00:00+08:00"
* subject = Reference(K5-Patient)
* reasonReference[0] = Reference(K5-Observation-PPE)

Instance: K5-Observation-Female-Physiology
InstanceOf: PH_Observation
Usage: #inline
* meta.profile = "https://nhdr.gov.ph/fhir/StructureDefinition/PH-Observation"
* status = #final
* code.coding.system = "http://loinc.org"
* code.coding.code = #11111
* code.coding.display = "Female Physiology"
* valueString = "Lower abdominal pain and dizziness"

// Component 0: Observation period info
* component[0].code.text = "First menstrual Period"
* component[0].valuePeriod.start = "2026-02-20T08:30:00+08:00"
* component[1].code.text = "Last menstrual Period"
* component[1].valuePeriod.end = "2026-02-20T08:45:00+08:00"
* component[2].code.text = "Number of Pregnancies"
* component[2].valueInteger = 3

Instance: K5-Observation-PPE
InstanceOf: PH_Observation
Usage: #inline
* meta.profile = "https://nhdr.gov.ph/fhir/StructureDefinition/PH-Observation"
* status = #final
* code.coding.system = "http://loinc.org"
* code.coding.code = #22222
* code.coding.display = "Pertinent Physical Examination"
* component[0].code.text = "Blood Pressure"
* component[0].valueString = "120/80 mmHg"
* component[1].code.text = "Heart Rate"
* component[1].valueQuantity.value = 72
* component[1].valueQuantity.unit = "beats/minute"
* component[2].code.text = "Respiratory Rate"
* component[2].valueQuantity.value = 18
* component[2].valueQuantity.unit = "breaths/minute"
* component[3].code.text = "Visual Acuity"
* component[3].valueRatio.numerator.value = 20
* component[3].valueRatio.denominator.value = 20
* component[4].code.text = "Height (cm)"
* component[4].valueQuantity.unit = "cm"
* component[4].valueQuantity.value = 165
* component[5].code.text = "Height (in)"
* component[5].valueQuantity.unit = "in"
* component[5].valueQuantity.value = 64.96
* component[6].code.text = "Weight (kg)"
* component[6].valueQuantity.unit = "kg"
* component[6].valueQuantity.value = 60 
* component[7].code.text = "Weight (lb)"
* component[7].valueQuantity.unit = "lb"
* component[7].valueQuantity.value = 132.28
* component[8].code.text = "BMI"
* component[8].valueQuantity.value = 22.0
* component[9].code.text = "Temperature"
* component[9].valueQuantity.value = 36.8

Instance: K5-Observation-Pediatric-Client
InstanceOf: PH_Observation
Usage: #inline
* meta.profile = "https://nhdr.gov.ph/fhir/StructureDefinition/PH-Observation"
* status = #final
* code.coding.system = "http://loinc.org"
* code.coding.code = #33333
* code.coding.display = "Pediatric Client aged 0-24 months"
* component[0].code.text = "Length"
* component[0].valueQuantity.value = 75
* component[0].valueQuantity.unit = "cm"
* component[1].code.text = "Head Circumference"
* component[1].valueQuantity.value = 46
* component[1].valueQuantity.unit = "cm"
* component[2].code.text = "Skinfold Thickness"
* component[2].valueQuantity.value = 1.2
* component[2].valueQuantity.unit = "cm"
* component[3].code.text = "Body Circumference - Waist"
* component[3].valueQuantity.value = 48
* component[3].valueQuantity.unit = "cm"
* component[4].code.text = "Body Circumference - Hip"
* component[4].valueQuantity.value = 50
* component[4].valueQuantity.unit = "cm"
* component[5].code.text = "Body Circumference - Middle and Upper Arm"
* component[5].valueQuantity.value = 14
* component[5].valueQuantity.unit = "cm"

Instance: K5-Observation-Blood-Type
InstanceOf: PH_Observation
Usage: #inline
* meta.profile = "https://nhdr.gov.ph/fhir/StructureDefinition/PH-Observation"
* status = #final
* code.coding.system = "http://loinc.org"
* code.coding.code = #882-1
* code.coding.display = "ABO and Rh blood group"
* valueCodeableConcept.coding[0].system = "http://terminology.hl7.org/CodeSystem/v2-0004"
* valueCodeableConcept.coding[0].code = #O+
* valueCodeableConcept.coding[0].display = "O Positive"

Instance: K5-Observation-General-Survey
InstanceOf: PH_Observation
Usage: #inline
* meta.profile = "https://nhdr.gov.ph/fhir/StructureDefinition/PH-Observation"
* status = #final
* code.coding.system = "http://loinc.org"
* code.coding.code = #89205-8
* code.coding.display = "General Survey"
* valueCodeableConcept.coding[0].system = "https://nhdr.gov.ph/fhir/ValueSet/ObservationValueVS"
* valueCodeableConcept.coding[0].code = #AbdominalCrampPain
* valueCodeableConcept.coding[0].display = "ABDOMINAL CRAMP/PAIN"

Instance: K5-Questionnaire
InstanceOf: PH_Questionnaire
Usage: #inline
* meta.profile = "https://nhdr.gov.ph/fhir/StructureDefinition/PH-Questionnaire"
* status = #active
* item[0].linkId = "K5-Q1"
* item[0].text = "Do you experience any of the following: fever, cough, colds, or headache?"
* item[0].type = #boolean

* item[1].linkId = "K5-Q2"
* item[1].text = "If yes, please explain"
* item[1].type = #string
* item[1].enableWhen[0].question = "K5-Q1"
* item[1].enableWhen[0].operator = #=
* item[1].enableWhen[0].answerBoolean = true

* item[2].linkId = "K5-Q3"
* item[2].text = "Do you experience any of the following: unexplained change in weight, loss of appetite, change in bowel movement, or abdominal pain?"
* item[2].type = #boolean

* item[3].linkId = "K5-Q4"
* item[3].text = "If yes, please explain"
* item[3].type = #string
* item[3].enableWhen[0].question = "K5-Q3"
* item[3].enableWhen[0].operator = #=
* item[3].enableWhen[0].answerBoolean = true

* item[4].linkId = "K5-Q5"
* item[4].text = "Do you experience any of the following: chest pain or difficulty in breathing?"
* item[4].type = #boolean

* item[5].linkId = "K5-Q6"
* item[5].text = "If yes, please explain"
* item[5].type = #string
* item[5].enableWhen[0].question = "K5-Q5"
* item[5].enableWhen[0].operator = #=
* item[5].enableWhen[0].answerBoolean = true

* item[6].linkId = "K5-Q7"
* item[6].text = "Do you experience any of the following: frequent urination, frequent eating, frequent intake of fluids, smoking, and drinking alcohol?"
* item[6].type = #boolean

* item[7].linkId = "K5-Q8"
* item[7].text = "If yes, please explain"
* item[7].type = #string
* item[7].enableWhen[0].question = "K5-Q7"
* item[7].enableWhen[0].operator = #=
* item[7].enableWhen[0].answerBoolean = true

* item[8].linkId = "K5-Q9"
* item[8].text = "For male and female, do you experience any of the following: pain or discomfort on urination or frequency of urination?"
* item[8].type = #boolean

* item[9].linkId = "K5-Q10"
* item[9].text = "If yes, please explain"
* item[9].type = #string
* item[9].enableWhen[0].question = "K5-Q9"
* item[9].enableWhen[0].operator = #=
* item[9].enableWhen[0].answerBoolean = true

Instance: K5-QuestionnaireResponse
InstanceOf: PH_QuestionnaireResponse
Usage: #inline
* meta.profile = "https://nhdr.gov.ph/fhir/StructureDefinition/PH-QuestionnaireResponse"
* status = #completed

* item[0].linkId = "K5-Q1"
* item[0].answer[0].valueBoolean = true

* item[1].linkId = "K5-Q2"
* item[1].answer[0].valueString = "Fever and headache for 2 days"

* item[2].linkId = "K5-Q3"
* item[2].answer[0].valueBoolean = false

* item[3].linkId = "K5-Q5"
* item[3].answer[0].valueBoolean = false

* item[4].linkId = "K5-Q7"
* item[4].answer[0].valueBoolean = true

* item[5].linkId = "K5-Q8"
* item[5].answer[0].valueString = "Occasional drinking alcohol"

* item[6].linkId = "K5-Q9"
* item[6].answer[0].valueBoolean = false


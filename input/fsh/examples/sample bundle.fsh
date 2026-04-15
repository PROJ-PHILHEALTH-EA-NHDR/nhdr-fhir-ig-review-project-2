//  This is a sample bundle that properly validates references using urn:uuids. This can be tested in a fresh FHIR server without profiles.

Alias: $v2-0203 = http://terminology.hl7.org/CodeSystem/v2-0203
Alias: $v2-0131 = http://terminology.hl7.org/CodeSystem/v2-0131
Alias: $claim-type = http://terminology.hl7.org/CodeSystem/claim-type
Alias: $processpriority = http://terminology.hl7.org/CodeSystem/processpriority
Alias: $payeetype = http://terminology.hl7.org/CodeSystem/payeetype

Instance: Test-Bundle
InstanceOf: Bundle
Usage: #example
* type = #transaction
* identifier.system = "http://nhdr.gov.ph/fhir/ValueSet-form-type"
* identifier.value = "CF1"
* entry[0].fullUrl = "urn:uuid:550e8400-e29b-41d4-a716-446655440000"
* entry[=].resource = 550e8400-e29b-41d4-a716-446655440000
* entry[=].request.method = #POST
* entry[=].request.url = "Patient"
* entry[+].fullUrl = "urn:uuid:550e8400-e29b-41d4-a716-446655440001"
* entry[=].resource = 550e8400-e29b-41d4-a716-446655440001
* entry[=].request.method = #POST
* entry[=].request.url = "RelatedPerson"
* entry[+].fullUrl = "urn:uuid:550e8400-e29b-41d4-a716-446655440002"
* entry[=].resource = 550e8400-e29b-41d4-a716-446655440002
* entry[=].request.method = #POST
* entry[=].request.url = "Organization"
* entry[+].fullUrl = "urn:uuid:550e8400-e29b-41d4-a716-446655440003"
* entry[=].resource = questionnaire-3
* entry[=].request.method = #POST
* entry[=].request.url = "Questionnaire"
* entry[+].fullUrl = "urn:uuid:550e8400-e29b-41d4-a716-446655440004"
* entry[=].resource = questionnaireresponse-3
* entry[=].request.method = #POST
* entry[=].request.url = "QuestionnaireResponse"
* entry[+].fullUrl = "urn:uuid:550e8400-e29b-41d4-a716-446655440005"
* entry[=].resource = coverage-3
* entry[=].request.method = #POST
* entry[=].request.url = "Coverage"
* entry[+].fullUrl = "urn:uuid:550e8400-e29b-41d4-a716-446655440006"
* entry[=].resource = claim-3
* entry[=].request.method = #POST
* entry[=].request.url = "Claim"

Instance: 550e8400-e29b-41d4-a716-446655440000
InstanceOf: Patient
Usage: #inline
* identifier.type = $v2-0203#NIIP
* identifier.type.text = "PhilHealth Identification Number"
* identifier.value = "PH12345"
* name.family = "Manipol"
* name.given[0] = "Antonio Jerome"
* name.given[+] = "Morales"
* name.suffix = "Mr."
* birthDate = "1994-02-25"
* contact.relationship = $v2-0131#E "Employer"
* contact.organization = Reference(urn:uuid:550e8400-e29b-41d4-a716-446655440002)

Instance: 550e8400-e29b-41d4-a716-446655440001
InstanceOf: RelatedPerson
Usage: #inline
* identifier.type = $v2-0203#NIIP
* identifier.type.text = "PhilHealth Identification Number"
* identifier.value = "PH54321"
* patient = Reference(urn:uuid:550e8400-e29b-41d4-a716-446655440000)
* name.family = "Bautista"
* name.given[0] = "Lorna Mae"
* name.given[+] = "Santos"
* name.suffix = "Mrs."
* birthDate = "1971-02"
* address.line = "Fordham Road"
* address.country = "PH"
* address.postalCode = "1110"
* telecom[0].value = "912-00-00"
* telecom[=].system = #phone
* telecom[+].value = "0927-000-0000"
* telecom[=].system = #phone
* telecom[+].value = "lmbautista@email.com"
* telecom[=].system = #email

Instance: 550e8400-e29b-41d4-a716-446655440002
InstanceOf: Organization
Usage: #inline
* identifier.type = $v2-0203#EN
* identifier.type.text = "PhilHealth Employer Number (PEN)"
* identifier.value = "EN15243"
* telecom.system = #phone
* telecom.value = "080-00-00"
* name = "PhilHealth"

Instance: questionnaire-3
InstanceOf: Questionnaire
Usage: #inline
* item.linkId = "1"
* item.text = "Patient is the member?"
* item.type = #boolean
* status = #active

Instance: questionnaireresponse-3
InstanceOf: QuestionnaireResponse
Usage: #inline
* item.linkId = "1"
* item.text = "Patient is the member?"
* item.answer.valueBoolean = false
* status = #in-progress

Instance: coverage-3
InstanceOf: Coverage
Usage: #inline
* status = #active
* beneficiary = Reference(urn:uuid:550e8400-e29b-41d4-a716-446655440000)
* payor = Reference(urn:uuid:550e8400-e29b-41d4-a716-446655440002)

Instance: claim-3
InstanceOf: Claim
Usage: #inline
* status = #active
* type = $claim-type#vision
* use = #claim
* patient = Reference(urn:uuid:550e8400-e29b-41d4-a716-446655440000)
* created = "2025-07-03"
* provider = Reference(urn:uuid:550e8400-e29b-41d4-a716-446655440002)
* priority = $processpriority#normal
* payee.type = $payeetype#provider
* payee.party = Reference(urn:uuid:550e8400-e29b-41d4-a716-446655440002)
* insurance.sequence = 1
* insurance.focal = true
* insurance.coverage = Reference(coverage-3)
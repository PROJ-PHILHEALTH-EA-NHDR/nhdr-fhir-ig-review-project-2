{% include table-layout.html %}
{% include form-popup.html %}
<ul class="nav nav-tabs">
    <li><a href="K3.html">Content</a></li>
    <li class="active"><a href="#">Mappings</a></li>
    <li><a href="K3-json.html">JSON</a></li>
</ul>

### Mapped Fields

| <center>Form Field</center> | <center>Use-Case Mapping<br>/ Target Element</center> | <center>Data Type</center> | <center>Cardinality</center> | <center>Notes</center> |
|:---------|:---------|:--------|:--------:|:----------|
| **To be filled out by the facility** | | | | |
| Consent Confirmation | Questionnaire.item.text | string | 0..1 | |
| HCI Name | Claim.provider | Reference([PH_Organization](StructureDefinition-PH-Organization.html)) | 1..1 | |
| <center>►</center>  | Organization.name | string |  |  |
| Case Number | Claim.encounter | Reference([PH_Encounter](StructureDefinition-PH-Encounter.html)) | 0..* | |
| <center>►</center>  | Encounter.identifier | identifier |  |  |
| HCI Accreditation Number | Claim.provider| Reference([PH_Organization](StructureDefinition-PH-Organization.html)) | 1..1 | |
| <center>►</center>  | Organization.Identifier | identifier |  | DOH fhudcode |
| Transaction Number | Claim.identifier | identifier | 0..1 |  |
| PhilHealth Identification Number (PIN) | Claim.patient | Reference([PH_Patient](StructureDefinition-PH_Patient.html)) | 1..1 | |
| <center>►</center>  | Patient.identifier | identifier |  | PhilHealth ID |
| Membership Category | Claim.patient | Reference([PH_Patient](StructureDefinition-PH_Patient.html)) | 1..1 | |
| <center>►</center>  | Patient.MemberType | codeableConcept |  | ValueSet: [MemberType](ValueSet-MemberTypeVS.html) |
| Patient Name (Last Name) | Claim.patient | Reference([PH_Patient](StructureDefinition-PH_Patient.html)) | 1..1 | |
| <center>►</center>  | Patient.name.family | string |  |  |
| Patient Name (First Name) | Claim.patient | Reference([PH_Patient](StructureDefinition-PH_Patient.html)) | 1..1 | |
| <center>►</center>  | Patient.name.given | string |  |  |
| Patient Name (Name Extension) | Claim.patient | Reference([PH_Patient](StructureDefinition-PH_Patient.html)) | 1..1 | |
| <center>►</center>  | Patient.name.suffix | string |  |  |
| Patient Name (Middle Name) | Claim.patient | Reference([PH_Patient](StructureDefinition-PH_Patient.html)) | 1..1 | |
| <center>►</center>  | Patient.name.given | string |  |  |
| Age | Claim.encounter | Reference([PH_Encounter](StructureDefinition-PH-Encounter.html)) | 0..1 | |
| <center>►</center>  | Encounter.ageYears | integer |  |  |
| Contact Number | Claim.patient | Reference([PH_Patient](StructureDefinition-PH_Patient.html)) | 1..1 | |
| <center>►</center>  | Patient.telecom.value | string |  |  |
| Membership Type | Claim.patient | Reference([PH_Patient](StructureDefinition-PH_Patient.html)) | 1..1 | |
| <center>►</center>  | Patient.type | codeableConcept |  | ValueSet: [PatientType](ValueSet-PatientTypeVS.html) |
| Authorization Transaction Code | Claim.encounter | Reference([PH_Encounter](StructureDefinition-PH-Encounter.html)) | 0..1 |  |
| <center>►</center>  | Encounter.appointment | Reference([PH_Appointment](StructureDefinition-PH-Appointment.html)) |  |  |
| <center>►</center>  | Appointment.identifier | identifier |  |  |
| Konsulta Services | Claim.item.productOrService | codeableConcept |  | |
| Performed? [check - x] | Questionnaire.item.text | string | 0..1 | |
| Date Performed | Claim.item.serviced[x] | date | 0..1 | |
| Performed by (Last Name) | Claim.careTeam.provider | Reference([PH_Practitioner](StructureDefinition-PH_Practitioner.html)) | 1..1 | |
| <center>►</center>  | Practitioner.name.family | string |  |  |
| Performed by (First Name) | Claim.careTeam.provider | Reference([PH_Practitioner](StructureDefinition-PH_Practitioner.html)) | 1..1 | |
| <center>►</center>  | Practitioner.name.given | string |  |  |
| Performed by (Name Extension) | Claim.careTeam.provider | Reference([PH_Practitioner](StructureDefinition-PH_Practitioner.html)) | 1..1 | |
| <center>►</center>  | Practitioner.name.suffix | string |  |  |
| Performed by (Middle Name) | Claim.careTeam.provider | Reference([PH_Practitioner](StructureDefinition-PH_Practitioner.html)) | 1..1 | |
| <center>►</center>  | Practitioner.name.given | string |  |  |
| **To be filled out by the patient** | | | | |
| Have you received the above-mentioned essential service? [Y or N] | Questionnaire.item.text | string | 0..1 | |
| How satisfied are you with the services provided? | Questionnaire.item.text | string | 0..1 | |
| For your comment, suggestion or complaint | Questionnaire.item.text | string | 0..1 | |
| PhilHealth Identification Number of Patient | Claim.patient | Reference([PH_Patient](StructureDefinition-PH_Patient.html)) | 1..1 | |
| <center>►</center>  | Patient.identifier | identifier |  | PhilHealth ID |
| **Patient Name** over Signature | Provenance.signature.who | Reference([PH_Patient](StructureDefinition-PH_Patient.html)) | 1..1 | |
| <center>►</center>  | Patient.name | HumanName |  |  |
| Patient Name over **Signature** | Provenance.signature.data | base64Binary | 0..1 | |
| Thumbmark Print | Provenance.signature.data | base64Binary | 0..1 | |

### Mandatory Elements Not in the Form

| <center>Use-Case Mapping / Target Element</center> | <center>Data Type</center> | <center>Notes</center> |
|:---------|:---------|:--------|
| Claim.status | code |  |
| Claim.type | CodeableConcept |  |
| Claim.use | code |  |
| Claim.created | dateTime |  |
| Claim.priority | CodeableConcept |  |
| Claim.careTeam.sequence | positiveInt |  |
| Claim.insurance |  |  |
| Claim.insurance.sequence | positiveInt |  |
| Claim.insurance.focal | boolean |  |
| Claim.insurance.coverage | Reference([PH_Coverage](StructureDefinition-PH_Coverage.html)) |  |
| Claim.item.sequence | positiveInt |  |
| Provenance.signature.type | coding |  |
| Provenance.target | Reference(Any) |  |
| Provenance.recorded | instant |  |
| Provenance.agent |  |  |
| Provenance.agent.who | Reference([PH_Organization](StructureDefinition-PH_Organization.html)) |  |
| Organization.name | string |  |
| Provenance.signature.when | instant |  |
| Questionnaire.status | code |  |
| Questionnaire.item.linkId | string |  |
| Questionnaire.item.type | code |  |
| Encounter.status | code |  |
| Encounter.class | coding |  |
| Appointment.status | code |  |
| Appointment.participant.status | code |  |
| Coverage.status | code |  |
| Coverage.beneficiary | Reference([PH_Patient](StructureDefinition-PH_Patient.html)) |  |
| Coverage.payor | Reference([PH_RelatedPerson](StructureDefinition-PH_RelatedPerson.html)) |  |
| Coverage.costToBeneficiary.value[x] | SimpleQuantity, Money |  |


{% include table-layout.html %}
{% include form-popup.html %}
<ul class="nav nav-tabs">
    <li><a href="K4.html">Content</a></li>
    <li class="active"><a href="#">Mappings</a></li>
    <li><a href="K4-json.html">JSON</a></li>
</ul>

### Mapped Fields

| <center>Form Field</center> | <center>Use-Case Mapping<br>/ Target Element</center> | <center>Data Type</center> | <center>Cardinality</center> | <center>Notes</center> |
|:---------|:---------|:--------|:--------:|:----------|
| **To be filled-out by the facility** | | | | |
| HCI Name | MedicationRequest.requester | Reference([PH_Organization](StructureDefinition-PH-Organization.html)) | 0..1 | |
| <center>►</center>  | Organization.name | string | 0..1 |  |
| Case Number | MedicationRequest.encounter | Reference([PH_Encounter](StructureDefinition-PH_Encounter.html)) | 0..1 | |
| <center>►</center>  | Encounter.identifier | Identifier | 0..* |  |
| HCI Accreditation Number | MedicationRequest.requester | Reference([PH_Organization](StructureDefinition-PH-Organization.html)) | 0..1 | |
| <center>►</center>  | Organization.identifier | Identifier | 0..* |  |
| Transaction Number | MedicationRequest.identifier | Identifier | 0..* | |
| PhilHealth Identification Number (PIN) | MedicationRequest.subject | Reference([PH_Patient](StructureDefinition-PH_Patient.html)) | 1..1 | |
| <center>►</center>  | Patient.identifier | Identifier | 0..* |  |
| Membership Category | MedicationRequest.subject | Reference([PH_Patient](StructureDefinition-PH_Patient.html)) | 1..1 | |
| <center>►</center>  | Patient.memberType | Codeableconcept |  | ValueSet: [MemberType](ValueSet-MemberTypeVS.html) |
| Membership Type | MedicationRequest.subject | Reference([PH_Patient](StructureDefinition-PH_Patient.html)) | 1..1 | |
| <center>►</center>  | Patient.type | Codeableconcept |  | ValueSet: [PatientType](ValueSet-PatientTypeVS.html) |
| Patient Name (Last Name) | MedicationRequest.subject | Reference([PH_Patient](StructureDefinition-PH_Patient.html)) | 1..1 | |
| <center>►</center>  | Patient.name.family | string | 0..1 |  |
| Patient Name (First Name) | MedicationRequest.subject | Reference([PH_Patient](StructureDefinition-PH_Patient.html)) | 1..1 | |
| <center>►</center>  | Patient.name.given | string | 0..* |  |
| Patient Name (Name extension) | MedicationRequest.subject | Reference([PH_Patient](StructureDefinition-PH_Patient.html)) | 1..1 | |
| <center>►</center>  | Patient.name.suffix | string | 0..* |  |
| Patient Name (Middle Name) | MedicationRequest.subject | Reference([PH_Patient](StructureDefinition-PH_Patient.html)) | 1..1 | |
| <center>►</center>  | Patient.name.given | string | 0..* |  |
| Age | MedicationRequest.encounter | Reference([PH_Encounter](StructureDefinition-PH_Encounter.html)) | 0..1 | |
| <center>►</center>  | Encounter.ageYears | integer |  |  |
| Contact Number | MedicationRequest.subject | Reference([PH_Patient](StructureDefinition-PH_Patient.html)) | 1..1 | |
| <center>►</center>  | Patient.telecom.value | string |  |  |
| Active Ingredient/Medicine (Generic Name) | MedicationRequest.medication[x] | CodeableConcept | 1..1 | ValueSet: [DrugCodes](ValueSet-DrugCodesVS.html) |
| Quantity | MedicationRequest.dispenseRequest.quantity | SimpleQuantity | 0..1 |  |
| Dosage form (e.g. capsule, tablet) | MedicationRequest.medication[x] | Reference([PH_Medication](StructureDefinition-PH_Medication.html)) | 1..1 |  |
| <center>►</center>  | Medication.form | Codeableconcept | 0..1 | ValueSet: [OrderDrugForm](ValueSet-OrderableDrugForm.html) |
| Strength (mg,ml) | MedicationRequest.medication[x] | Reference([PH_Medication](StructureDefinition-PH_Medication.html)) | 1..1 |  |
| <center>►</center>  | Medication.ingredient.strength | Ratio | 0..1 |  |
| Frequency | MedicationRequest.dosageInstruction.timing | Timing | 0..1 |  |
| Next Dispensing Date | MedicationRequest.supportingInformation | Reference(Any) | 0..* |  |
| <center>►</center>  | MedicationDispense.note.text | Ratio | 0..* |  |
| Physician (Name) | MedicationRequest.requester | Reference([PH_Practitioner](StructureDefinition-PH_Practitioner.html)) | 0..1 |  |
| <center>►</center>  | Practitioner.name | HumanName | 0..* |  |
| Physician (Signature) | Provenance.signature.who | Reference([PH_Practitioner](StructureDefinition-PH_Practitioner.html)) | 1..1 |  |
| <center>►</center>  | Practitioner.name | HumanName | 0..* |  |
| PRC License Number | MedicationRequest.requester | Reference([PH_Practitioner](StructureDefinition-PH_Practitioner.html)) | 0..1 |  |
| <center>►</center>  | Practitioner.identifier | Identifier | 0..* |  |
| PTR Number | MedicationRequest.requester | Reference([PH_Practitioner](StructureDefinition-PH_Practitioner.html)) | 0..1 |  |
| <center>►</center>  | Practitioner.identifier | Identifier | 0..* |  |
| S2 Number | MedicationRequest.requester | Reference([PH_Practitioner](StructureDefinition-PH_Practitioner.html)) | 0..1 |  |
| <center>►</center>  | Practitioner.identifier | Identifier | 0..* |  |
| **To be filled out by the Patient** | | | | |
| Have you received the above-mentioned medicines? [Y,N] | Questionnaire.item.text | string | 0..* | |
| How satisfied are you with the medicines you received? | Questionnaire.item.text | string | 0..* | |
| For your comment, suggestion or complaint | Questionnaire.item.text | string | 0..* | |
| PhilHealth Identification Number of Patient | MedicationRequest.subject | Reference([PH_Patient](StructureDefinition-PH_Patient.html)) | 1..1 | |
| <center>►</center>  | Practitioner.identifier | Identifier | 0..* |  |
| Patient **Signature** Over Printed Name | Provenance.signature.data | base64Binary | 0..1 | |
| Patient Signature Over **Printed Name** | Provenance.signature.who | Reference([PH_Patient](StructureDefinition-PH_Patient.html)) | 1..1 | |
| <center>►</center>  | Patient.name | HumanName | 0..* |  |
| Patient (thumbprint) | Provenance.signature.data | base64Binary | 0..1 | |

### Mandatory Elements Not in the Form

| <center>Use-Case Mapping / Target Element</center> | <center>Data Type</center> | <center>Notes</center> |
|:---------|:---------|:--------|
| Provenance.Signature.type | Coding |  |
| Provenance.Signature.when | instant |  |
| Provenance.target | Reference([PH_MedicationRequest](StructureDefinition-PH_MedicationRequest.html)) |  |
| Provenance.agent.who | Reference(Practitioner, PractitionerRole, RelatedPerson, Patient, Device, Organization) |  |
| Provenance.entity.role | code |  |
| Provenance.entity.what | Reference(Any) |  |
| Provenance.recorded | instant |  |
| MedicationRequest.status | code |  |
| MedicationRequest.intent | code |  |
| MedicationRequest.substitution.allowed[x] | boolean,CodeableConcept |  |
| Questionnaire.status | code |  |
| Questionnaire.item.type | code |  |
| Questionnaire.item.linkId | string |  |
| Medication.ingredient.item[x] | CodeableConcept, Reference(Substance, Medication) |  |
| MedicationDispene.status | code |  |
| MedicationDispene.medication[x] | CodeableConcept, Reference(Medication) |  |
| Encounter.status | code |  |
| Encounter.class | coding |  |
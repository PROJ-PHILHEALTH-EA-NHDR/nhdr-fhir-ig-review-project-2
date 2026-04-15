{% include table-layout.html %}
{% include form-popup.html %}
<ul class="nav nav-tabs">
    <li><a href="K2.html">Content</a></li>
    <li class="active"><a href="#">Mappings</a></li>
    <li><a href="K2-json.html">JSON</a></li>
</ul>

### Mapped Fields

| <center>Form Field</center> | <center>Use-Case Mapping<br>/ Target Element</center> | <center>Data Type</center> | <center>Cardinality</center> | <center>Notes</center> |
|:---------|:---------|:--------|:--------:|:----------|
| **To be filled out by Beneficiary** | | | | |
| Date of Appointment | Appointment.created | dateTime | 0..1 | |
| Membership Type | Appointment.participant.actor | Reference([PH_Patient](StructureDefinition-PH-Patient.html)) | 0..1 | |
| <center>►</center>  | Patient.type | codeableConcept |  | ValueSet: [PatientType](ValueSet-PatientTypeVS.html) |
| PhilHealth Identification Number (PIN) | Appointment.participant.actor | Reference([PH_Patient](StructureDefinition-PH-Patient.html)) | 0..1 | |
| <center>►</center>  | Patient.identifier | Identifier |  | PhilHealth ID |
| Date of Birth (MM-DD-YYYY) | Appointment.participant.actor | Reference([PH_Patient](StructureDefinition-PH-Patient.html)) | 0..1 | |
| <center>►</center>  | Patient.birthDate | date |  |  |
| Name (Last Name) | Appointment.participant.actor | Reference([PH_Patient](StructureDefinition-PH-Patient.html)) | 0..1 | |
| <center>►</center>  | Patient.name.family | string |  |  |
| Name (First Name) | Appointment.participant.actor | Reference([PH_Patient](StructureDefinition-PH-Patient.html)) | 0..1 | |
| <center>►</center>  | Patient.name.given | string |  |  |
| Name (Middle Name) | Appointment.participant.actor | Reference([PH_Patient](StructureDefinition-PH-Patient.html)) | 0..1 | |
| <center>►</center>  | Patient.name.given | string |  |  |
| Address (BRGY/Town) | Appointment.participant.actor | Reference([PH_Patient](StructureDefinition-PH-Patient.html)) | 0..1 | |
| <center>►</center>  | Patient.address.barangay | coding |  | ValueSet: [BarangayCodes](ValueSet-BarangayVS.html) |
| Address (City/Municipality) | Appointment.participant.actor | Reference([PH_Patient](StructureDefinition-PH-Patient.html)) | 0..1 | |
| <center>►</center>  | Patient.address.cityMunicipality | coding |  | ValueSet: [CityCodes](ValueSet-CityVS.html) |
| Address (Province) | Appointment.participant.actor | Reference([PH_Patient](StructureDefinition-PH-Patient.html)) | 0..1 | |
| <center>►</center>  | Patient.address.province | coding |  | ValueSet: [ProvinceCodes](ValueSet-ProvinceVS.html) |
| **Signature** Over Printed Name | Provenance.signature.data | base64Binary | 0..1 | |
| Signature Over **Printed Name** | Provenance.signature.who | Reference([PH_Patient](StructureDefinition-PH-Patient.html)) | 1..1 | |
| <center>►</center>  | Patient.name | HumanName |  |  |
| **To be filled out by Philhealth Konsulta Personnel** | | | | |
| ATC | Appointment.identifier | identifier | 0..* | Then referenced in a later claim |
| **Signature** Over Printed Name of Authored PhilHealth Personnel | Provenance.signature.data | base64Binary | 0..1 |  |
| Signature Over **Printed Name** of Authored PhilHealth Personnel | Provenance.signature.who | Reference([PH_Organization](StructureDefinition-PH-Organization.html)) | 1..1 |  |
| <center>►</center>  | Organization.contact.name | HumanName |  |  |

### Mandatory Elements Not in the Form

| <center>Use-Case Mapping / Target Element</center> | <center>Data Type</center> | <center>Notes</center> |
|:---------|:---------|:--------|
| Appointment.status | code |  |
| Appointment.participant.status | code |  |
| Provenance.target | Reference(Any) |  |
| Provenance.recorded | instant |  |
| Provenance.signature.type | coding |  |
| Provenance.agent.who | Reference([PH_Organization](StructureDefinition-PH-Organization.html)) |  |
| Organization.name | string |  |
| Provenance.signature.when | instant |  |

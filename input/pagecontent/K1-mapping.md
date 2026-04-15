{% include table-layout.html %}
{% include form-popup.html %}
<ul class="nav nav-tabs">
    <li><a href="K1.html">Content</a></li>
    <li class="active"><a href="#">Mappings</a></li>
    <li><a href="K1-json.html">JSON</a></li>
</ul>

### Mapped Fields

| <center>Form Field</center> | <center>Use-Case Mapping<br>/ Target Element</center> | <center>Data Type</center> | <center>Cardinality</center> | <center>Notes</center> |
|:---------|:---------|:--------|:--------:|:----------|
| Insurer | EnrollmentRequest.insurer | Reference([PH_Organization](StructureDefinition-PH-Organization.html)) | 0..1 | |
| <center>►</center>  | Organization.name | string | 0..1 | |
| Konsulta Coverage | EnrollmentRequest.coverage | Reference([PH_Coverage](StructureDefinition-PH-Coverage.html)) | 0..1 | |
| **To be filled out by Beneficiary** | | | | |
| Membership type | EnrollmentRequest.candidate | Reference([PH_Patient](StructureDefinition-PH-Patient.html)) | 0..1 | |
| <center>►</center>  | Patient.type | codeableConcept |  | ValueSet: [PatientType](ValueSet-PatientTypeVS.html) |
| PhilHealth Identification Number (PIN) | EnrollmentRequest.candidate | Reference([PH_Patient](StructureDefinition-PH-Patient.html)) | 0..1 | |
| <center>►</center>  | Patient.identifier | identifier |  | PhilHealth ID |
| Date (MM-DD-YYYY)| EnrollmentRequest.created | dateTime | 0..1 | |
| Name (Last Name)| EnrollmentRequest.candidate | Reference([PH_Patient](StructureDefinition-PH-Patient.html)) | 0..1 | |
| <center>►</center>  | Patient.name.family | string |  | |
| Name (First Name)| EnrollmentRequest.candidate | Reference([PH_Patient](StructureDefinition-PH-Patient.html)) | 0..1 | |
| <center>►</center>  | Patient.name.given | string |  | |
| Name (Middle Name)| EnrollmentRequest.candidate | Reference([PH_Patient](StructureDefinition-PH-Patient.html)) | 0..1 | |
| <center>►</center>  | Patient.name.given | string |  | |
| Address (BRGY/Town)| EnrollmentRequest.candidate | Reference([PH_Patient](StructureDefinition-PH-Patient.html)) | 0..1 | |
| <center>►</center>  | Patient.address.barangay | coding |  | ValueSet: [BarangayCodes](ValueSet-BarangayVS.html) |
| Address (City/Municipality)| EnrollmentRequest.candidate | Reference([PH_Patient](StructureDefinition-PH-Patient.html)) | 0..1 | |
| <center>►</center>  | Patient.address.cityMunicipality | coding |  | ValueSet: [CityCodes](ValueSet-CityVS.html) |
| Address (Province)| EnrollmentRequest.candidate | Reference([PH_Patient](StructureDefinition-PH-Patient.html)) | 0..1 | |
| <center>►</center>  | Patient.address.province | coding |  | ValueSet: [ProviceCodes](ValueSet-ProvinceVS.html) |
| Date Of Birth (MM-DD-YYYY)| EnrollmentRequest.candidate | Reference([PH_Patient](StructureDefinition-PH-Patient.html)) | 0..1 | |
| <center>►</center>  | Patient.birthDate | date |  | |
| Contact Number | EnrollmentRequest.candidate | Reference([PH_Patient](StructureDefinition-PH-Patient.html)) | 0..1 | |
| <center>►</center>  | Patient.telecom.value | string |  | |
| Register to a Konsulta Package Provider (KPP) (Checkbox) | Questionnaire.item.text | string | 0..1 | |
| Register all my declared minor Dependents (please use additional for if necessary) (Checkbox) | Questionnaire.item.text | string | 0..1 |0 = no 1 = yes |
| Name (Last Name)| EnrollmentRequest.candidate | Reference([PH_Patient](StructureDefinition-PH-Patient.html)) | 0..1 | |
| <center>►</center>  | Patient.name.family | string |  | |
| Name (First Name)| EnrollmentRequest.candidate | Reference([PH_Patient](StructureDefinition-PH-Patient.html)) | 0..1 | |
| <center>►</center>  | Patient.name.given | string |  | |
| Name (Middle Name)| EnrollmentRequest.candidate | Reference([PH_Patient](StructureDefinition-PH-Patient.html)) | 0..1 | |
| <center>►</center>  | Patient.name.given | string |  | |
| 1st Choice of Konsulta Package Provider | EnrollmentRequest.candidate | Reference([PH_Patient](StructureDefinition-PH-Patient.html)) | 0..1 | |
| <center>►</center>  | Patient.generalPractitioner | Reference([PH_Organization](StructureDefinition-PH-Organization.html)) |  | |
| <center>►</center>  | Organization.name | string |  | |
| Address (BRGY/Town) | EnrollmentRequest.candidate | Reference([PH_Patient](StructureDefinition-PH-Patient.html)) | 0..1 | |
| <center>►</center>  | Patient.generalPractitioner | Reference([PH_Organization](StructureDefinition-PH-Organization.html)) |  | |
| <center>►</center>  | Organization.address.barangay | coding |  | ValueSet: [BarangayCodes](ValueSet-BarangayVS.html) |
| Address (City/Municipality) | EnrollmentRequest.candidate | Reference([PH_Patient](StructureDefinition-PH-Patient.html)) | 0..1 | |
| <center>►</center>  | Patient.generalPractitioner | Reference([PH_Organization](StructureDefinition-PH-Organization.html)) |  | |
| <center>►</center>  | Organization.address.cityMunicipality | coding |  | ValueSet: [CityCodes](ValueSet-CityVS.html) |
| Address (Province) | EnrollmentRequest.candidate | Reference([PH_Patient](StructureDefinition-PH-Patient.html)) | 0..1 | |
| <center>►</center>  | Patient.generalPractitioner | Reference([PH_Organization](StructureDefinition-PH-Organization.html)) |  | |
| <center>►</center>  | Organization.address.province | coding |  | ValueSet: [ProviceCodes](ValueSet-ProvinceVS.html) |
| 2nd Choice of Konsulta Package Provider | EnrollmentRequest.candidate | Reference([PH_Patient](StructureDefinition-PH-Patient.html)) | 0..1 | |
| <center>►</center>  | Patient.generalPractitioner | Reference([PH_Organization](StructureDefinition-PH-Organization.html)) |  | |
| <center>►</center>  | Organization.name | string |  | |
| Address (BRGY/Town) | EnrollmentRequest.candidate | Reference([PH_Patient](StructureDefinition-PH-Patient.html)) | 0..1 | |
| <center>►</center>  | Patient.generalPractitioner | Reference([PH_Organization](StructureDefinition-PH-Organization.html)) |  | |
| <center>►</center>  | Organization.address.barangay | coding |  | ValueSet: [BarangayCodes](ValueSet-BarangayVS.html) |
| Address (City/Municipality) | EnrollmentRequest.candidate | Reference([PH_Patient](StructureDefinition-PH-Patient.html)) | 0..1 | |
| <center>►</center>  | Patient.generalPractitioner | Reference([PH_Organization](StructureDefinition-PH-Organization.html)) |  | |
| <center>►</center>  | Organization.address.cityMunicipality | coding |  | ValueSet: [CityCodes](ValueSet-CityVS.html) |
| Address (Province) | EnrollmentRequest.candidate | Reference([PH_Patient](StructureDefinition-PH-Patient.html)) | 0..1 | |
| <center>►</center>  | Patient.generalPractitioner | Reference([PH_Organization](StructureDefinition-PH-Organization.html)) |  | |
| <center>►</center>  | Organization.address.province | coding |  | ValueSet: [ProviceCodes](ValueSet-ProvinceVS.html) |
| Transfer (Checkbox) | Questionnaire.item.text | string | 0..1 | |
| Previous KPP | EnrollmentRequest.candidate | Reference([PH_Patient](StructureDefinition-PH-Patient.html)) | 0..1 | |
| <center>►</center>  | Patient.generalPractitioner | Reference([PH_Organization](StructureDefinition-PH-Organization.html)) |  | |
| <center>►</center>  | Organization.name | string |  | |
| 1st Choice of KPP | EnrollmentRequest.candidate | Reference([PH_Patient](StructureDefinition-PH-Patient.html)) | 0..1 | |
| <center>►</center>  | Patient.generalPractitioner | Reference([PH_Organization](StructureDefinition-PH-Organization.html)) |  | |
| <center>►</center>  | Organization.name | string |  | |
| Address (BRGY/Town) | EnrollmentRequest.candidate | Reference([PH_Patient](StructureDefinition-PH-Patient.html)) | 0..1 | |
| <center>►</center>  | Patient.generalPractitioner | Reference([PH_Organization](StructureDefinition-PH-Organization.html)) |  | |
| <center>►</center>  | Organization.address.barangay | coding |  | ValueSet: [BarangayCodes](ValueSet-BarangayVS.html) |
| Address (City/Municipality) | EnrollmentRequest.candidate | Reference([PH_Patient](StructureDefinition-PH-Patient.html)) | 0..1 | |
| <center>►</center>  | Patient.generalPractitioner | Reference([PH_Organization](StructureDefinition-PH-Organization.html)) |  | |
| <center>►</center>  | Organization.address.cityMunicipality | coding |  | ValueSet: [CityCodes](ValueSet-CityVS.html) |
| Address (Province) | EnrollmentRequest.candidate | Reference([PH_Patient](StructureDefinition-PH-Patient.html)) | 0..1 | |
| <center>►</center>  | Patient.generalPractitioner | Reference([PH_Organization](StructureDefinition-PH-Organization.html)) |  | |
| <center>►</center>  | Organization.address.province | coding |  | ValueSet: [ProviceCodes](ValueSet-ProvinceVS.html) |
| 2nd Choice of KPP | EnrollmentRequest.candidate | Reference([PH_Patient](StructureDefinition-PH-Patient.html)) | 0..1 | |
| <center>►</center>  | Patient.generalPractitioner | Reference([PH_Organization](StructureDefinition-PH-Organization.html)) |  | |
| <center>►</center>  | Organization.name | string |  | |
| Address (BRGY/Town) | EnrollmentRequest.candidate | Reference([PH_Patient](StructureDefinition-PH-Patient.html)) | 0..1 | |
| <center>►</center>  | Patient.generalPractitioner | Reference([PH_Organization](StructureDefinition-PH-Organization.html)) |  | |
| <center>►</center>  | Organization.address.barangay | coding |  | ValueSet: [BarangayCodes](ValueSet-BarangayVS.html) |
| Address (City/Municipality) | EnrollmentRequest.candidate | Reference([PH_Patient](StructureDefinition-PH-Patient.html)) | 0..1 | |
| <center>►</center>  | Patient.generalPractitioner | Reference([PH_Organization](StructureDefinition-PH-Organization.html)) |  | |
| <center>►</center>  | Organization.address.cityMunicipality | coding |  | ValueSet: [CityCodes](ValueSet-CityVS.html) |
| Address (Province) | EnrollmentRequest.candidate | Reference([PH_Patient](StructureDefinition-PH-Patient.html)) | 0..1 | |
| <center>►</center>  | Patient.generalPractitioner | Reference([PH_Organization](StructureDefinition-PH-Organization.html)) |  | |
| <center>►</center>  | Organization.address.province | coding |  | ValueSet: [ProviceCodes](ValueSet-ProvinceVS.html) |
| **Signature** over Printed Name | Provenance.signature.data | base64Binary | 0..1 | |
| Signature over **Printed Name** | Provenance.signature.who | Reference([PH_Patient](StructureDefinition-PH-Patient.html)) | 1..1 | |
| <center>►</center>  | Patient.name | HumanName |  | |
| **To be filled out by Philhealth Konsulta Personnel** | | | | |
| Registration Number | EnrollmentRequest.identifier | identifier | 0..* | |
| Date Registered (MM-DD-YYYY) | EnrollmentRequest.created | dateTime |0..1 | |
| Name (Last Name) | EnrollmentRequest.candidate | Reference([PH_Patient](StructureDefinition-PH-Patient.html)) |0..1 | |
| <center>►</center>  | Patient.name.family | string |  | |
| Name (First name) | EnrollmentRequest.candidate | Reference([PH_Patient](StructureDefinition-PH-Patient.html)) |0..1 | |
| <center>►</center>  | Patient.name.given | string |  | |
| Name (Middle name) | EnrollmentRequest.candidate | Reference([PH_Patient](StructureDefinition-PH-Patient.html)) |0..1 | |
| <center>►</center>  | Patient.name.given | string |  | |
| PhilHealth Identification Number (PIN) | EnrollmentRequest.candidate | Reference([PH_Patient](StructureDefinition-PH-Patient.html)) |0..1 | |
| <center>►</center>  | Patient.identifier | Identifier |  | PhilHealth ID |
| Date Of Birth (MM-DD-YYYY) | EnrollmentRequest.candidate | Reference([PH_Patient](StructureDefinition-PH-Patient.html)) |0..1 | |
| <center>►</center>  | Patient.birthDate | date |  | |
| Konsulta Package Provider | EnrollmentRequest.candidate | Reference([PH_Patient](StructureDefinition-PH-Patient.html)) |0..1 | |
| <center>►</center>  | Patient.generalPractitioner | Reference([PH_Organization](StructureDefinition-PH-Organization.html)) |  | |
| <center>►</center>  | Organization.name | string | 0..1 | |
| Address (BRGY/Town) | EnrollmentRequest.candidate | Reference([PH_Patient](StructureDefinition-PH-Patient.html)) | 0..1 | |
| <center>►</center>  | Patient.generalPractitioner | Reference([PH_Organization](StructureDefinition-PH-Organization.html)) |  | |
| <center>►</center>  | Organization.address.barangay | coding |  | ValueSet: [BarangayCodes](ValueSet-BarangayVS.html) |
| Address (City/Municipality) | EnrollmentRequest.candidate | Reference([PH_Patient](StructureDefinition-PH-Patient.html)) | 0..1 | |
| <center>►</center>  | Patient.generalPractitioner | Reference([PH_Organization](StructureDefinition-PH-Organization.html)) |  | |
| <center>►</center>  | Organization.address.cityMunicipality | coding |  | ValueSet: [CityCodes](ValueSet-CityVS.html) |
| Address (Province) | EnrollmentRequest.candidate | Reference([PH_Patient](StructureDefinition-PH-Patient.html)) | 0..1 | |
| <center>►</center>  | Patient.generalPractitioner | Reference([PH_Organization](StructureDefinition-PH-Organization.html)) |  | |
| <center>►</center>  | Organization.address.province | coding |  | ValueSet: [ProviceCodes](ValueSet-ProvinceVS.html) |
| **Signature** over Printed Name of **Authorized Personnel** | Provenance.signature.data | base64Binary | 0..1 | |
| Signature over **Printed Name of Authorized Personnel** | Provenance.signature.who | Reference([PH_Organization](StructureDefinition-PH-Organization.html)) | 1..1 | |
| <center>►</center>  | Organization.contact.name | HumanName |  | |

### Mandatory Elements Not in the Form

| <center>Use-Case Mapping / Target Element</center> | <center>Data Type</center> | <center>Notes</center> |
|:---------|:---------|:--------|
| Provenance.target |  |
| Provenance.recorded | instant |  |
| Provenance.agent.who | Reference([PH_Organization](StructureDefinition-PH-Organization.html)) | |
| Organization.name | string |  |
| Provenance.signature.type | coding |  |
| Provenance.signature.when | instant |  |
| Questionnaire.status | code |  |
| Questionnaire.item.linkId | string |  |
| Questionnaire.item.type | code |  |
| Coverage.status | code |  |
| Coverage.beneficiary | Reference([PH_Patient](StructureDefinition-PH-Patient.html)) |  |
| Coverage.payor | Reference(Organization, Patient, RelatedPerson) |  |
{% include table-layout.html %}
{% include form-popup.html %}
<ul class="nav nav-tabs">
    <li><a href="K5.html">Content</a></li>
    <li class="active"><a href="#">Mappings</a></li>
    <li><a href="K5-json.html">JSON</a></li>
</ul>

### Mapped Fields

| <center>Form Field</center> | <center>Use-Case Mapping<br>/ Target Element</center> | <center>Data Type</center> | <center>Cardinality</center> | <center>Notes</center> |
|:---------|:---------|:--------|:--------:|:----------|
| **1. Client Profile** | | | | |
| Photo (if without ATC) | Encounter.subject | Reference([PH_Patient](StructureDefinition-PH_Patient.html)) | 0..1 | |
| <center>►</center>  | Patient.photo | Attachment | 0..* |  |
| Health Screening Date (MM-DD-YYYY) | Encounter.period.start | dateTime | 0..1 | |
| Case Number | Encounter.identifier | Identifier | 0..* | |
| PhilHealth Identification Number (PIN) | Encounter.subject | Reference([PH_Patient](StructureDefinition-PH_Patient.html)) | 0..1 | |
| <center>►</center>  | Patient.identifier | Identifier | 0..* |  |
| Name (Last Name) | Encounter.subject | Reference([PH_Patient](StructureDefinition-PH_Patient.html)) | 0..1 | |
| <center>►</center>  | Patient.name.family | string | 0..* |  |
| Name (First Name) | Encounter.subject | Reference([PH_Patient](StructureDefinition-PH_Patient.html)) | 0..1 | |
| <center>►</center>  | Patient.name.given | string | 0..* |  |
| Name (Middle name) | Encounter.subject | Reference([PH_Patient](StructureDefinition-PH_Patient.html)) | 0..1 | |
| <center>►</center>  | Patient.name.given | string | 0..* |  |
| Name (Extension name) | Encounter.subject | Reference([PH_Patient](StructureDefinition-PH_Patient.html)) | 0..1 | |
| <center>►</center>  | Patient.name.suffix | string | 0..* |  |
| Age | Encounter.ageYears | integer | 0..1 |  |
| Date of Birth (MM-DD-YYYY) | Encounter.subject | Reference([PH_Patient](StructureDefinition-PH_Patient.html)) | 0..1 |  |
| <center>►</center>  | Patient.birthDate | date | 0..1 |  |
| Sex | Encounter.subject | Reference([PH_Patient](StructureDefinition-PH_Patient.html)) | 0..1 |  |
| <center>►</center>  | Patient.sex | CodeableConcept | 0..1 | ValueSet: [Sex](ValueSet-SexVS.html) |
| Client Type | Encounter.subject | Reference([PH_Patient](StructureDefinition-PH_Patient.html)) | 0..1 |  |
| <center>►</center>  | Patient.type | CodeableConcept |  | ValueSet: [PatientType](ValueSet-PatientTypeVS.html) |
| **2. Review of Systems** | | | | |
| Chief Complaint (string) | Encounter.reasonReference | Reference([PH_Observation](StructureDefinition-PH_Observation.html)) | 0..1 |  |
| <center>►</center>  | Observation.value[x] | string | 0..1 |  |
| Do you experience any of the following: fever, cough, colds, or headache [Y,N] | Questionnaire.item.text | string | 0..1 |  |
| If yes, please explain: | Questionnaire.item.enableWhen.question | string | 1..1 |  |
| Do you experience any of the following: unexplained change in weight, loss of appetite, change in bowel movement, or abdominal pain? [Y,N] | Questionnaire.item.text | string | 0..1 |  |
| If yes, please explain: | Questionnaire.item.enableWhen.question | string | 1..1 |  |
| Do you experience any of the following: Chest pain or difficulty in breathing? [Y,N] | Questionnaire.item.text | string | 0..1 |  |
| If yes, please explain: | Questionnaire.item.enableWhen.question | string | 1..1 |  |
| Do you experience any of the following: frequent urination, frequent eating, frequent intake of fluids, smoking and drinking alcohol? [Y,N] | Questionnaire.item.text | string | 0..1 |  |
| If yes, please explain: | Questionnaire.item.enableWhen.question | string | 1..1 |  |
| For male and female, do you experience any of the following: pain or discomfort on urination or frequency of urination? [Y,N] | Questionnaire.item.text | string | 0..1 |  |
| If yes, please explain: | Questionnaire.item.enableWhen.question | string | 1..1 |  |
| For Females Only (Female Physiology) | Observation.code | CodeableConcept | 1..1 |  |
| For females only: Last menstrual period (mm/dd/yyyy) | Observation.component.valuePeriod.end | dateTime | 0..1 |  |
| For females only: First menstrual period (mm/dd/yyyy) | Observation.component.valuePeriod.start | dateTime | 0..1 |  |
| For females only: Number of pregnancy | Observation.component.value[x] | integer | 0..1 |  |
| **3. Pertinent Physical Examination Findings** | | | | |
| PERTINENT PHYSICAL EXAMINATION FINDINGS | Observation.code | CodeableConcept | 1..1 | |
| Blood Pressure | Observation.component.code | CodeableConcept | 1..1 | |
| Blood Pressure (mHg) | Observation.component.value[x] | string or ratio | 0..1 | |
| Heart Rate | Observation.component.code | CodeableConcept | 1..1 | |
| Heart Rate (/min) (unit of measure) | Observation.component.valueQuantity.unit | string | 0..1 | |
| Heart Rate (/min) (value) | Observation.component.valueQuantity.value | decimal | 0..1 | |
| Respiratory Rate | Observation.component.code | CodeableConcept | 1..1 | |
| Respiratory Rate (/min) | Observation.component.value[x] | Quantity or int | 0..1 | |
| Visual Acuity | Observation.component.code | CodeableConcept | 1..1 | |
| Visual Acuity (R) | Observation.component.valueRatio.numerator | Quantity | 0..1 | |
| Visual Acuity (L) | Observation.component.valueRatio.denominator | Quantity | 0..1 | |
| Height (cm) | Observation.component.code | CodeableConcept | 1..1 | |
| Height (unit of measure) | Observation.component.valueQuantity.unit | string | 0..1 | |
| Height (value) | Observation.component.valueQuantity.value | decimal | 0..1 | |
| Weight (kg) | Observation.component.code | CodeableConcept | 1..1 | |
| Weight (unit of measure) | Observation.component.valueQuantity.unit | string | 0..1 | |
| Weight (value) | Observation.component.valueQuantity.value | decimal | 0..1 | |
| Weight (lb) | Observation.component.code | CodeableConcept | 1..1 | |
| Weight (unit of measure) | Observation.component.valueQuantity.unit | string | 0..1 | |
| Weight (value) | Observation.component.valueQuantity.value | decimal | 0..1 | |
| BMI | Observation.component.code | CodeableConcept | 1..1 | |
| BMI (value) | Observation.component.value[x] | Quantity or int | 0..1 | |
| Temperature | Observation.component.code | CodeableConcept | 1..1 | |
| Temperature (value) | Observation.component.value[x] | Quantity or int | 0..1 | |
| Pediatric Client aged 0-24 months | Observation.code | CodeableConcept | 1..1 | |
| Length | Observation.component.code | CodeableConcept | 1..1 | |
| Length (cm) (unit of measure) | Observation.component.valueQuantity.unit | string | 0..1 | |
| Length (cm) (value) | Observation.component.valueQuantity.value | decimal | 0..1 | |
| Head Circumference | Observation.component.code | CodeableConcept | 1..1 |  |
| Head Circumference (cm) (unit of measure) | Observation.component.valueQuantity.unit | string | 0..1 |  |
| Head Circumference (cm) (value) | Observation.component.valueQuantity.value | decimal | 0..1 |  |
| Skinfold Thickness | Observation.component.code | CodeableConcept | 1..1 |  |
| Skinfold Thickness (cm) (unit of measure) | Observation.component.valueQuantity.unit | string | 0..1 |  |
| Skinfold Thickness (cm) (value) | Observation.component.valueQuantity.value | decimal | 0..1 |  |
| Body Circumference | Observation.component.code | CodeableConcept | 1..1 |  |
| Body Circumference: Waist (cm) (unit of measure) | Observation.component.valueQuantity.unit | string | 0..1 |  |
| Body Circumference: Waist (cm) (value) | Observation.component.valueQuantity.value | decimal | 0..1 |  |
| Body Circumference: Hip | Observation.component.code | CodeableConcept | 1..1 |  |
| Body Circumference: Hip (cm) (unit of measure) | Observation.component.valueQuantity.unit | string | 0..1 |  |
| Body Circumference: Hip (cm) (value) | Observation.component.valueQuantity.value | decimal | 0..1 |  |
| Body Circumference | Observation.component.code | CodeableConcept | 0..1 |  |
| Body Circumference: Middle and Upper Arm (cm) (unit of measure) | Observation.component.valueQuantity.unit | string | 0..1 |  |
| Body Circumference: Middle and Upper Arm (cm) (value)s | Observation.component.valueQuantity.value | decimal | 0..1 |  |
| Blood Type (as available) | Observation.code | CodeableConcept | 1..1 |  |
| Blood Type (as available) (value) | Observation.value[x] | CodeableConcept | 0..1 |  |
| General Survey |Observation.code | CodeableConcept | 1..1 |  |
| General Survey (value) | Observation.value[x] | CodeableConcept | 0..1 |  |

### Mandatory Elements Not in the Form

| <center>Use-Case Mapping / Target Element</center> | <center>Data Type</center> | <center>Notes</center> |
|:---------|:---------|:--------|
| Encounter.status | code |  |
| Encounter.class | Coding |  |
| Questionnaire.status | code |  |
| Questionnaire.item.type | code |  |
| Questionnaire.item.linkId | string |  |
| Questionnaire.item.enableWhen.question | string |  |
| Questionnaire.item.enableWhen.operator | code |  |
| Questionnaire.item.enableWhen.answer[x] | boolean,decimal,integer,date,dateTime,time,string,Coding,Quantity,Reference(Any) |  |
| Observation.status | code |  |
Profile: DGMCCondition
Parent: ILCoreCondition
Id: dgmc-condition
Title: "DGMC Condition"
Description: "DGMC Condition"
* insert ConformanceMetadata
//Condition
//Condition

* id 1..1

* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.ordered = false
* identifier 1..*
* identifier contains Rowid 1..1
* identifier[Rowid].system 1..1
* identifier[Rowid].system from $vsCmlDiagnosisRowidUri
* identifier[Rowid].value 1..1

* clinicalStatus 1..1
* clinicalStatus.coding 1..1
* clinicalStatus.coding.system 1..1
* clinicalStatus.coding.system = "http://terminology.hl7.org/CodeSystem/condition-clinical" (exactly)
* clinicalStatus.coding.code 1..1
* clinicalStatus.coding.display 1..1

* subject.reference 1..1
* encounter.reference 1..1
* recordedDate 1..1
* recorder.reference 1..1

* bodySite ^slicing.discriminator.type = #value
* bodySite ^slicing.discriminator.path = "coding.system"
* bodySite ^slicing.rules = #open
* bodySite ^slicing.ordered = false
* bodySite contains dgmc-side 0..1
* bodySite[dgmc-side].coding 0..1
* bodySite[dgmc-side].coding.system 1..1
* bodySite[dgmc-side].coding.system = "http://snomed.info/sct" (exactly)
* bodySite[dgmc-side].coding.code
* bodySite[dgmc-side].coding.code from $vsBodySiteLaterality (required)
* bodySite[dgmc-side].coding.display 1..1

* . obeys active-diagnosis
* category 2..*
* category ^slicing.discriminator.type = #pattern
* category ^slicing.discriminator.path = "$this"
* category ^slicing.rules = #open
* category ^slicing.ordered = false
* category contains dgmc-component 1..1 and ilcore 1..1
* category[dgmc-component] ^patternCodeableConcept.coding.system = $csDiagnosisComponent
* category[dgmc-component].coding.system 1..1
// * category[dgmc-component].coding.system = $csDiagnosisComponent (exactly)  // http://fhir.dgmc.health.gov.il/cs/diagnosis-component
* category[dgmc-component].coding.code 1..1
* category[dgmc-component].coding.display 1..1
* category[ilcore] from $vsIlcoreCategory (required)
* category[ilcore].coding.system 1..1
* category[ilcore].coding.code 1..1
* category[ilcore].coding.display 1..1

Invariant: active-diagnosis
Description: "If category.coding.code = one of ['1','9','21','22'], there SHALL be another category.coding with the code 'problem-list-item' from 'http://terminology.hl7.org/CodeSystem/condition-category'"
Expression: "category.where(coding.where(system = 'http://fhir.dgmc.health.gov.il/cs/diagnosis-component' and (code = '1' or code = '9' or code = '21' or code = '22'))).exists() implies category.where(coding.where(code = 'problem-list-item' and system = 'http://terminology.hl7.org/CodeSystem/condition-category')).exists()"
Severity: #error


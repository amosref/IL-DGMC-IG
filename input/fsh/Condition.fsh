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
* identifier contains Rowid 1..1
* identifier[Rowid].system 1..1
* identifier[Rowid].system from $vsCmlDiagnosisRowidUri
* identifier[Rowid].value 1..1

* clinicalStatus 1..1
* clinicalStatus.coding 1..1
* clinicalStatus.coding.system 1..1
* clinicalStatus.coding.system = "http://terminology.hl7.org/CodeSystem/condition-clinical" (exactly)
* clinicalStatus.coding.value 1..1
* clinicalStatus.coding.display 1..1

* subject.reference 1..1
* encounter.reference 1..1
* recordedDate 1..1
* recorder.reference 1..1

* bodySite ^slicing.discriminator.type = #value
* bodySite ^slicing.discriminator.path = "system"
* bodySite ^slicing.rules = #open
* bodySite ^slicing.ordered = false
* bodySite contains dgmc-side 0..1
* bodySite[dgmc-side].coding 0..1
* bodySite[dgmc-side].coding.system 1..1
* bodySite[dgmc-side].coding.system = "http://snomed.info/sct"
* bodySite[dgmc-side].coding.code
* bodySite[dgmc-side].coding.code from $vsBodySiteLaterality (required)
* bodySite[dgmc-side].coding.display 1..1

* category 2..*
* category ^slicing.discriminator.type = #value
* category ^slicing.discriminator.path = "system"
* category ^slicing.rules = #open
* category ^slicing.ordered = false
* category contains dgmc-component 1..1 and ilcore 1..1
* category[dgmc-component].coding.system 1..1
* category[dgmc-component].coding.system = "http://fhir.dgmc.health.gov.il/cs/diagnosis-componment" (exactly)
* category[dgmc-component].coding.code 1..1
* category[dgmc-component].coding.display 1..1
* category[ilcore].coding from $vsIlcoreCategory (exactly)
* category[ilcore].coding.system 1..1
* category[ilcore].coding.code 1..1
* category[ilcore].coding.display 1..1

Invariant: generally-healthy
Description: "if code.coding.code = 81323004 then there SHALL be a code.text and it will contain 'בריא בדרך כלל'"
Expression: "coding.code=81323004 implies ((text.exists()) and (text='בריא בדרך כלל'))"
Severity: #warning


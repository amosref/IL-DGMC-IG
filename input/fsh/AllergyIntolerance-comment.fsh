Profile: DGMCAllergyIntoleranceComment
Parent: ILCoreAllergyIntolerance
Id: dgmc-allergy-intolerance-comment
Title: "DGMC Allergy Intolerance Comment"
Description: "DGMC Allergy Intolerance Comment"
* insert ConformanceMetadata

* id 1..1
* identifier 1..*
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.ordered = false
* identifier contains comment 1..1
* identifier[comment].system 1..1
* identifier[comment].system from $vsAllergyIntIdentifierCommentUri (required)
* identifier[comment].value 1..1

* clinicalStatus 1..1
* clinicalStatus.coding 1..1
* clinicalStatus.coding.system 1..1
* clinicalStatus.coding.system = "http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical"
* clinicalStatus.coding.code 1..1
* clinicalStatus.coding.display 1..1

* code.coding 1..*
* code.coding ^slicing.discriminator.type = #value
* code.coding ^slicing.discriminator.path = "system"
* code.coding ^slicing.rules = #open
* code.coding ^slicing.ordered = false
* code.coding contains comment 1..1
* code.coding[comment].system 1..1
* code.coding[comment].system = $vsAllergyIntCodeComment
* code.coding[comment].code 1..1
* code.coding[comment].code = #main-comment (exactly)
* code.coding[comment].display 1..1
* code.coding[comment].display = "Main comment" (exactly)

* patient.reference 1..1
* encounter 1..1
* encounter.reference 1..1
* recordedDate 1..1
* recorder 1..1
* recorder.reference 1..1
* note 1..1
* note.text 1..1


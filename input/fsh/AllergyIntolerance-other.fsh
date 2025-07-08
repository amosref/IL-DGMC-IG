Profile: DGMCAllergyIntoleranceOther
Parent: ILCoreAllergyIntolerance
Id: dgmc-allergy-intolerance-other
Title: "DGMC Allergy Intolerance Other"
Description: "DGMC Allergy Intolerance Other: food/environment/biologic."
// * insert ConformanceMetadata

* id 1..1
* identifier 1..*
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.ordered = false
* identifier contains other 1..1
* identifier[other].system 1..1
* identifier[other].system from $vsAllergyIntIdentifierOtherUri (required)
* identifier[other].value 1..1

* clinicalStatus 1..1
* clinicalStatus.coding 1..1
* clinicalStatus.coding.system 1..1
* clinicalStatus.coding.code 1..1
* clinicalStatus.coding.display 1..1

* code.coding 1..*
* code.coding ^slicing.discriminator.type = #value
* code.coding ^slicing.discriminator.path = "system"
* code.coding ^slicing.rules = #open
* code.coding ^slicing.ordered = false
* code.coding contains other 0..1 and external 0..1 and unknown 0..1
* code.coding[other].system 1..1
* code.coding[other].system from $vsAllergyIntCodeOtherUri (required)
* code.coding[other].code 1..1
* code.coding[other].display 1..1
* code.coding[external].system 1..1
* code.coding[external].system from $vsAllergyIntCodeExtUri (required)
* code.coding[external].code 1..1
* code.coding[unknown].system = $sct (exactly)
* code.coding[unknown].code = #71618600 (exactly)
* code.coding[unknown].display = "No known allergy" (exactly)

* patient.reference 1..1
* encounter 1..1
* encounter.reference 1..1
* recordedDate 1..1
* recorder 1..1
* recorder.reference 1..1

* reaction.manifestation.coding 1..*
* reaction.manifestation.coding.system 1..1
* reaction.manifestation.coding.system from $vsAllergyIntReactionCodeUri (required)
* reaction.manifestation.coding.code 1..1
* reaction.manifestation.coding.display 1..1

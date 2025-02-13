Profile: DGMCAllergyIntoleranceMed
Parent: ILCoreAllergyIntolerance
Id: dgmc-allergy-intolerance-med
Title: "DGMC Allergy Intolerance Medication"
Description: "DGMC Allergy Intolerance Medication"
* insert ConformanceMetadata

* id 1..1
* identifier 1..*
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.ordered = false
* identifier contains medication 1..1
* identifier[medication].system 1..1
* identifier[medication].system from $vsAllergyIntIdentifierMedUri (required)
* identifier[medication].value 1..1

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
* code.coding contains med 0..1 unknown 0..1
* code.coding[med].system from $vsAllergyIntCodeMedUri (required)
* code.coding[med].code 1..1
* code.coding[med].display 1..1
* code.coding[unknown].system = "http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical" (exactly)
* code.coding[unknown].code = "71618600" (exactly)
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

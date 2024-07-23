Profile: DGMCConsultationAnswer
Parent: ILCoreProcedure
Id: dgmc-cml-consultation-answer
Title: "DGMC Consultation Answer"
Description: "DGMC Consultation Answer"
* insert ConformanceMetadata
* ^url = $consultAnswer
* id 1..1
* identifier.system 1..1
* identifier.value 1..1
* identifier.system from $vsConsultAnsUri (required)
* basedOn.reference 1..1
* status 1..1
* code.coding 1..*
* code.coding.system 1..1
* code.coding.system = $sct (exactly)
* code.coding.code 1..1
* code.coding.code = #11429006 (exactly)
* code.coding.display 1..1
* code.coding.display = "Consultation"
* subject.reference 1..1
* performed[x] only dateTime
* performedDateTime 1..1
* recorder.reference 1..1
* asserter.reference 1..1
* outcome 1..1
* outcome.text 1..1
* followUp 0..2
* followUp ^slicing.discriminator.type = #pattern
* followUp ^slicing.discriminator.path = "$this"
* followUp ^slicing.rules = #open
* followUp ^slicing.ordered = false
* followUp contains needed 0..1 and temp-answer 0..1
* followUp[needed] = $csFollowUp#follow-up-needed
* followUp[needed].coding.display 1..1
* followUp[needed].coding.display = "נדרש המשך מעקב"
* followUp[temp-answer] = $csFollowUp#final-answer-needed
* followUp[temp-answer].coding.display 1..1
* followUp[temp-answer].coding.display = "תשובה זמנית (ממתין לתשובה סופית)"

Profile: DgmcCmlConsultationAnswer
Parent: ILCoreProcedure
Id: dgmc-cml-consultation-answer
Title: "DGMC Chameleon consultation answer"
Description: "DGMC Chameleon consultation answer"
* ^url = $Consultation-answer
* id 1..1
* identifier.system 1..1
* identifier.value 1..1
* identifier.system from $HospitalsUris-cml-counseling-answer (required)
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
* performedDateTime 1..1
* recorder.reference 1..1
* asserter.reference 1..1
* outcome 1..1
* outcome.text 1..1
* followUp ^slicing.discriminator.type = #value
* followUp ^slicing.discriminator.path = "coding.code"
* followUp ^slicing.rules = #open
* followUp ^slicing.ordered = false
* followUp contains cml-follow-up 0..1 and cml-final-answer 0..1
* followUp[cml-follow-up].coding.system 1..1
* followUp[cml-follow-up].coding.system = $follow-up-flag (exactly)
* followUp[cml-follow-up].coding.code 1..1
* followUp[cml-follow-up].coding.code = #follow-up-needed (exactly)
* followUp[cml-follow-up].coding.display 1..1
* followUp[cml-follow-up].coding.display = "נדרש המשך מעקב"
* followUp[cml-final-answer].coding.system 1..1
* followUp[cml-final-answer].coding.system = $follow-up-flag (exactly)
* followUp[cml-final-answer].coding.code 1..1
* followUp[cml-final-answer].coding.code = #final-answer-needed (exactly)
* followUp[cml-final-answer].coding.display 1..1
* followUp[cml-final-answer].coding.display = "ממתין לתשובה סופית (תשובה זמנית)"

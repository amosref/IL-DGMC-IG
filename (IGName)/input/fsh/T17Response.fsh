Profile: T17Response
Parent: il-core-coverage-eligibility-response
Id: t17-response
Title: "T17 Response"
Description: "בדיקת קיום התחייבות, עם או בלי בקשה ליצירת התחייבות"
* ^url = $T17-response
* . obeys purpose-validation
* purpose 1..1
* purpose from $vs-t17-eligibilityresponse-purpose (required)
* patient 1..1
* patient.identifier.system 1..1
* patient.identifier.value 1..1
* requestor.identifier.system 1..1
* requestor.identifier.value 1..1
* request only Reference(T17Request)
* insurer.identifier 1..1
* insurer.identifier.system 1..1
* insurer.identifier.value 1..1
* insurance.coverage only Reference(T17Obligation)
* insurance.benefitPeriod.start 1..1
* insurance.benefitPeriod.end 1..1
* insurance.item.productOrService.coding ^slicing.discriminator.type = #value
* insurance.item.productOrService.coding ^slicing.discriminator.path = "system"
* insurance.item.productOrService.coding ^slicing.rules = #open
* insurance.item.productOrService.coding ^slicing.description = "סלייסינג לקוד משרד הבריאות"
* insurance.item.productOrService.coding ^slicing.ordered = false
* insurance.item.productOrService.coding contains moh 1..1
* insurance.item.productOrService.coding[moh] from $moh-med-serv (required)
* insurance.item.productOrService.coding[moh].system 1..1
* insurance.item.productOrService.coding[moh].system = $medical-service-moh (exactly)
* insurance.item.productOrService.coding[moh].code 1..1
* insurance.item.excluded 1..1
* insurance.item.modifier from $t17-rej-codes-vs (extensible)
* insurance.item.modifier.coding ^slicing.discriminator.type = #value
* insurance.item.modifier.coding ^slicing.discriminator.path = "system"
* insurance.item.modifier.coding ^slicing.rules = #open
* insurance.item.modifier.coding ^slicing.description = "סלייסינג לקוד משרד הבריאות"
* insurance.item.modifier.coding ^slicing.ordered = false
* insurance.item.modifier.coding contains moh 0..1
* insurance.item.modifier.coding[moh] from $t17-rej-codes-vs (required)
* insurance.item.modifier.coding[moh].system 1..1
* insurance.item.modifier.coding[moh].system = $t17-issue-codes (exactly)
* insurance.item.modifier.coding[moh].code 1..1
* error.extension contains $ext-issue-regards named issue-regards 0..1
* error.extension[issue-regards].url 1..1
* error.extension[issue-regards].url = "http://fhir.outburn.co.il/StructureDefinition/issue-regards" (exactly)
* error.extension[issue-regards].valueCoding 1..1
* error.extension[issue-regards].valueCoding.system 1..1
* error.extension[issue-regards].valueCoding.system = $medical-service-moh (exactly)
* error.extension[issue-regards].valueCoding.code 1..1
* error.code from $t17-err-codes-vs (extensible)

// checked 21-4-24 Kippi - question sent to liron

Profile: T17Request
Parent: il-core-coverage-eligibility-request
Id: t17-request
Title: "T17 Request"
Description: "בדיקת קיום התחייבות, עם או בלי בקשה ליצירת התחייבות"
* ^url = $T17-request
* identifier 1..*
* identifier.system 1..1
* identifier.value 1..1
* purpose 1..1
* purpose from $vs-t17-eligibilityrequest-purpose (required)
* patient 1..1
* patient only Reference(il-core-patient)
* patient.identifier.system 1..1
* patient.identifier.value 1..1
* provider.identifier.system 1..1
* provider.identifier.value 1..1
* insurer.identifier.system 1..1
* insurer.identifier.value 1..1
* item 1..*
* item.productOrService 1..1
* item.productOrService.coding 1..*
* item.productOrService.coding ^slicing.discriminator.type = #value
* item.productOrService.coding ^slicing.discriminator.path = "system"
* item.productOrService.coding ^slicing.rules = #open
* item.productOrService.coding ^slicing.description = "לפחות מופע אחד חייב להכיל קוד של משרד הבריאות"
* item.productOrService.coding ^slicing.ordered = false
* item.productOrService.coding contains moh 1..1
* item.productOrService.coding[moh].system 1..1
* item.productOrService.coding[moh].system = $medical-service-moh (exactly)
* item.productOrService.coding[moh].code 1..1
* facility only Reference($T17-requested-location)
* facility.reference 1..1
* supportingInfo ^slicing.discriminator.type = #type
* supportingInfo ^slicing.discriminator.path = "$this.resolve()"
* supportingInfo ^slicing.rules = #closed
* supportingInfo ^slicing.description = "סלייסינג על פי סוג המשאב המקושר בשדה הזה"
* supportingInfo ^slicing.ordered = false
* supportingInfo contains 
    doc-ref-recommendation 0..* and
    appointment 0..1 and
    cov-elig-req-previous 0..1
* supportingInfo[doc-ref-recommendation].information.type 1..1
* supportingInfo[doc-ref-recommendation].information.type = "DocumentReference"
* supportingInfo[doc-ref-recommendation].information only Reference(T17VisitSummary)
* supportingInfo[doc-ref-recommendation].information.reference 1..1
* supportingInfo[appointment].information.type 1..1
* supportingInfo[appointment].information.type = "Appointment"
* supportingInfo[appointment].information only Reference(T17BookedAppointment)
* supportingInfo[appointment].information.reference 1..1
* supportingInfo[cov-elig-req-previous].information.type 1..1
* supportingInfo[cov-elig-req-previous].information.type = "CoverageEligibilityRequest"
* supportingInfo[cov-elig-req-previous].information only Reference(T17Request)
* supportingInfo[cov-elig-req-previous].information.identifier 1..1
* supportingInfo[cov-elig-req-previous].information.identifier.system 1..1
* supportingInfo[cov-elig-req-previous].information.identifier.value 1..1

// checked 21-4-24 Kippi
Profile: DGMCConsultationRequest
Parent: ILCoreServiceRequest
Id: dgmc-cml-consultation-request
Title: "DGMC Consultation Request"
Description: "DGMC Consultation Request"
* insert ConformanceMetadata
* ^url = $consultRequest
* id 1..1
* identifier.system 1..1
* identifier.value 1..1
* identifier.system from $HospitalsUris-cml-counseling-request (required)
* category 1..1
* category.coding 1..*
* category.coding.system 1..1
* category.coding.code 1..1
* category.coding.display 1..1

* code.coding ^slicing.discriminator.type = #pattern
* code.coding ^slicing.discriminator.path = "$this"
* code.coding ^slicing.rules = #open
* code.coding ^slicing.ordered = false
* code.coding 2..2
* code.coding contains cons 1..1 and cons-type 1..1
* code.coding[cons] = $sct#11429006
* code.coding[cons].display 1..1
* code.coding[cons].display = "Consultation" (exactly)
* code.coding[cons-type] from $vsCmlConsultType
* code.coding[cons-type].system 1..1
* code.coding[cons-type].code 1..1
* code.coding[cons-type].display 1..1

* orderDetail ^slicing.discriminator.type = #exists
* orderDetail ^slicing.discriminator.path = "$this.coding"
* orderDetail ^slicing.rules = #open
* orderDetail ^slicing.ordered = false
* orderDetail ^slicing.description = "Slice based on the presence or absence of Coding"
* orderDetail contains 
    question 0..* and
    state 0..*
* orderDetail[question].coding 0..0
* orderDetail[question].extension contains $extConsultFlag named flag 1..1
* orderDetail[question].extension[flag].url = $extConsultFlag (exactly)
* orderDetail[question].extension[flag].valueBoolean = true (exactly)
* orderDetail[question].text 1..1
* orderDetail[question].text ^comment = "השאלה לייעוץ"
* orderDetail[state].coding 1..1
* orderDetail[state].coding from $vsConsultPatState
* orderDetail[state].coding.system 1..1
* orderDetail[state].coding.code 1..1
* orderDetail[state].coding.display 1..1

* subject.reference 1..1
* encounter.reference 1..1
* requester.reference 1..1
* performer 1..*
* performer ^slicing.discriminator.type = #type
* performer ^slicing.discriminator.path = "type"
* performer ^slicing.rules = #open
* performer ^slicing.description = "Type of performer - organization or practitioner"
* performer ^slicing.ordered = false
* performer contains practitioner 0..* and organization 0..*
* performer[practitioner].type 1..1
* performer[practitioner].type = "Practitioner" (exactly)
* performer[practitioner] only Reference(ILCorePractitioner)
* performer[organization].type 1..1
* performer[organization].type = "Organization" (exactly)
* performer[organization] only Reference(ILCoreOrganization)

* reasonCode 1..*
* reasonCode.text 1..1


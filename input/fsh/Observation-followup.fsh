Profile: DGMCCmlFollowupObservation
Parent: ILCoreObservation
Id: dgmc-cml-followup-observation
Title: "DGMC CML FollowUp Observation"
Description: "פרופיל חטיבה למעקבים"
* ^url = "http://fhir.dgmc.health.gov.il/StructureDefinition/dgmc-cml-followup-observation"

* identifier 1..1
* identifier.system 1..1
* identifier.system from $vsCmlFollowUpUri (required)
* identifier.value 1..1

* category.coding 0..*
* category.coding.system 1..1
* category.coding.system = $csFollowupCategory
* category.coding.code 1..1
* category.coding.code from $vsFollowupCategory (required)
* category.coding.display 1..1

* code.coding 1..*
* code.coding ^slicing.discriminator.type = #value
* code.coding ^slicing.discriminator.path = "system"
* code.coding ^slicing.rules = #open

* code.coding contains cml 1..1
* code.coding[cml].system 1..1
* code.coding[cml].system = "http://fhir.dgmc.health.gov.il/cs/cml-followup-code"
* code.coding[cml].code 1..1
* code.coding[cml].code from http://fhir.dgmc.health.gov.il/ValueSet/cml-followup-code (required)
* code.coding[cml].display 1..1

* component ^slicing.discriminator.type = #value
* component ^slicing.discriminator.path = "code.coding.code"
* component ^slicing.rules = #open
* component contains Topic 0..* and Content 0..*
* component[Topic].code 1..1
* component[Topic].code.coding 1..1
* component[Topic].code.coding.system 1..1
* component[Topic].code.coding.system = "http://fhir.dgmc.health.gov.il/cs/cml-followup-component-type"
* component[Topic].code.coding.code 1..1
* component[Topic].code.coding.code = #topic
* component[Topic].code.coding.display 1..1
* component[Topic].code.coding.display = "נושא המעקב"
* component[Topic].value[x] only string
* component[Topic].valueString 1..1

* component[Content].code 1..1
* component[Content].code.coding 1..1
* component[Content].code.coding.system 1..1
* component[Content].code.coding.system = "http://fhir.dgmc.health.gov.il/cs/cml-followup-component-type"
* component[Content].code.coding.code 1..1
* component[Content].code.coding.code = #content
* component[Content].code.coding.display 1..1
* component[Content].code.coding.display = "תוכן המעקב"
* component[Content].value[x] only string
* component[Content].valueString 1..1

* subject.reference 1..1
* encounter.reference 1..1

* extension contains
    $ext-delete-time-stamp named DeleteTimeStamp 0..1 and
    $ext-delete-user named DeleteUser 0..1 and
    http://hl7.org/fhir/StructureDefinition/event-performerFunction named performerFunction 0..1

* extension[performerFunction].value[x] only CodeableConcept
* extension[performerFunction].valueCodeableConcept.coding 0..*
* extension[performerFunction].valueCodeableConcept.coding.system 1..1
* extension[performerFunction].valueCodeableConcept.coding.system = "http://terminology.hl7.org/CodeSystem/v3-ParticipationType"
* extension[performerFunction].valueCodeableConcept.coding.code 1..1
* extension[performerFunction].valueCodeableConcept.coding.code from http://hl7.org/fhir/ValueSet/performer-function (required)
* extension[performerFunction].valueCodeableConcept.coding.display 1..1
* insert ConformanceMetadata

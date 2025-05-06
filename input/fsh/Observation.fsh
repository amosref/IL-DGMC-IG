Profile: DGMCCmlObservation
Parent: il-core-observation-lab
Id: dgmc-cml-observation
Title: "Dgmc Cml Observation"
Description: "Profile on IL-Core-Observation by DGMC"
* identifier.system 1..1
* identifier.system from http://fhir.dgmc.health.gov.il/ValueSet/cml-manualMonitorIdentifier (required)
* identifier.value 1..1
* category ^slicing.discriminator.type = #value
* category ^slicing.discriminator.path = "system"
* category ^slicing.rules = #open
* category contains CMLmonitor 0..1
* category[CMLmonitor] 0..1
* category[CMLmonitor].coding.system 1..1
* category[CMLmonitor].coding.system = "http://fhir.dgmc.health.gov.il/CodeSystem/cml-ClinicalMonitor" (exactly)
* category[CMLmonitor].coding.code 1..1
* category[CMLmonitor].coding.code = #clinical-monitor (exactly)
* category[CMLmonitor].coding.display 1..1
* category[CMLmonitor].coding.display = "Clinical Monitor" (exactly)
* code 1..1
* code.coding 1..*
* code.coding.system 1..1
* code.coding.code 1..1
* code.coding.display 1..1
* code.coding ^slicing.discriminator.type = #value
* code.coding ^slicing.discriminator.path = "system"
* code.coding ^slicing.rules = #open
* code.coding contains CMLParameterCode 0..1
* code.coding[CMLParameterCode].system 1..1
* code.coding[CMLParameterCode].system = "http://fhir.dgmc.health.gov.il/cs/cml-parameters" (exactly)
* code.coding[CMLParameterCode].code 1..1
* code.coding[CMLParameterCode].display 1..1
* subject.reference 1..1

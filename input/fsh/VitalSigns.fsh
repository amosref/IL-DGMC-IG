Profile: DGMCCMLVitalSigns
Parent: il-core-vital-signs
Id: dgmc-cml-vital-signs
Title: "DGMCCML Vital Signs"
Description: "Profile on IL-Core-VitalSigns by DGMC"
* id 1..1
* identifier 1..1
* identifier.system 1..1
* identifier.value 1..1
* category 2..*
* category contains CMLmonitor 1..1
* category[VSCat].coding.display 1..1
* category[CMLmonitor].coding.system 1..1
* category[CMLmonitor].coding.system = "http://fhir.dgmc.health.gov.il/CodeSystem/cml-ClinicalMonitor" (exactly)
* category[CMLmonitor].coding.code 1..1
* category[CMLmonitor].coding.code = #clinical-monitor (exactly)
* category[CMLmonitor].coding.display 1..1
* category[CMLmonitor].coding.display = "Clinical Monitor" (exactly)
  
* code.coding 2..*
* code.coding ^slicing.discriminator.type = #value
* code.coding ^slicing.discriminator.path = "system"
* code.coding ^slicing.rules = #open
* code.coding contains ilcoreCode 1..1 and CMLParameterCode 1..1
* code.coding[ilcoreCode] from http://hl7.org/fhir/ValueSet/observation-vitalsignresult (required)
* code.coding[ilcoreCode].system 1..1
* code.coding[ilcoreCode].code 1..1
* code.coding[ilcoreCode].display 1..1
* code.coding[CMLParameterCode] from http://fhir.dgmc.health.gov.il/ValueSet/cml-parameters (required)
* code.coding[CMLParameterCode].system 1..1
* code.coding[CMLParameterCode].code 1..1
* code.coding[CMLParameterCode].display 1..1

* encounter.reference 1..1
* effective[x] only dateTime
* effectiveDateTime 1..1
* performer.reference 1..1
* dataAbsentReason.coding.system 1..1
* dataAbsentReason.coding.code 1..1
* dataAbsentReason.coding.display 1..1
* valueQuantity.value 1..1
* valueQuantity.unit 1..1
* valueQuantity.system 1..1
* valueQuantity.code 1..1
* note.authorReference.reference 1..1
* device.identifier 1..1
* device.identifier.system 1..1
* device.identifier.system from http://fhir.dgmc.health.gov.il/ValueSet/cml-deviceMonitorIdentifier (required)
* device.identifier.value 1..1
* device.display 1..1

// * bodySite.coding 0..1
* bodySite.coding ^slicing.discriminator.type = #value
* bodySite.coding ^slicing.discriminator.path = "system"
* bodySite.coding ^slicing.rules = #open
* bodySite.coding contains ilcore 1..1 and cml-MonitorCombo 1..1
* bodySite.coding 2..*
* bodySite.coding[ilcore] 1..1
* bodySite.coding[ilcore] from http://fhir.dgmc.health.gov.il/ValueSet/ilcore (required)
* bodySite.coding[ilcore].system 1..1
* bodySite.coding[ilcore].code 1..1
* bodySite.coding[ilcore].display 1..1
* bodySite.coding[cml-MonitorCombo] 1..1
* bodySite.coding[cml-MonitorCombo] from http://fhir.dgmc.health.gov.il/ValueSet/cml-MonitorCombo (required)
* bodySite.coding[cml-MonitorCombo].system 1..1
* bodySite.coding[cml-MonitorCombo].code 1..1
* bodySite.coding[cml-MonitorCombo].display 1..1

* method 0..1
* method.coding ^slicing.discriminator.type = #value
* method.coding ^slicing.discriminator.path = "system"
* method.coding ^slicing.rules = #open
* method.coding contains ilcore 1..1 and cml-MonitorCombo 1..1
* method.coding 2..*
* method.coding[ilcore] from http://hl7.org/fhir/ValueSet/observation-methods (required)
* method.coding[ilcore].system 1..1
* method.coding[ilcore].code 1..1
* method.coding[ilcore].display 1..1
* method.coding[cml-MonitorCombo].system 1..1
* method.coding[cml-MonitorCombo].system from http://fhir.dgmc.health.gov.il/ValueSet/cml-MonitorCombo (required)
* method.coding[cml-MonitorCombo].code 1..1
* method.coding[cml-MonitorCombo].display 1..1

* component 0..*
* component.code 1..1
* component.code.coding.system 1..1
* component.code.coding.code 1..1
* component.code.coding.display 1..1
* component.code.coding 2..*
* component.code.coding ^slicing.discriminator.type = #value
* component.code.coding ^slicing.discriminator.path = "system"
* component.code.coding ^slicing.rules = #open
* component.code.coding ^slicing.description = ""
* component.code.coding ^slicing.ordered = false
* component.code.coding contains CMLcombo 1..1
* component.code.coding[CMLcombo].system 1..1
* component.code.coding[CMLcombo].system from http://fhir.dgmc.health.gov.il/ValueSet/cml-MonitorCombo (required)
* component.code.coding[CMLcombo].code 1..1
* component.code.coding[CMLcombo].display 1..1

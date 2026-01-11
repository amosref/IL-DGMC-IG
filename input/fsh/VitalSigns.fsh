Profile: DGMCCMLVitalSigns
Parent: il-core-vital-signs
Id: dgmc-cml-vital-signs
Title: "DGMC CML Vital Signs"
Description: "פרופיל חטיבה לסימנים חיוניים ידני ומכשיר"
* insert ConformanceMetadata
* id 1..1
* identifier 1..1
* identifier.system 1..1
* identifier.system from $vsMonitorIdentifiers (required)
* identifier.value 1..1
* category 2..*
* category contains CMLmonitor 1..1
* category[VSCat].coding.display 1..1
* category[VSCat].coding.display = "Vital Signs" (exactly)
* category[CMLmonitor].coding.system 1..1
* category[CMLmonitor].coding.system = $csCmlParametersCategory (exactly)
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
* code.coding[ilcoreCode].system = "http://loinc.org" (exactly)
* code.coding[ilcoreCode].code 1..1
* code.coding[ilcoreCode].display 1..1
* code.coding[CMLParameterCode] from $vsCmlParameters (required)
* code.coding[CMLParameterCode].system 1..1
* code.coding[CMLParameterCode].system = $csCmlParameters (exactly)
* code.coding[CMLParameterCode].code 1..1
* code.coding[CMLParameterCode].display 1..1
* encounter 1..1
* encounter.reference 1..1
* effective[x] only dateTime
* effectiveDateTime 1..1
* performer.reference 1..1
* value[x] only Quantity
* valueQuantity.value 1..1
* valueQuantity.unit 1..1
* valueQuantity.system 1..1
* valueQuantity.code 1..1
* note.authorReference.reference 1..1
* device.identifier 1..1
* device.identifier.system 1..1
* device.identifier.system from $vsCmlDevice (required)
* device.identifier.value 1..1
* device.display 1..1
* bodySite.coding 0..*
* bodySite.coding ^slicing.discriminator.type = #value
* bodySite.coding ^slicing.discriminator.path = "system"
* bodySite.coding ^slicing.rules = #open
* bodySite.coding contains ilcore 0..1 and cml-MonitorCombo 0..1
* bodySite.coding 0..*
* bodySite.coding[ilcore] from http://hl7.org/fhir/ValueSet/body-site (required)
* bodySite.coding[ilcore].system 1..1
* bodySite.coding[ilcore].system = $sct (exactly)
* bodySite.coding[ilcore].code 1..1
* bodySite.coding[ilcore].display 1..1
* bodySite.coding[cml-MonitorCombo].system 1..1
* bodySite.coding[cml-MonitorCombo].system from $vsCmlMonitorCombo (required)
* bodySite.coding[cml-MonitorCombo].code 1..1
* bodySite.coding[cml-MonitorCombo].display 1..1
* method 0..1
* method.coding ^slicing.discriminator.type = #value
* method.coding ^slicing.discriminator.path = "system"
* method.coding ^slicing.rules = #open
* method.coding contains ilcore 0..1 and cml-MonitorCombo 0..1
* method.coding[ilcore] from http://hl7.org/fhir/ValueSet/observation-methods (required)
* method.coding[ilcore].system 1..1
* method.coding[ilcore].system = $sct (exactly)
* method.coding[ilcore].code 1..1
* method.coding[ilcore].display 1..1
* method.coding[cml-MonitorCombo].system 1..1
* method.coding[cml-MonitorCombo].system from $vsCmlMonitorCombo (required)
* method.coding[cml-MonitorCombo].code 1..1
* method.coding[cml-MonitorCombo].display 1..1

* component 0..*
* component.code 1..1
// * component.code.coding.system 1..1
// * component.code.coding.code 1..1
// * component.code.coding.display 1..1
* component.code.coding ^slicing.discriminator.type = #value
* component.code.coding ^slicing.discriminator.path = "system"
* component.code.coding ^slicing.rules = #open
* component.code.coding ^slicing.ordered = false
* component.code.coding contains ilCore 0..1 and cml-MonitorCombo 0..1
* component.code.coding[ilCore].system 1..1
* component.code.coding[ilCore].system from http://fhir.health.gov.il/ValueSet/il-core-observation-code  (required)
* component.code.coding[ilCore].code 1..1
* component.code.coding[ilCore].display 1..1
* component.code.coding[cml-MonitorCombo].system 1..1
* component.code.coding[cml-MonitorCombo].system from $vsCmlMonitorCombo (required)
* component.code.coding[cml-MonitorCombo].code 1..1
* component.code.coding[cml-MonitorCombo].display 1..1

* extension contains $ext-delete-time-stamp named delete-time-stamp 0..1
                and $ext-delete-user named delete-user 0..1
* extension[delete-time-stamp].url 1..1
* extension[delete-time-stamp].url = $ext-delete-time-stamp (exactly)
* extension[delete-user].url 1..1
* extension[delete-user].url = $ext-delete-user (exactly)
* modifierExtension contains $ext-combo-per-param named combo-per-param 0..*
* modifierExtension[combo-per-param].url 1..1
* modifierExtension[combo-per-param].url = $ext-combo-per-param (exactly)

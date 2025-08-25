Profile: DGMCCMLObservation
Parent: il-core-observation
Id: dgmc-cml-observation
Title: "DGMC CML Observation"
Description: "פרופיל חטיבה למדדי מערכת (סוכר בדם)"
* id 1..1
* identifier.system 1..1
* identifier.system from $vsManualMonitorIdentifiers (required)
* identifier.value 1..1
* category ^slicing.discriminator.type = #value
* category ^slicing.discriminator.path = "coding.system"
* category ^slicing.rules = #open
* category contains CMLmonitor 0..1
* category[CMLmonitor].coding.system 1..1
* category[CMLmonitor].coding.system = $csCmlParametersCategory (exactly)
* category[CMLmonitor].coding.code 1..1
* category[CMLmonitor].coding.code = #clinical-monitor (exactly)
* category[CMLmonitor].coding.display 1..1
* category[CMLmonitor].coding.display = "Clinical Monitor" (exactly)
* code.coding 1..*
* code.coding.system 1..1
* code.coding.code 1..1
* code.coding.display 1..1
* code.coding ^slicing.discriminator.type = #value
* code.coding ^slicing.discriminator.path = "system"
* code.coding ^slicing.rules = #open
* code.coding contains CMLParameterCode 0..1
* code.coding[CMLParameterCode] from $vsCmlParameters (required)
* code.coding[CMLParameterCode].system 1..1
* code.coding[CMLParameterCode].system = $csCmlParameters (exactly)
* code.coding[CMLParameterCode].code 1..1
* code.coding[CMLParameterCode].display 1..1
* subject.reference 1..1
* extension contains $ext-delete-time-stamp named delete-time-stamp 0..1
                and $ext-delete-user named delete-user 0..1
* extension[delete-time-stamp].url 1..1
* extension[delete-time-stamp].url = $ext-delete-time-stamp (exactly)
* extension[delete-user].url 1..1
* extension[delete-user].url = $ext-delete-user (exactly)
* modifierExtension contains $ext-combo-per-param named combo-per-param 0..*
* modifierExtension[combo-per-param].url 1..1
* modifierExtension[combo-per-param].url = $ext-combo-per-param (exactly)


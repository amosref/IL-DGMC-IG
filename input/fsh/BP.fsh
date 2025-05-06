Profile: DGMCBP 
Parent: il-core-bp
Id: dgmc-bp
Title: "Dgmc Bp"
Description: "Profile on IL-Core-BP by DGMC"
* insert ConformanceMetadata

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
* code.coding 2..*
* code.coding contains CMLParameterCode 0..1
* code.coding[ilcore] 1..1
* code.coding[ilcore].system 1..1
* code.coding[ilcore].system = $loinc (exactly)
* code.coding[ilcore].code 1..1
* code.coding[ilcore].code = #85354-9 (exactly)
* code.coding[ilcore].display 1..1
* code.coding[CMLParameterCode].system 1..1
* code.coding[CMLParameterCode].system = "http://fhir.dgmc.health.gov.il/cs/cml-parameters" (exactly)
* code.coding[CMLParameterCode].code 1..1
* code.coding[CMLParameterCode].code = #2 (exactly)
* code.coding[CMLParameterCode].display 1..1
* code.coding[CMLParameterCode].display = "לחץ דם" (exactly)
* encounter.reference 1..1
* effective[x] only dateTime
* effectiveDateTime 1..1
* performer.reference 1..1
* dataAbsentReason.coding.system 1..1
* dataAbsentReason.coding.code 1..1
* dataAbsentReason.coding.display 1..1
* note.authorReference.reference 1..1
* device.identifier 1..1
* device.identifier.system 1..1
* device.identifier.value 1..1
* device.display 1..1
* bodySite 0..1
* bodySite.coding ^slicing.discriminator.type = #value
* bodySite.coding ^slicing.discriminator.path = "system"
* bodySite.coding ^slicing.rules = #open
* bodySite.coding ^slicing.description = "Bodysite"
* bodySite.coding contains snomed 1..1 and DGMC 1..1
* bodySite.coding[snomed] 1..1
* bodySite.coding[snomed] from http://hl7.org/fhir/ValueSet/body-site (required)
* bodySite.coding[snomed].system 1..1
* bodySite.coding[snomed].system = $sct
* bodySite.coding[snomed].code 1..1
* bodySite.coding[snomed].display 1..1
* bodySite.coding[DGMC] 1..1
* bodySite.coding[DGMC].system 1..1
* bodySite.coding[DGMC].system = "http://fhir.dgmc.health.gov.il/ValueSet/cml-MonitorCombo" (exactly)
* bodySite.coding[DGMC].code 1..1
* bodySite.coding[DGMC].display 1..1
* component[SystolicBP].code.coding 2..2
* component[SystolicBP].code.coding contains SBPCodeCML 1..1
* component[SystolicBP].code.coding[SBPCodeCML] 1..1
* component[SystolicBP].code.coding[SBPCodeCML].system 1..1
* component[SystolicBP].code.coding[SBPCodeCML].system = "http://fhir.dgmc.health.gov.il/cs/cml-parameters" (exactly)
* component[SystolicBP].code.coding[SBPCodeCML].code 1..1
* component[SystolicBP].code.coding[SBPCodeCML].code = #23 (exactly)
* component[SystolicBP].code.coding[SBPCodeCML].display 1..1
* component[SystolicBP].code.coding[SBPCodeCML].display = "לחץ סיסטולי" (exactly)
* component[SystolicBP].valueQuantity 1..1
* component[SystolicBP].valueQuantity.unit 1..1
* component[SystolicBP].valueQuantity.system 1..1
* component[SystolicBP].valueQuantity.code 1..1
* component[SystolicBP].referenceRange.low.value 1..1
* component[SystolicBP].referenceRange.high.value 1..1
* component[DiastolicBP].code.coding 2..*
* component[DiastolicBP].code.coding contains DBPCodeCML 1..1
* component[DiastolicBP].code.coding[DBPCodeCML] 1..1
* component[DiastolicBP].code.coding[DBPCodeCML].system 1..1
* component[DiastolicBP].code.coding[DBPCodeCML].system = "http://fhir.dgmc.health.gov.il/cs/cml-parameters" (exactly)
* component[DiastolicBP].code.coding[DBPCodeCML].code 1..1
* component[DiastolicBP].code.coding[DBPCodeCML].code = #24 (exactly)
* component[DiastolicBP].code.coding[DBPCodeCML].display 1..1
* component[DiastolicBP].code.coding[DBPCodeCML].display = "לחץ דיאסטולי" (exactly)
* component[DiastolicBP].valueQuantity 1..1
* component[DiastolicBP].valueQuantity.unit 1..1
* component[DiastolicBP].valueQuantity.system 1..1
* component[DiastolicBP].valueQuantity.code 1..1
* component[DiastolicBP].referenceRange.low.value 1..1
* component[DiastolicBP].referenceRange.high.value 1..1
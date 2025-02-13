Profile: DGMCEncounterChameleon
Parent: ILCoreEncounter
Id: dgmc-encounter-cml
Title: "DGMC Encounter Chameleon"
Description: "DGMC Encounter Chameleon"
* insert ConformanceMetadata

* id 1..1
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.ordered = false
* identifier contains cml-medical-record 1..2
* identifier[cml-medical-record].system 1..1
* identifier[cml-medical-record].system from $vsCmlMedRecUri (required)
* identifier[cml-medical-record].value 1..1
* identifier[cml-medical-record].type.coding.system = $csCmlMedRecType (exactly)
* class.system = "http://terminology.hl7.org/CodeSystem/v3-ActCode"
* type 1..*
* type.coding 1..1
* type contains cml-medical-record-type 1..1
* type[cml-medical-record-type].coding from $vsCmlMedRecType (required)
* type[cml-medical-record-type].coding.system 1..1
* type[cml-medical-record-type].coding.system = "http://fhir.dgmc.health.gov.il/cs/cml-medical-record-type"
* type[cml-medical-record-type].coding.code 1..1
* type[cml-medical-record-type].coding.display 1..1
* serviceProvider.reference 1..1
* period 1..1
* period.start 1..1
Profile: DGMCEncounterNamerCase
Parent: ILCoreEncounter
Id: dgmc-encounter-case
Title: "DGMC Encounter Namer Case"
Description: "DGMC Encounter Namer Case"
* insert ConformanceMetadata
* ^url = $EncounterCase
* meta.security.system	1..1
* meta.security.system	= "http://terminology.hl7.org/CodeSystem/v3-Confidentiality" (exactly)
* meta.security.code 1..1
* meta.security.code = #R (exactly)
* meta.security.display	1..1
* meta.security.display	= "restricted" (exactly)
// * extension[paying-entity].valueCodeableConcept.coding.code	1..1
// * extension[paying-entity].valueCodeableConcept.coding.display 1..1
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.ordered = false
* identifier contains nmr-case 1..1
* identifier[nmr-case].system 1..1
* identifier[nmr-case].system from $HospitalsUrisNmrCaseNumVS
* identifier[nmr-case].value 1..1
* type contains admission-type 0..1 and home-check-in 0..1
* type[admission-type] from $vs-admission-type (required)
* type[admission-type].coding.system 1..1
* type[admission-type].coding.code 1..1
* type[admission-type].coding.display 1..1
* type[home-check-in] = $home-check-in#9
* type[home-check-in].coding
  * display 1..1
  * display = "צ'ק-אין מהבית" (exactly)
* period.start 1..1
* hospitalization.admitSource 1..1
* hospitalization.admitSource.coding 1..*
* hospitalization.admitSource.coding from $vs-patient-admit-source-moh (extensible)
* hospitalization.admitSource.coding.system	1..1
* hospitalization.admitSource.coding.code 1..1
* hospitalization.admitSource.coding.display 1..1
* hospitalization.dietPreference from $HospitalsUrisEncDietPrefVS 
* serviceProvider.reference	1..1
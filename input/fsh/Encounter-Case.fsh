Profile: DGMCEncounterNamerCase
Parent: ILCoreEncounter
Id: dgmc-encounter-case
Title: "DGMC Encounter Namer Case"
Description: "DGMC Encounter Namer Case"
* insert ConformanceMetadata

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
* identifier[nmr-case].system from $vsNmrCaseIdUri
* identifier[nmr-case].value 1..1
* class.system = "http://terminology.hl7.org/CodeSystem/v3-ActCode" (exactly)


* type contains admission-type 0..1 and home-check-in 0..1
* type[admission-type] from $vsAdmType (required)
* type[admission-type].coding.system 1..1
* type[admission-type].coding.code 1..1
* type[admission-type].coding.display 1..1

* type[home-check-in] = $csHomeCheckIn#9 
//"צק-אין מהבית"
* type[home-check-in].coding.system 1..1
* type[home-check-in].coding.code 1..1
* type[home-check-in].coding.display 1..1
* type[home-check-in].coding ^slicing.discriminator.type = #pattern
* type[home-check-in].coding ^slicing.discriminator.path = "$this"
* type[home-check-in].coding ^slicing.rules = #open
* type[home-check-in].coding contains dgmc 1..1
* type[home-check-in].coding[dgmc] = $csHomeCheckIn#9 
* type[home-check-in].coding[dgmc].display = "צ'ק-אין מהבית" (exactly)




* period.start 1..1
* hospitalization.admitSource 1..1
* hospitalization.admitSource from $vs-patient-admit-source-moh (extensible)
* hospitalization.admitSource.coding 1..*
* hospitalization.admitSource.coding.system	1..1
* hospitalization.admitSource.coding.system	= "http://fhir.health.gov.il/cs/patient-admit-source-moh"
* hospitalization.admitSource.coding.code 1..1
* hospitalization.admitSource.coding.display 1..1
* hospitalization.dietPreference from $vsDietPrefUri
* hospitalization.origin only Reference(ILCoreOrganization)
* hospitalization.origin.identifier.system = "http://institutions.health.gov.il/Institutions" (exactly)
* serviceProvider.reference	1..1

// https://github.com/Outburn-IL/IL-DGMC-IG/issues/9
* subject.extension[visitor-type].valueCodeableConcept from $vsPatVisitorTy (extensible)
* subject.extension[visitor-type].valueCodeableConcept.coding.system = "http://fhir.dgmc.health.gov.il/cs/patient-visitor-type" (exactly)

* reasonCode.coding.system = "http://fhir.health.gov.il/cs/patient-visit-reason-moh" (exactly)
Profile: DGMCPractitionerRole
Parent: ILCorePractitionerRole
Id: dgmc-practitioner-role
Title: "DGMC Practitioner Role"
Description: "Profile on IL-Core-PractitionerRole by DGMC"
* insert ConformanceMetadata
* extension contains ext-permission named ConsultPer 0..1
* extension[ConsultPer].url 1..1
* extension[ConsultPer].url = $ext-consult-permission (exactly)
* extension[ConsultPer].valueCode 1..1
* code 1..2
* code.coding
  * system 1..1
  * system = "http://fhir.dgmc.health.gov.il/cs/cml-sector" (exactly)
  * code 1..1
  * display 1..1
* code ^slicing.discriminator.type = #value
* code ^slicing.discriminator.path = "coding.code"
* code ^slicing.rules = #open
* code contains intern 0..1
* code[intern].coding
  * code = #19 (exactly)
  * display = "סטאז'ר" (exactly)

* location 0..*

// * code contains cml-sector 1..2
// * code[cml-sector].coding
//   * system 1..1
//   * system = "http://fhir.dgmc.health.gov.il/cs/cml-sector" (exactly)
// //   * code = #1 (exactly)
//   * display 1..1
// * code[cml-sector] ^slicing.discriminator[0].type = #value
// * code[cml-sector] ^slicing.discriminator[0].path = "coding.system"
// * code[cml-sector] ^slicing.discriminator[1].type = #value
// * code[cml-sector] ^slicing.discriminator[1].path = "coding.code"
// * code[cml-sector] ^slicing.rules = #open
// * code[cml-sector] contains intern 0..1
// * code[cml-sector][intern].coding
//   * code = #19 (exactly)
//   * display 1..1
//   * display = "סטאז'ר" (exactly)

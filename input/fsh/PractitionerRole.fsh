Profile: DGMCPractitionerRole
Parent: ILCorePractitionerRole
Id: dgmc-practitioner-role
Title: "DGMC Practitioner Role"
Description: "Profile on IL-Core-PractitionerRole by DGMC"
* insert ConformanceMetadata
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

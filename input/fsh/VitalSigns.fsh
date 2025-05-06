// Profile: DGMCCMLVitalSigns
// Parent: il-core-vital-signs
// Id: dgmc-cml-vital-signs
// Title: "DGMCCML Vital Signs"
// Description: "Profile on IL-Core-VitalSigns by DGMC"
// * id 1..1
// * identifier 1..1
// * identifier.system 1..1
// * identifier.value 1..1
// // * category 0..*
// * category[CMLmonitor] 1..1
// * category[CMLmonitor].coding.system 1..1
// * category[CMLmonitor].coding.code 1..1
// * category[CMLmonitor].coding.display 1..1
// * code 1..1
// * code[CMLParameterCode] 1..1
// * code[CMLParameterCode].coding.system 1..1
// * code[CMLParameterCode].coding.code 1..1
// * code[CMLParameterCode].coding.display 1..1
// * encounter.reference 1..1
// * performer.reference 1..1
// * dataAbsentReason.coding.system 1..1
// * dataAbsentReason.coding.code 1..1
// * dataAbsentReason.coding.display 1..1
// * valueQuantity.value 1..1
// * valueQuantity.unit 1..1
// * valueQuantity.system 1..1
// * valueQuantity.code 1..1
// * note.authorReference.reference 1..1
// * device.Identifier 1..1
// * device.identifier.system 1..1
// * device.identifier.value 1..1
// * device.display 1..1
// * bodySite 0..1
// * bodySite.coding[0] 1..1
// * bodySite.coding.system 1..1
// * bodySite.coding.code 1..1
// * bodySite.coding.display 1..1
// * bodySite.coding[1] 1..1
// * bodySite.coding.system 1..1
// * bodySite.coding.code 1..1
// * bodySite.coding.display 1..1
// * method 0..1
// * method.coding[0] 1..1
// * method.coding.system 1..1
// * method.coding.code 1..1
// * method.coding.display 1..1
// * method.coding[1] 1..1
// * method.coding.system 1..1
// * method.coding.code 1..1
// * method.coding.display 1..1
// * component 0..*
// * component.code 1..1
// * component.code.coding 1..1
// * component.code.coding.system 1..1
// * component.code.coding.code 1..1
// * component.code.coding.display 1..1
// * component.code.coding[CMLcombo] 0..1
// * component.code.coding[CMLcombo].system 1..1
// * component.code.coding[CMLcombo].code 1..1
// * component.code.coding[CMLcombo].display 1..1

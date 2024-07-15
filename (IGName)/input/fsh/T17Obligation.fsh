Profile: T17Obligation
Parent: il-core-coverage
Id: t17-obligation
Title: "T17 Obligation"
Description: "פרטי ההתחייבות המאושרת"
* ^url = $T17-obligation
* id 1..1
* identifier 1..*
* identifier.system 1..1
* identifier.value 1..1
* type.coding 1..*
* type.coding.system 1..1
* type.coding.system = $coverage-type (exactly)
* type.coding.code 1..1
* type.coding.code = #OBL
* beneficiary.identifier 1..1
* beneficiary.identifier.system 1..1
* beneficiary.identifier.value 1..1
* period 1..1
* period.start 1..1
* payor.identifier.system 1..1
* payor.identifier.value 1..1
* class.type.coding 1..*
* class.type.coding.system 1..1
* class.type.coding.system = $coverage-class (exactly)
* class.type.coding.code 1..1

// checked 21-4-24 Kippi
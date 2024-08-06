Profile: DgmcUnitLocation
//DgmcOuLocation - GILI
Parent: il-core-location
Id: dgmc-unit-location
//dgmc-ou-location - GILI
Title: "DGMC Unit Location"
// "DGMC OU Location" - GILI
Description: "Profile of DGMC Unit Location"
// "DGMC Organizational Unit Location" - GILI
* insert ConformanceMetadata

* id 1..1

* identifier 
  * ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = "system"
  * ^slicing.rules = #open
  * ^slicing.ordered = false

* identifier contains nmr-orgid-text 1..1 
* identifier[nmr-orgid-text].system 1..1
* identifier[nmr-orgid-text].system from $vsNmrOrgidTextUri (required)
* identifier[nmr-orgid-text].value 1..1 

* identifier contains nmr-orgid-code 1..1 
* identifier[nmr-orgid-code].system 1..1
* identifier[nmr-orgid-code].system from $vsNmrOrgidCodeUri (required)
* identifier[nmr-orgid-code].value 1..1 

* identifier contains cml-ou-code 1..1 
* identifier[cml-ou-code].system 1..1
* identifier[cml-ou-code].system from $vsCmlUnitCodeUri (required)
* identifier[cml-ou-code].value 1..1 

* status 1..1
* alias 1..1


// * mode 1..1 
// * mode = #instance

* type 1..*
  * ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = "$this"
  * ^slicing.rules = #closed
  * ^slicing.ordered = false
* type contains unit 1..1 and nmr-unit-type 1..1

* type[unit] = http://terminology.hl7.org/CodeSystem/v3-RoleCode#HU
* type[unit].coding.display 1..1
* type[unit].coding.display = "Hospital unit"

* type[nmr-unit-type] from $vsNmrUnitType (required)
* type[nmr-unit-type].coding.system 1..1
* type[nmr-unit-type].coding.code 1..1
* type[nmr-unit-type].coding.display 1..1

* physicalType 1..1
* physicalType.coding 1..1
* physicalType.coding.system 1..1
* physicalType.coding.system = "http://terminology.hl7.org/CodeSystem/location-physical-type"
* physicalType.coding.code 1..1
* physicalType.coding.code = #wa
* physicalType.coding.display 1..1
* physicalType.coding.display = "Ward"

* telecom
  * ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = "system"
  * ^slicing.rules = #open
  * ^slicing.ordered = false
* telecom contains phone 0..* and fax 0..* and email 0..*
* telecom[phone].system 1..1
* telecom[phone].system = #phone (exactly)
* telecom[phone].value 1..1
* telecom[fax].system 1..1
* telecom[fax].system = #fax (exactly)
* telecom[fax].value 1..1
* telecom[email].system 1..1
* telecom[email].system = #email (exactly)
* telecom[email].value 1..1

* address 1..1
* address.extension contains $extDAR named dar 1..1
* address.extension[dar].valueCode = #unknown

* managingOrganization.reference 1..1

* partOf.reference 1..1
* partOf only Reference(DgmcHospitalLocation)


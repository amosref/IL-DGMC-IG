Profile: DgmcNmrOrganization
Parent: il-core-organization
Id: dgmc-nmr-organization
Title: "DGMC Namer Organization"
Description: "Profile of DGMC Namer Organization Unit"
* insert ConformanceMetadata

* meta.security.system 1..1
* meta.security.code 1..1
* meta.security.display 1..1
* id 1..1
// local slice: nmr-orgid-text - new
* identifier contains nmr-orgid-text 1..1 
* identifier[nmr-orgid-text].system 1..1
* identifier[nmr-orgid-text].system from $vsNmrOrgidTextUri (required)
* identifier[nmr-orgid-text].value 1..1 
// local slice: nmr-orgid-code - new
* identifier contains nmr-orgid-code 1..1 
* identifier[nmr-orgid-code].system 1..1
* identifier[nmr-orgid-code].system from $vsNmrOrgidCodeUri (required)
* identifier[nmr-orgid-code].value 1..1 
* active 1..1

* type contains nmr-unit-type 1..*
* type[nmr-unit-type] from $vsNmrUnitType (required)
* type[nmr-unit-type].coding.system 1..1
* type[nmr-unit-type].coding.code 1..1
* type[nmr-unit-type].coding.display 1..1

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

* address.text 1..1
* partOf.reference 1..1
* partOf.display 1..1


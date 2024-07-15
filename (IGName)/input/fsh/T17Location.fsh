Profile: T17Location
Parent: il-core-location
Id: t17-requested-location
Title: "T17 Requested Location"
Description: "המיקום אליו נקבע התור - כולל פרטי מחלקה/מרפאה ובית חולים"
* ^url = $T17-requested-location
* mode 1..1
* mode = #instance (exactly)
* type ^slicing.discriminator.type = #value
* type ^slicing.discriminator.path = "$this"
* type ^slicing.rules = #open
* type ^slicing.ordered = false
* type contains moh-type 1..*
* type[moh-type].coding 1..*
* type[moh-type].coding 1..1
* type[moh-type].coding from $vs-moh-dept-type (required)
* type[moh-type].coding.system 1..1
* type[moh-type].coding.system  = "http://fhir.health.gov.il/cs/department-type-moh"
* type[moh-type].coding.code 1..1
* type[moh-type].coding.display 1..1
* managingOrganization 1..1
* managingOrganization.identifier 1..1
* managingOrganization.identifier.system 1..1
* managingOrganization.identifier.value 1..1
 
// checked 21-4-24 Kippi
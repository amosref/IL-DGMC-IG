Profile: DgmcHospitalOrganization
Parent: il-core-organization
Id: dgmc-hospital-organization
Title: "DGMC Hospital Organization"
Description: "Profile of DGMC Hospital Organization"
* insert ConformanceMetadata

* id 1..1
// * identifier contains moh-inst-symbol 1..1
* identifier[moh-inst-symbol] 1..1
* identifier[moh-inst-symbol].system 1..1
* identifier[moh-inst-symbol].value 1..1 

// local slice: cml-hosp-code - new
* identifier contains cml-hosp-code 1..1 
* identifier[cml-hosp-code].system 1..1
* identifier[cml-hosp-code].system from $vsCmlHospCodeUri (required)
* identifier[cml-hosp-code].value 1..1 

* active 1..1

* type contains hosp 1..*
* type[hosp].coding.system 1..1
* type[hosp].coding.system = "http://fhir.dgmc.health.gov.il/cs/nmr-unit-type" (exactly)
* type[hosp].coding.code 1..1
* type[hosp].coding.code = #HO (exactly)
* type[hosp].coding.display 1..1
* type[hosp].coding.display = "בית חולים" (exactly)

* alias 1..1

* telecom
  * ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = "system"
  * ^slicing.rules = #open
  * ^slicing.ordered = false
* telecom contains phone 0..* and fax 0..* and email 0..* and url 0..*
* telecom[phone].system 1..1
* telecom[phone].system = #phone (exactly)
* telecom[phone].value 1..1
* telecom[fax].system 1..1
* telecom[fax].system = #fax (exactly)
* telecom[fax].value 1..1
* telecom[email].system 1..1
* telecom[email].system = #email (exactly)
* telecom[email].value 1..1
* telecom[url].system 1..1
* telecom[url].system = #url (exactly)
* telecom[url].value 1..1

* address.text 1..1


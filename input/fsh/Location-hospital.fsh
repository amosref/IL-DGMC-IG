Profile: DgmcHospitalLocation
Parent: il-core-location
Id: dgmc-hospital-location
Title: "DGMC Hospital Location"
Description: "Profile of DGMC Hospital Location from Chameleon"
* insert ConformanceMetadata


* id 1..1

* identifier
  * ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = "system"
  * ^slicing.rules = #open
  * ^slicing.ordered = false

* identifier contains moh-inst-symbol 0..1 and cml-hosp-code 1..1 
//דניאל, הגדרתי קארדינליות לסלייס קיים. האם נכון כך?
// * identifier contains moh-inst-symbol 1..1
* identifier[moh-inst-symbol] 1..1
* identifier[moh-inst-symbol].system 1..1
* identifier[moh-inst-symbol].value 1..1 
// local slice: cml-hosp-code - new
* identifier[cml-hosp-code].system 1..1
* identifier[cml-hosp-code].system from $vsCmlHospCodeUri (required)
* identifier[cml-hosp-code].value 1..1 

* alias 1..1
* mode 1..1 
//דניאל - ההגדרה הזו נופלת בולידציה בהאפי ואני לא מבינה למה
* mode = #instance

* type 1..*
  * ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = "system"
  * ^slicing.rules = #open
  * ^slicing.ordered = false
* type contains hosp 1..* and hosp-loc 1..*

* type[hosp].coding 1..*
* type[hosp].coding.system 1..1
* type[hosp].coding.system = "http://terminology.hl7.org/CodeSystem/v3-RoleCode"
* type[hosp].coding.code 1..1
* type[hosp].coding.code = #HOSP
* type[hosp].coding.display 1..1
* type[hosp].coding.display = "Hospital"

* type[hosp-loc].coding.system 1..1
* type[hosp-loc].coding.system = "http://fhir.dgmc.health.gov.il/cs/nmr-unit-type" (exactly)
* type[hosp-loc].coding.code 1..1
* type[hosp-loc].coding.code = #HO (exactly)
* type[hosp-loc].coding.display 1..1
* type[hosp-loc].coding.display = "בית חולים" (exactly)

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



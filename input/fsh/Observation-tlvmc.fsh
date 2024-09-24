Profile: TlvmcLabResult
Parent: il-core-observation-lab
Id: tlvmc-lab-result
Title: "TLVMC Lab Result"
Description: "Profile of TLVMC Lab Test Result"
* insert ConformanceMetadata

* id 1..1
* identifier.system 1..1
* identifier.system = "http://fhir.tlvmc.gov.il/identifier/lab-result"
* basedOn.identifier.system 1..1
* basedOn.identifier.system = "http://fhir.tlvmc.gov.il/identifier/lab-request"
* interpretation.coding.system 1..1
* interpretation.coding.system = "http://fhir.tlvmc.gov.il/cs/abnormal-flags"

* performer contains organization 0..1
* performer[organization].identifier.system 1..1





* identifier[cml-ou-code].system from $vsCmlOuCodeUri (required)
* identifier[cml-ou-code].value 1..1 
* active 1..1
* type contains flags 0..* 
* type[flags] from $vsOuClassFlag (required)
* type[flags].coding 1..1
* type[flags].coding.system 1..1
* type[flags].coding.system = "http://fhir.dgmc.health.gov.il/cs/ou-classification-flag"
* type[flags].coding.code 1..1
* type[flags].coding.display 1..1
* partOf.reference 1..1

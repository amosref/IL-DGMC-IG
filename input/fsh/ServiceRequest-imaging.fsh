Profile: DGMCServiceRequestImaging
Parent: il-core-service-request
Id: dgmc-imaging-service-request
Title: "DGMC Imaging Service Request"
Description: "Profile on IL-Core-Service-Request by DGMC for Imaging"
// * insert ConformanceMetadata
* id 1..1
* identifier 1..*
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.description = "הבדלה בין"
* identifier ^slicing.ordered = false
* identifier contains order-code-part 1..1 and order-accession-part 0..1
* identifier[order-code-part].system 1..1
* identifier[order-code-part].system from $vsNmrImgOrderService (required)
* identifier[order-code-part].value 1..1
* identifier[order-code-part].type 1..1
* identifier[order-code-part].type.coding 1..*
* identifier[order-code-part].type.coding.system 1..1
* identifier[order-code-part].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203" (exactly)
* identifier[order-code-part].type.coding.code 1..1
* identifier[order-code-part].type.coding.code = #PGN (exactly)
* identifier[order-code-part].type.coding.display 1..1
* identifier[order-code-part].type.coding.display = "Placer Group Number" (exactly)
* identifier[order-accession-part].system 1..1
* identifier[order-accession-part].system = "http://fhir.dgmc.health.gov.il/identifier/img-accession-number" (exactly)
* identifier[order-accession-part].value 1..1
* identifier[order-accession-part].type 1..1
* identifier[order-accession-part].type.coding 1..*
* identifier[order-accession-part].type.coding.system 1..1
* identifier[order-accession-part].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203" (exactly)
* identifier[order-accession-part].type.coding.code 1..1
* identifier[order-accession-part].type.coding.code = #ACSN (exactly)
* identifier[order-accession-part].type.coding.display 1..1
* identifier[order-accession-part].type.coding.display = "Accession ID" (exactly)
* replaces.reference 1..1
* requisition 1..1
* requisition.system 1..1
* requisition.system from $vsNmrImgOrderNumber (required)
* requisition.value 1..1
* status.extension contains $ext-nmr-service-status-code named status-code 1..*
* status.extension[status-code].url 1..1
* status.extension[status-code].url = $ext-nmr-service-status-code (exactly)
* status.extension[status-code].valueCode 1..1
* category contains namer 1..1
* category[il-core].coding.system = $sct (exactly)
* category[il-core].coding.code = #363679005 (exactly)
* category[il-core].coding.display = "Imaging (procedure)" (exactly)
* category[namer] ^patternCodeableConcept.coding[0].system = "http://fhir.dgmc.health.gov.il/cs/nmr-imaging-unit-category"
* category[namer].coding 1..*
* category[namer].coding ^slicing.discriminator.type = #value
* category[namer].coding ^slicing.discriminator.path = "system"
* category[namer].coding ^slicing.rules = #open
* category[namer].coding ^slicing.description = "הבדלה בין מערכות"
* category[namer].coding ^slicing.ordered = false
* category[namer].coding contains namer-code 1..1 and coview-code 0..1
* category[namer].coding[namer-code].system 1..1
* category[namer].coding[namer-code].system = "http://fhir.dgmc.health.gov.il/cs/nmr-imaging-unit-category" (exactly) // !!!this does no exist!!!
* category[namer].coding[namer-code].code 1..1
* category[namer].coding[namer-code].display 1..1
* category[namer].coding[coview-code].system 1..1
* category[namer].coding[coview-code].system from $vsCoviewImagingUnit (required)
* category[namer].coding[coview-code].code 1..1
* category[namer].coding[coview-code].display 1..1
* code.coding 0..*
* code.coding ^slicing.discriminator.type = #value
* code.coding ^slicing.discriminator.path = "system"
* code.coding ^slicing.rules = #open
* code.coding ^slicing.description = "הבדלה בין סוגי קוד שונים"
* code.coding ^slicing.ordered = false
* code.coding contains group 0..1 and single 0..1 and billing 0..1 and loinc 0..1
* code.coding[group].system 1..1
* code.coding[group].system from $vsNmrImgServiceGroupUri (required)
* code.coding[group].code 1..1
* code.coding[group].display 1..1
* code.coding[single].system 1..1
* code.coding[single].system = "http://fhir.dgmc.health.gov.il/cs/img-service-single-code" (exactly)
* code.coding[single].code 1..1
* code.coding[single].display 1..1
* code.coding[billing].system 1..1
* code.coding[billing].system = "http://fhir.health.gov.il/cs/medical-service-moh" (exactly)
* code.coding[billing].code 1..1
* code.coding[billing].display 1..1
* code.coding[loinc].system 1..1
* code.coding[loinc].system = $loinc (exactly)
* code.coding[loinc].code 1..1
* code.coding[loinc].display 1..1
* encounter 1..1
* encounter.reference 1..1
* authoredOn 1..1
* requester 1..1
* requester.reference 1..1
* requester.identifier 1..1
* requester.identifier.system 1..1
* requester.identifier.system from $vsNmrOuTextUri (required)
* requester.identifier.value 1..1
* performer 1..*
* performer.reference 1..1
* performer.identifier 1..1
* performer.identifier.system 1..1
* performer.identifier.system from $vsNmrOuTextUri (required)
* performer.identifier.value 1..1

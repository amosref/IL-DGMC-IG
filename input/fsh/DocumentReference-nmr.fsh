Profile: DGMCNmrDocumentReference
Parent: http://hdp.fhir.health.gov.il/StructureDefinition/il-hdp-document-reference
Id: dgmc-nmr-document-reference
Title: "DGMC NMR DocumentReference"
Description: "פרופיל חטיבה לסיכומים"
* ^url = "http://fhir.dgmc.health.gov.il/StructureDefinition/dgmc-nmr-document-reference"

// ID
* id 1..1

// MasterIdentifier
* masterIdentifier 1..1
* masterIdentifier.system 1..1
* masterIdentifier.system from $vsNmrDocumentVersioned (required)
* masterIdentifier.value 1..1

// Identifier
* identifier.system 1..1
* identifier.system from $vsNmrDocuments (required)
* identifier.value 1..1

// Type with slicing
* type.coding 1..*
* type.coding ^slicing.discriminator.type = #value
* type.coding ^slicing.discriminator.path = "system"
* type.coding ^slicing.rules = #open

* type.coding contains nmr-doc-type 1..1
* type.coding[nmr-doc-type].system 1..1
* type.coding[nmr-doc-type].system = "http://fhir.dgmc.health.gov.il/cs/nmr-document-type" (exactly)
* type.coding[nmr-doc-type].code 1..1
* type.coding[nmr-doc-type].code = #M (exactly)
* type.coding[nmr-doc-type].display 1..1
* type.coding[nmr-doc-type].display = "מסמך רפואי" (exactly)

// Category
* category 1..1
* category.coding 1..1
* category.coding.system 1..1
* category.coding.system from $vsNmrDocumentCategory (required)
* category.coding.code 1..1
* category.coding.display 1..1

// Description
* description 1..1

// Content
* content.attachment.contentType = #application/pdf
* content.attachment.url 1..1
* content.attachment.title 1..1

// Context
* context 1..1
* context.encounter.reference 1..1
* context.period 1..1
* context.period.start 1..1
* insert ConformanceMetadata

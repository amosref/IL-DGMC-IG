// Alias: $vsCmlDocumentVersioned = http://fhir.dgmc.health.gov.il/ValueSet/cml-document-versioned
// Alias: $vsCmlDocuments = http://fhir.dgmc.health.gov.il/ValueSet/cml-documents
// Alias: $vsCmlDocumentType = http://fhir.dgmc.health.gov.il/ValueSet/cml-document-type
// Alias: $vsNmrDocumentCategory = http://fhir.dgmc.health.gov.il/ValueSet/nmr-document-category

Profile: DGMCCmlDocumentReference
Parent: http://hdp.fhir.health.gov.il/StructureDefinition/il-hdp-document-reference
Id: dgmc-cml-document-reference
Title: "DGMC CML DocumentReference"
Description: "פרופיל חטיבה לסיכומים"
* ^url = "http://fhir.dgmc.health.gov.il/StructureDefinition/dgmc-cml-document-reference"

// ID
* id 1..1

// MasterIdentifier
* masterIdentifier 1..1
* masterIdentifier.system 1..1
* masterIdentifier.system from $vsCmlDocumentVersioned (required)
* masterIdentifier.value 1..1

// Identifier
* identifier.system 1..1
* identifier.system from $vsCmlDocuments (required)
* identifier.value 1..1

// Type with slicing
* type.coding 1..*
* type.coding ^slicing.discriminator.type = #value
* type.coding ^slicing.discriminator.path = "system"
* type.coding ^slicing.rules = #open

* type.coding contains cml-doc-type 1..1
* type.coding[cml-doc-type].system 1..1
* type.coding[cml-doc-type].system from $vsCmlDocumentType (required)
* type.coding[cml-doc-type].code 1..1
* type.coding[cml-doc-type].display 1..1

// Category
* category.coding.system 1..1
* category.coding.system from $vsNmrDocumentCategory (required)
* category.coding.code 1..1
* category.coding.display 1..1

// Custodian and description
* custodian.reference 1..1
* description 1..1

// Content
* content.attachment.contentType = #application/pdf
* content.attachment.url 1..1
* content.attachment.size 1..1
* content.attachment.title 1..1

// Context
* context 1..1
* context.encounter.reference 1..1
* context.period 1..1

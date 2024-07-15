Profile: T17ObligationDoc
Parent: il-core-document-reference
Id: t17-obligation-doc
Title: "T17 Obligation Doc"
Description: "מסמך ההתחייבות המאושרת, כחלק מפרטי המענה לבקשת ההתחייבות"
* ^url = $T17-obligation-doc
// * extension contains $ext-doc-event-date named doc-event-date 1..1
// * extension[doc-event-date].valueDateTime 1..1
* type 1..1
* type.coding ^slicing.discriminator.type = #value
* type.coding ^slicing.discriminator.path = "$this"
* type.coding ^slicing.rules = #open
* type.coding ^slicing.description = ""
* type.coding ^slicing.ordered = false
* type.coding contains oblig 1..1
* type.coding[oblig].system 1..1
* type.coding[oblig].system = $loinc (exactly)
* type.coding[oblig].code 1..1
* type.coding[oblig].code = #64291-8 (exactly)
* type.coding[oblig].display 1..1
* type.coding[oblig].display = "Health insurance-related form"
* subject 1..1
* context.related.type 1..1
* context.related.type = #Coverage
* context.related.reference 1..1

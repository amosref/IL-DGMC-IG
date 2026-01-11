Extension: MedOrderProtDesc
Id: ext-med-order-protocol-desc
Title: "Medication Order Protocol Description"
Description: "תיאור הפרוטוקול"
Context: MedicationRequest.instantiatesUri
* insert ConformanceMetadata

* ^url = $ext-med-order-protocol-desc
* value[x] only string
* valueString 1..1

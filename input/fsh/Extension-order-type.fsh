Extension: MedOrderType
Id: ext-med-order-type
Title: "Medication Order Type"
Description: "סוג הוראה - הייצוג המקומי של סוג ההוראה לתרופה, כגון SOS, Periodically, Once, Continuous"
Context: MedicationRequest
* ^url = $ext-med-order-type
* value[x] only code
* valueCode 1..1

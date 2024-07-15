Profile: T17BundleSearchPatient
Parent: Bundle
Id: t17-bundle-search-pat
Title: "T17 Bundle Search Patient"
Description: "תשובת הקופה המוחזרת לביה\"ח עם הפרטים והמזהה הלוגי של המטופל בקופה"
* ^url = $T17-bundle-search-pat
* type 1..1
* type = #searchset
* entry obeys bundle-https
* entry 0..1
* entry.fullUrl 1..1
* entry.resource 1..1
* entry.resource only il-core-patient
* entry.search 1..1
* entry.search.mode 1..1
* entry.search.mode = #match (exactly)
// checked 22-4-24 Kippi
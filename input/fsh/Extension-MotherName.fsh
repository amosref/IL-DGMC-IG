Profile: ExtensionMotherName
Parent: $ext-parent-name
Id: ext-mother-name
Title: "Extension - Mother Name"
Description: "Extension - Administrative Parent Name with fixed MTH role"
* insert ConformanceMetadata
* ^url = $ext-mth-name
* extension[role] 1..1
* extension[role].url 1..1
* extension[role].url = "role" (exactly)
* extension[role].valueCode 1..1
* extension[role].valueCode = #MTH (exactly)
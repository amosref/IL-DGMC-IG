Profile: ExtensionMotherName
Parent: $extParentName
Id: ext-mother-name
Title: "Extension - Mother Name"
Description: "Extension - Administrative Parent Name with fixed MTH role"
* insert ConformanceMetadata
* ^url = $extMthName
* extension[role] 1..1
* extension[role].url 1..1
* extension[role].url = "role" (exactly)
* extension[role].valueCode 1..1
* extension[role].valueCode = #MTH (exactly)
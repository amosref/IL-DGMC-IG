Profile: ExtensionFatherName
Parent: $extParentName
Id: ext-father-name
Title: "Extension - Father Name"
Description: "Extension - Administrative Parent Name with fixed FTH role"
* insert ConformanceMetadata
* ^url = $extFthName
* extension[role] 1..1
* extension[role].url 1..1
* extension[role].url = "role" (exactly)
* extension[role].valueCode 1..1
* extension[role].valueCode = #FTH (exactly)
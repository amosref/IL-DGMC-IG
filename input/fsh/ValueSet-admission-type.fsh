ValueSet: AdmissionType
Id: admission-type
Title: "Admission Type codes"
Description: "Admission Type codes"
* insert ConformanceMetadata
* ^url = $vs-admission-type
* include codes from system $admission-amb-type
* include codes from system $admission-imp-type
* include codes from system $admission-mvmnt-type

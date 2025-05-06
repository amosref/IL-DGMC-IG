Profile: DGMCDiagnosticReportImaging
Parent: ILCoreDiagnosticReport
Id: dgmc-imaging-interpretation
Title: "DGMC Diagnostic Report - Imaging Interpretation"
Description: "Profile on IL-Core-Diagnostic-Report by DGMC - Imaging Interpretation"
* insert ConformanceMetadata
* id 1..1
* identifier 1..*
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.ordered = false
* identifier contains doc-img-version 1..1 and doc-img 1..1
* identifier[doc-img-version].system 1..1
* identifier[doc-img-version].system from $vsNmrImgDocVerIdentifierUri (required)
* identifier[doc-img-version].value 1..1
* identifier[doc-img].system 1..1
* identifier[doc-img].system from $vsNmrImgDocIdentifierUri (required)
* identifier[doc-img].value 1..1
* basedOn 1..*
* basedOn.reference 1..1
* status.extension contains $ext-nmr-doc-status-code named status-code 1..*
* status.extension[status-code].url 1..1
* status.extension[status-code].url = $ext-nmr-doc-status-code (exactly)
* status.extension[status-code].valueCode 1..1
* category 1..1
* category.coding.system 1..1
* category.coding.system = $sct (exactly)
* category.coding.code 1..1
* category.coding.code = #363679005 (exactly)
* category.coding.display 1..1
* category.coding.display = "Imaging (procedure)" (exactly)
* code.coding.system 1..1
* code.coding.system = $sct (exactly)
* code.coding.code 1..1
* code.coding.code = #4201000179104 (exactly)
* code.coding.display 1..1
* code.coding.display = "Imaging report (record artifact)" (exactly)
* subject 1..1
* subject.reference 1..1
* encounter 1..1
* encounter.reference 1..1
* issued 1..1
* performer 1..1
* performer.reference 1..1
* resultsInterpreter 1..*
* resultsInterpreter.identifier 1..1
* resultsInterpreter.identifier.system 1..1
* resultsInterpreter.identifier.system = $vsSapUserVmaUri (exactly)
* resultsInterpreter.identifier.value 1..1
* conclusion 1..1
* conclusionCode.coding.system 1..1
* conclusionCode.coding.system from $vsImgDocAbnormalFlagUri (required)
* conclusionCode.coding.code 1..1
* conclusionCode.coding.display 1..1
* presentedForm 1..1
* presentedForm.contentType 1..1
* presentedForm.contentType = #application/pdf (exactly)
* presentedForm.data 1..1

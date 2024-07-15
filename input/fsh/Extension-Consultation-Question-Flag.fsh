Extension: ConsultationQuestionFlag
Id: consultation-question-flag
Title: "Extension - Consultation Question Flag"
Description: "Extension - Consultation Question Flag"
Context: ServiceRequest.orderDetail
* insert ConformanceMetadata
* ^url = $ext-cons-flag
* value[x] only boolean
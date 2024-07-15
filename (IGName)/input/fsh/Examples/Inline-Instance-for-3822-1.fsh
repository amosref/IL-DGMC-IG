Instance: Inline-Instance-for-3822-1
InstanceOf: CoverageEligibilityRequest
Usage: #inline
* identifier.system = "http://fhir.tlvmc.gov.il/identifier/preauth-req-no"
* identifier.value = "3773"
* status = #cancelled
* purpose = #validation
* patient.identifier.system = "http://fhir.leumit.co.il/identifier/magnetic-card"
* patient.identifier.value = "1-123456-123456-789"
* servicedDate = "2023-07-02"
* created = "2023-07-18T07:51:20.001Z"
* provider.type = "Organization"
* provider.identifier.system = "http://fhir.health.gov.il/identifier/legal-entity"
* provider.identifier.value = "500106919"
* provider.display = "בי\"ח איכילוב"
* insurer.identifier.system = "http://fhir.health.gov.il/identifier/legal-entity"
* insurer.identifier.value = "5899584495"
* insurer.display = "מאוחדת"
* supportingInfo.sequence = 1
* supportingInfo.information.type = "CoverageEligibilityRequest"
* supportingInfo.information.identifier.system = "http://fhir.tlvmc.gov.il/identifier/preauth-req-no"
* supportingInfo.information.identifier.value = "3772"
* supportingInfo.information.display = "בקשת ההתחייבות המבוטלת"
* item[0].productOrService = $medical-service-moh#L9258 "בדיקת רופא ילדים במרפאה"
* item[=].quantity.value = 2
* item[=].unitPrice.value = 210
* item[=].unitPrice.currency = #ILS
* item[+].productOrService = $medical-service-moh#L9261 "בדיקת רופא כירורג בית החזה במרפאה"
* item[=].quantity.value = 1
* item[=].unitPrice.value = 242
* item[=].unitPrice.currency = #ILS
* item[+].productOrService = $medical-service-moh#L9266 "בדיקת רופא כירורג שד במרפאה"
* item[=].quantity.value = 2
* item[=].unitPrice.value = 136
* item[=].unitPrice.currency = #ILS
* item[+].productOrService = $medical-service-moh#99242 "בדיקת רופא מומחה במרפאה, למעט בדיקות להן קוד מיוחד"
* item[=].quantity.value = 2
* item[=].unitPrice.value = 80
* item[=].unitPrice.currency = #ILS
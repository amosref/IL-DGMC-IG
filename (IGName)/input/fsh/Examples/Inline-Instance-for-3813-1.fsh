Instance: Inline-Instance-for-3813-1
InstanceOf: CoverageEligibilityRequest
Usage: #inline
* identifier.system = "http://fhir.tlvmc.gov.il/identifier/preauth-req-no"
* identifier.value = "3772"
* status = #active
* purpose = #validation
* patient = Reference(urn:uuid:8be7c2eb-07a2-4dfb-b27d-821863201199)
* patient.identifier.system = "http://fhir.leumit.co.il/identifier/magnetic-card"
* patient.identifier.value = "1-123456-123456-789"
* servicedDate = "2023-07-02"
* created = "2023-07-04T04:52:03.001Z"
* provider.type = "Organization"
* provider.identifier.system = "http://fhir.health.gov.il/identifier/legal-entity"
* provider.identifier.value = "500106919"
* provider.display = "בי\"ח איכילוב"
* insurer.identifier.system = "http://fhir.health.gov.il/identifier/legal-entity"
* insurer.identifier.value = "5899584495"
* insurer.display = "מאוחדת"
* facility = Reference(urn:uuid:6e77f7eb-1693-4d19-b64b-b6ae92ec4aba)
* facility.type = "Location"
* supportingInfo[0].sequence = 1
* supportingInfo[=].information = Reference(urn:uuid:792cc202-b6dd-4b45-bbf9-31358841836a)
* supportingInfo[=].information.type = "Appointment"
* supportingInfo[+].sequence = 2
* supportingInfo[=].information = Reference(urn:uuid:df9c48ad-f1a2-41a0-9755-7a5726cf6050) "מסמך סיכום ביקור עם המלצה לביקור חוזר"
* supportingInfo[=].information.type = "DocumentReference"
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
Instance: 36810080-d753-48e6-9e38-da2cbb73a27b
InstanceOf: CoverageEligibilityResponse
Usage: #inline
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:136810080-d753-48e6-9e38-da2cbb73a27b"
* status = #active
* purpose = #validation
* patient.identifier.system = "http://fhir.leumit.co.il/identifier/magnetic-card"
* patient.identifier.value = "1-123456-123456-789"
* created = "2023-07-02T13:44:58.429Z"
* requestor.type = "Organization"
* requestor.identifier.system = "http://fhir.health.gov.il/identifier/legal-entity"
* requestor.identifier.value = "500106919"
* requestor.display = "בי\"ח איכילוב"
* request.identifier.system = "http://fhir.tlvmc.gov.il/identifier/preauth-req-no"
* request.identifier.value = "3772"
* outcome = #complete
* disposition = "הבקשה להתחייבות אושרה חלקית"
* insurer.identifier.system = "http://fhir.health.gov.il/identifier/legal-entity"
* insurer.identifier.value = "580039899"
* insurer.display = "לאומית"
* insurance.coverage.display = "התחייבות מאושרת חלקית - ללא מספר התחייבות"
* insurance.benefitPeriod.start = "2023-09-01"
* insurance.benefitPeriod.end = "2023-10-01"
* insurance.item[0].productOrService = $medical-service-moh#L9258 "בדיקת רופא ילדים במרפאה"
* insurance.item[=].excluded = false
* insurance.item[=].name = "בדיקת רופא - התמחות בכליות"
* insurance.item[=].description = "בדיקת רופא ילדים עם התמחות לכליות"
* insurance.item[=].benefit.type.text = "benefit"
* insurance.item[=].benefit.allowedUnsignedInt = 3
* insurance.item[=].benefit.usedUnsignedInt = 1
* insurance.item[+].productOrService = $medical-service-moh#L9261 "בדיקת רופא כירורג בית החזה במרפאה"
* insurance.item[=].excluded = false
* insurance.item[=].name = "בדיקת רופא - התמחות כללית"
* insurance.item[=].description = "התמחות כללית"
* insurance.item[=].benefit.type.text = "benefit"
* insurance.item[=].benefit.allowedUnsignedInt = 2
* insurance.item[=].benefit.usedUnsignedInt = 1
* insurance.item[+].productOrService = $medical-service-moh#L9266 "בדיקת רופא כירורג שד במרפאה"
* insurance.item[=].modifier = $moh-form17-issue-code#srv-code-mismatch "קוד השירות אינו תואם את הטיפול המתוכנן"
* insurance.item[=].excluded = true
* insurance.item[=].name = "בדיקת רופא - התמחות x"
* insurance.item[=].description = "התמחות x"
* insurance.item[=].benefit.type.text = "benefit"
* insurance.item[=].benefit.allowedUnsignedInt = 3
* insurance.item[=].benefit.usedUnsignedInt = 2
* insurance.item[+].productOrService = $medical-service-moh#99242 "בדיקת רופא מומחה במרפאה, למעט בדיקות להן קוד מיוחד"
* insurance.item[=].modifier = $moh-form17-issue-code#age-limit "קוד השירות מוגבל גיל"
* insurance.item[=].excluded = true
* insurance.item[=].name = "בדיקת רופא - התמחות y"
* insurance.item[=].description = "התמחות y"
* insurance.item[=].benefit.type.text = "benefit"
* insurance.item[=].benefit.allowedUnsignedInt = 4
* insurance.item[=].benefit.usedUnsignedInt = 2
Instance: 75bd80b6-0e5b-4084-8bc5-36af344e136f
InstanceOf: CoverageEligibilityResponse
Usage: #inline
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:75bd80b6-0e5b-4084-8bc5-36af344e136f"
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
* outcome = #partial
* disposition = "הבקשה להתחייבות אושרה חלקית"
* insurer.identifier.system = "http://fhir.health.gov.il/identifier/legal-entity"
* insurer.identifier.value = "580039899"
* insurer.display = "לאומית"
* insurance.coverage.display = "התחייבות מאושרת חלקית - ללא מספר התחייבות"
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
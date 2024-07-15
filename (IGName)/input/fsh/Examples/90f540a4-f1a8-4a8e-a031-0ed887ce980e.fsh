Instance: 90f540a4-f1a8-4a8e-a031-0ed887ce980e
InstanceOf: CoverageEligibilityResponse
Usage: #inline
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:90f540a4-f1a8-4a8e-a031-0ed887ce980e"
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
* disposition = "הבקשה להתחייבות לא אושרה"
* insurer.identifier.system = "http://fhir.health.gov.il/identifier/legal-entity"
* insurer.identifier.value = "580039899"
* insurer.display = "לאומית"
* insurance.coverage.display = "אין מספר התחייבות"
* insurance.item[0].productOrService = $medical-service-moh#L9258 "בדיקת רופא ילדים במרפאה"
* insurance.item[=].modifier = $moh-form17-issue-code#charge-not-authorized "ללקוח אין הרשאת חיוב"
* insurance.item[=].excluded = true
* insurance.item[=].name = "בדיקת רופא - התמחות בכליות"
* insurance.item[=].description = "בדיקת רופא ילדים עם התמחות לכליות"
* insurance.item[+].productOrService = $medical-service-moh#L9261 "בדיקת רופא כירורג בית החזה במרפאה"
* insurance.item[=].modifier = $moh-form17-issue-code#charge-not-authorized "ללקוח אין הרשאת חיוב"
* insurance.item[=].excluded = true
* insurance.item[=].name = "בדיקת רופא - התמחות כללית"
* insurance.item[=].description = "התמחות כללית"
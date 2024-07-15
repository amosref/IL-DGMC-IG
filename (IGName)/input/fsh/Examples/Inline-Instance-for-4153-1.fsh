Instance: Inline-Instance-for-4153-1
InstanceOf: CoverageEligibilityResponse
Usage: #inline
* id = "106917e1-a8e6-4ead-b419-83e7a43c9c4d"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:106917e1-a8e6-4ead-b419-83e7a43c9c4d"
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
* disposition = "הבקשה להתחייבות אושרה"
* insurer.identifier.system = "http://fhir.health.gov.il/identifier/legal-entity"
* insurer.identifier.value = "580039899"
* insurer.display = "לאומית"
* insurance.coverage = Reference(3819)
* insurance.coverage.identifier.system = "http://fhir.leumit.co.il/identifier/obligation-num"
* insurance.coverage.identifier.value = "1-1222223"
* insurance.benefitPeriod.start = "2023-09-01"
* insurance.benefitPeriod.end = "2023-10-01"
* insurance.item.productOrService = $medical-service-moh#L9258 "בדיקת רופא ילדים במרפאה"
* insurance.item.excluded = false
* insurance.item.name = "בדיקת רופא - התמחות בכליות"
* insurance.item.description = "בדיקת רופא ילדים עם התמחות לכליות"
* insurance.item.benefit.type.text = "benefit"
* insurance.item.benefit.allowedUnsignedInt = 3
* insurance.item.benefit.usedUnsignedInt = 1
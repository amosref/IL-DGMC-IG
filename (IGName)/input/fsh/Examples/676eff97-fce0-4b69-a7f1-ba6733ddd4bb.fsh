Instance: 676eff97-fce0-4b69-a7f1-ba6733ddd4bb
InstanceOf: CoverageEligibilityResponse
Usage: #inline
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:676eff97-fce0-4b69-a7f1-ba6733ddd4bb"
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
Instance: t17-response
InstanceOf: t17-response
Usage: #example
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">המענה לבקשה להתחייבות - קוד שירות אחד מאושר ושלושה נענו בסירוב</div>"
* text.status = #generated
* meta.profile = "http://ig.fhir-il-community.org/T17/StructureDefinition/t17-response"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:b3b72e7b-5390-43a0-9499-af300f6a8d7b"
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
* insurance.coverage = Reference(Coverage/3819)
* insurance.coverage.identifier.system = "http://fhir.leumit.co.il/identifier/obligation-num"
* insurance.coverage.identifier.value = "1-1222223"
* insurance.benefitPeriod.start = "2023-05-25"
* insurance.benefitPeriod.end = "2023-08-25"
* insurance.item[0].productOrService = $medical-service-moh#L9258 "בדיקת רופא ילדים במרפאה"
* insurance.item[=].excluded = false
* insurance.item[=].name = "בדיקת רופא - התמחות בכליות"
* insurance.item[=].description = "בדיקת רופא ילדים עם התמחות לכליות"
* insurance.item[=].benefit.type.text = "benefit"
* insurance.item[=].benefit.allowedUnsignedInt = 3
* insurance.item[=].benefit.usedUnsignedInt = 1
* insurance.item[+].productOrService = $medical-service-moh#L9261 "תיאור קוד שירות L9261"
* insurance.item[=].modifier = $moh-form17-issue-code#service-not-covered "השירות אינו בסל"
* insurance.item[=].excluded = true
* insurance.item[=].name = "בדיקת רופא - התמחות כללית"
* insurance.item[=].description = "התמחות כללית"
* insurance.item[+].productOrService = $medical-service-moh#L9266 "תיאור קוד שירות L9266"
* insurance.item[=].modifier = $moh-form17-issue-code#service-not-covered "השירות אינו בסל"
* insurance.item[=].excluded = true
* insurance.item[=].name = "בדיקת רופא - התמחות x מסוג"
* insurance.item[=].description = "התמחות x"
* insurance.item[+].productOrService = $medical-service-moh#99242 "תיאור קוד שירות 99242"
* insurance.item[=].modifier = $moh-form17-issue-code#service-not-covered "השירות אינו בסל"
* insurance.item[=].excluded = true
* insurance.item[=].name = "בדיקת רופא - התמחות y מסוג"
* insurance.item[=].description = "התמחות y"
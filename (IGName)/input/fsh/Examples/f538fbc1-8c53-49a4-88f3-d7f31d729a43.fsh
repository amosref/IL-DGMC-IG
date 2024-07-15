Instance: f538fbc1-8c53-49a4-88f3-d7f31d729a43
InstanceOf: CoverageEligibilityResponse
Usage: #inline
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:f538fbc1-8c53-49a4-88f3-d7f31d729a43"
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
* outcome = #error
* disposition = "לא ניתן לסיים את עיבוד הבקשה"
* insurer.identifier.system = "http://fhir.health.gov.il/identifier/legal-entity"
* insurer.identifier.value = "580039899"
* insurer.display = "לאומית"
* error.extension.url = "http://fhir.outburn.co.il/StructureDefinition/issue-regards"
* error.extension.valueCoding = $medical-service-moh#L9258
* error.code = $il-core-error-code#unknown-pat "המטופל אינו מזוהה"
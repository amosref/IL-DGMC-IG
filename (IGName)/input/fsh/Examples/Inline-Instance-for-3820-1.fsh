Instance: Inline-Instance-for-3820-1
InstanceOf: DocumentReference
Usage: #inline
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:cb512709-9276-4afd-9271-4990e5ef2889"
* status = #current
* type = $loinc#64291-8 "Health insurance-related form"
* type.text = "מסמך התחייבות מאושרת"
* subject.type = "Patient"
* subject.identifier.system = "http://fhir.leumit.co.il/identifier/magnetic-card"
* subject.identifier.value = "1-123456-123456-789"
* date = "2023-07-04T05:02:03.001Z"
* authenticator.type = "Organization"
* authenticator.identifier.system = "http://fhir.health.gov.il/identifier/legal-entity"
* authenticator.identifier.value = "580039899"
* authenticator.display = "לאומית"
* description = "מסמך אישור התחייבות לקבלת שירות בבית החולים"
* content.attachment.contentType = #application/pdf
* content.attachment.url = "http://example.org/xds/mhd/Binary/07a6483f-732b-461e-86b6-edb665c45510"
* context.related = Reference(3819)
* context.related.type = "Coverage"
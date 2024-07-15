Instance: t17-booked-appointment
InstanceOf: t17-booked-appointment
Usage: #example
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">פרטי התור עבורו נשלחה בקשה להתחייבות</div>"
* text.status = #generated
* meta.profile = "http://ig.fhir-il-community.org/T17/StructureDefinition/t17-booked-appointment"
* identifier.system = "http://fhir.tlvmc.gov.il/Appointment/identifier"
* identifier.value = "A-10005"
* status = #booked
* appointmentType = $v2-0276#FOLLOWUP
* description = "תור לביקור חוזר"
* start = "2023-07-01T09:00:00Z"
* end = "2023-09-01T10:00:00Z"
* created = "2023-07-02"
* participant[subject].type = $v3-ParticipationType#SBJ "subject"
* participant[=].actor = Reference(urn:uuid:8be7c2eb-07a2-4dfb-b27d-821863201199)
* participant[=].actor.type = "Patient"
* participant[=].actor.identifier.system = "http://fhir.leumit.co.il/identifier/magnetic-card"
* participant[=].actor.identifier.value = "1-123456-123456-789"
* participant[=].status = #accepted
* participant[+].type = $v3-ParticipationType#PPRF "primary performer"
* participant[=].actor.type = "Practitioner"
* participant[=].actor.identifier.system = "http://practitioners.health.gov.il/Practitioners"
* participant[=].actor.identifier.value = "1-4281388"
* participant[=].status = #accepted
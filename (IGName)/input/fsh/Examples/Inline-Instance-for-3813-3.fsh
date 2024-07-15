Instance: Inline-Instance-for-3813-3
InstanceOf: Appointment
Usage: #inline
* identifier.system = "http://fhir.tlvmc.gov.il/Appointment/identifier"
* identifier.value = "A-10005"
* status = #booked
* appointmentType = $v2-0276#FOLLOWUP
* description = "תור לביקור חוזר"
* start = "2023-09-01T09:00:00Z"
* end = "2023-09-01T10:00:00Z"
* created = "2023-07-02"
* participant[0].type = $v3-ParticipationType#SBJ "subject"
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
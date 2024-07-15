Instance: patient-with-followup-appointment
InstanceOf: il-core-patient
Usage: #example
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><div class=\"hapiHeaderText\">שרה שרי <b>ישראלי </b></div><table class=\"hapiPropertyTable\"><tbody><tr><td>Identifier</td><td>1-123456-123456-789</td></tr><tr><td>Date of birth</td><td><span>16 July 1969</span></td></tr></tbody></table></div>"
* text.status = #generated
* meta.profile = "http://fhir.health.gov.il/StructureDefinition/il-core-patient"
* identifier.system = "http://fhir.leumit.co.il/identifier/magnetic-card"
* identifier.value = "1-123456-123456-789"
* active = true
* name.text = "שרה"
* name.family = "ישראלי"
* name.given[0] = "שרה"
* name.given[+] = "שרי"
* telecom.system = #phone
* telecom.value = "054-99999999"
* telecom.use = #mobile
* gender = #female
* birthDate = "1969-07-16"
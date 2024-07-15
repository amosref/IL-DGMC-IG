Profile: T17BookedAppointment
Parent: Appointment
Id: t17-booked-appointment
Title: "T17 Booked Appointment"
Description: "פרטי התור עבורו נשלחה בקשה להתחייבות"
* ^url = $T17-booked-appointment
* status = #booked
* appointmentType 1..1
* appointmentType ^binding.strength = #extensible
* start 1..1
* end 1..1
* participant ^slicing.discriminator.type = #value
* participant ^slicing.discriminator.path = "type"
* participant ^slicing.rules = #open
* participant ^slicing.description = "מתוך מערך המשתתפים (*..1)- חייב להיות לפחות משתתף אחד שהוא מטופל"
* participant ^slicing.ordered = false
* participant contains subject 1..*
* participant[subject].type.coding 1..1
* participant[subject].type.coding.system 1..1
* participant[subject].type.coding.code 1..1
* participant[subject].type.coding.system = $participant-type
* participant[subject].type.coding.code = #SBJ
* participant[subject].type.coding.display = "subject"
* participant[subject].type.coding.display 1..1
* participant[subject].actor 1..1
* participant[subject].actor.identifier 1..1
* participant[subject].actor.identifier.system 1..1
* participant[subject].actor.identifier.value 1..1
* participant[subject].status = #accepted (exactly)

// checked 21-4-24 Kippi - question sent to liron
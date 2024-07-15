Profile: T17BundleReq
Parent: Bundle
Id: t17-bundle-req
Title: "T17 Bundle Req"
Description: "מארז של ישויות הנכללות בבקשה להתחייבות, אחת או יותר"
* ^url = $T17-bundle-req
* type 1..1
* type = #collection
* entry ^slicing.discriminator.type = #type
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #open
* entry ^slicing.ordered = false
* entry contains 
        request 1..1 and 
        req-location 0..* and
        booked-apt 0..1 and
        visit-sum 0..* and
        patient 0..1
* entry[request].resource 1..1
* entry[request].resource only T17Request
* entry[req-location].fullUrl 1..1
* entry[req-location].resource 1..1
* entry[req-location].resource only T17Location
* entry[booked-apt].fullUrl 1..1
* entry[booked-apt].resource 1..1
* entry[booked-apt].resource only T17BookedAppointment
* entry[visit-sum].fullUrl 1..1
* entry[visit-sum].resource 1..1
* entry[visit-sum].resource only T17VisitSummary
* entry[patient].fullUrl 1..1
* entry[patient].resource 1..1
* entry[patient].resource only il-core-patient

// checked 21-4-24 Kippi
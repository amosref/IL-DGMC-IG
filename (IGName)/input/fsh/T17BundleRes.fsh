Profile: T17BundleRes
Parent: Bundle
Id: t17-bundle-res
Title: "T17 Bundle Res"
Description: "מארז של ישויות הנכללות במענה להתחייבות, אחת או יותר"
* ^url = $T17-bundle-res
* type 1..1
* type = #collection
* entry ^slicing.discriminator.type = #profile
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #open
* entry ^slicing.ordered = false
* entry contains 
        response 1..1 and 
        obligation 0..* and
        obl-doc 0..*
* entry[response] obeys bundle-https
* entry[response].fullUrl 1..1
* entry[response].resource 1..1
* entry[response].resource only T17Response
* entry[obligation] obeys bundle-https
* entry[obligation].fullUrl 1..1
* entry[obligation].resource 1..1
* entry[obligation].resource only T17Obligation
// * entry[obl-doc].fullUrl 1..1  --- don't we need this? not in the excel
* entry[obl-doc].resource 1..1
* entry[obl-doc].resource only T17ObligationDoc


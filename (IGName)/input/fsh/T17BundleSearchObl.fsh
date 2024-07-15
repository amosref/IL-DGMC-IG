Profile: T17BundleSearchObl
Parent: Bundle
Id: t17-bundle-search-obl
Title: "T17 Bundle Search Obl"
Description: "תשובת הקופה עבור סטאטוס התחייבות שנשלח מביה\"ח. אם הבאנדל שמוחזר הוא לא ריק (entry > 0), חייב להיות בו לפחות Coverage אחד ולפחות מסמך אחד. יתכנו גם יותר."
* ^url = $T17-bundle-search-obl
* type 1..1
* type = #searchset
* entry ^slicing.discriminator.type = #profile
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #open
* entry ^slicing.ordered = false
* entry ^comment = "אם הבאנדל שמוחזר הוא לא ריק (entry > 0), חייב להיות בו לפחות Coverage אחד ולפחות מסמך אחד. יתכנו גם יותר."
* entry contains 
        obligation 0..1 and
        obligation-doc 0..*
* entry[obligation] obeys bundle-https
* entry[obligation].fullUrl 1..1
* entry[obligation].resource 1..1
* entry[obligation].resource only T17Obligation
* entry[obligation].search 1..1
* entry[obligation].search.mode 1..1
* entry[obligation].search.mode = #match (exactly)
* entry[obligation-doc] obeys bundle-https
* entry[obligation-doc].fullUrl 1..1
* entry[obligation-doc].resource 1..1
* entry[obligation-doc].resource only T17ObligationDoc
* entry[obligation-doc].search 1..1
* entry[obligation-doc].search.mode 1..1
* entry[obligation-doc].search.mode = #include (exactly)

// checked 22-4-24 Kippi
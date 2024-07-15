<div dir="rtl" markdown="1">

## T17-Request


הפרופיל מייצג בדיקת קיום התחייבות, עם או בלי בקשה ליצירת התחייבות.
ה- Resource עליו הוא מוגדר: [CoverageEligibilityRequest](https://hl7.org/fhir/R4/coverageeligibilityrequest.html).
הפרופיל עליו הוא מתבסס: [il-core-coverage-eligibility-request](https://simplifier.net/ILCore/ILCoreCoverageEligibilityRequest/~overview)

בנוסף להגדרות קארדינליות וקשרים לפרופילים הרלוונטיים, הפרופיל מתייחס למידע הבא:
* מטרת הבקשה (purpose)
    * אלמנט validation – עבור שליחת בקשה חדשה להתחייבות. 
    * אלמנט discovery – עבור בדיקה האם קיימת התחייבות באותה נקודת זמן, ללא פתיחת בקשה.
* חובת הזנה של לפחות קוד שירות אחד שיהיה מסוג קוד שירות מב"ר
* מידע נוסף (supportingInfo) אשר מוגבל ל- 3 סוגי ישויות: 
    * מסמך המלצה – פרופיל: [t17-visit-summary](http://ig.fhir-il-community.org/T17/StructureDefinition/t17-visit-summary)
    * תור – פרופיל: [t17-booked-appointment](http://ig.fhir-il-community.org/T17/StructureDefinition/t17-booked-appointment)
    * בקשה להתחייבות – פרופיל: [t17-request](http://ig.fhir-il-community.org/T17/StructureDefinition/t17-request)

</div>

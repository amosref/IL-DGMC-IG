<div dir="rtl" markdown="1">

## t17-response


הפרופיל מייצג מענה לבקשה להתחייבות.
ה- Resource עליו הוא מוגדר: [CoverageEligibilityResponse](https://hl7.org/fhir/R4/coverageeligibilityresponse.html)
הפרופיל עליו הוא מתבסס: [il-core-coverage-eligibility-response](https://simplifier.net/ILCore/ILCoreCoverageEligibilityResponse/~overview)

בנוסף להגדרות קארדינליות וקשרים לפרופילים הרלוונטיים, הפרופיל מתייחס למידע הבא:

* מטרת המענה (purpose)
    * היבר validation – עבור מענה לבקשה חדשה להתחייבות. 
    * האיבר discovery – עבור מענה לקיום/אי קיום התחייבות באותה נקודת זמן
* בכל קוד שירות – לפחות קידוד אחד חייב להיות קוד שירות מב"ר
* בכל סיבת סירוב -  לפחות קידוד אחד חייב להיות מתוך רשימת הערכים: [tofes17-reject-codes](http://fhir.health.gov.il/ValueSet/tofes17-reject-codes)
בכל קוד שגיאה, לפחות קידוד אחד חייב להיות מתוך אחת משתי רשימות הערכים: 
[il-core-error-code](http://fhir.health.gov.il/cs/il-core-error-code), ו- [moh-tofes17-issue-code](http://fhir.health.gov.il/cs/moh-tofes17-issue-code)



</div>

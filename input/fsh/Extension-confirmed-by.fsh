Extension: MedConfirmedBy
Id: ext-med-confirmed-by
Title: "Medication Confirmed By"
Description: "גורם מאשר בהוראה טלפונית - ההרחבה רלוונטית למקרים בהם ניתן אישור כפול, במסגרת הוראה טלפונית. נקרא גם \"חתימה שניה\". 
ייוצג פה מידע מסוג קישור (reference) למטפל המאשר. יש לשים לב שהרחבה זו לא נועדה לייצג את יתר הגורמים המעורבים, עבורם קיימים אלמנטים בתקן כגון requester ו- recorder "
Context: MedicationRequest
* insert ConformanceMetadata

* ^url = $ext-med-confirmed-by
* value[x] only Reference
* valueReference 1..1

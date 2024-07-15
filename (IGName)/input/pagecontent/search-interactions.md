<div dir="rtl" markdown="1">

## חיפושים ואינטראקציות

ישנן שלוש אינטראקציות שה- **<ins>server</ins>** (הקופה) מחוייב לתמוך בהן, בכדי לקיים את התהליך ואינטראקציה נוספת מומלצת (GET Patient).

### Submit CoverageEligibilityRequest

**POST [server]/CoverageEligibilityRequest/$submit**

הפנייה מה- Client ל- Server נעשית באמצעות POST ל- Operation מסוג CoverageEligibilityRequest/$submit
הפנייה הזו מאפשרת מספר פעולות בו זמנית:

•	הזנקת פעולת עיבוד על ידי ה- Client וקבלת מענה מיידי מה- Server.

•	תוכן הפנייה הינו Bundle, על פי פרופיל: t17-bundle-req

* הפעולה רלוונטית לתהליכים הבאים: בדיקת קיום התחייבות, בקשה להפקת התחייבות, עדכון בקשה וביטול בקשה.

<br>

### GET CoverageEligibilityResponse

פעולת GET ל- CoverageEligibilityResponse על בסיס ה- id שלו, כפי שהתקבל במענה* הראשוני שהוחזר לביה"ח.

**GET [server]/CoverageEligibilityResponse/id**

\* המענה הראשוני התקבל כ- Bundle, לכן יש לשלוף מתוך ה- Bundle את ה- id של entry שסוג הריסורס שלו הינו - CoverageEligibilityResponse:
Bundle.entry[resource.resourceType=CoverageEligibilityResponse[.resource.id
<ins>יש לשים לב</ins>: ה- id הינו ייחודי רק ברמת ה- Server, על כן יש לשמור את ה- id ביחד עם כתובת שרת המקור שלו (קופה).

דוגמה לקריאה:
**GET http://hapi-fhir.outburn.co.il/fhir/CoverageEligibilityResponse/4640**

במידה והתקבל ב- response קישור להתחייבות (reference ל- Coverage), ניתן לבצע שליפה של ההתחייבות והמסמך שלה, כפי שמתואר בסעיף הבא.

<br>

### GET Coverage & Related Document
פעולת GET ל- Coverage לקבלת פרטי ההתחייבות, על בסיס ה- id של ה- Coverage כפי שהתקבל בסעיף הקודם*:

**GET [server]/Coverage?_id=[resource_id]&_revinclude=DocumentReference:related**

\* ה- Coverage.id מתקבל באלמנט: CoverageEligibilityResponse.insurance.coverage.reference
שהמבנה שלו הוא: Coverage/<id>	
<ins>יש לשים לב</ins> – פעולה זו מחזירה Bundle מכיוון שמדובר בחיפוש.

דוגמה לקריאה:
**GET http://hapi-fhir.outburn.co.il/fhir/Coverage?_id=4639&_revinclude=DocumentReference:related**

<br>

### GET Patient
הסעיף רלוונטי רק במקרה שה-Client שולף מראש את ה- Patient באמצעות GET Patient. 
מבנה השאילתה:

<b> GET \[BaseURL\]/Patient?identifier=http://fhir.health.gov.il/identifier/il-national-id </b>

בתגובה יתקבל Bundle מסוג searchset על פי פרופיל: t17-bundle-search-pat, אשר יכיל את המטופל המבוקש.
השליפה נעשית באמצעות GET למטופל, על פי מספר תעודת זהות.
יש להשתמש בפרמטר החיפוש identifier, ובו לציין את מערכת הזיהוי ואחריה הסימן | אשר מפריד בינה לבין תעודת הזהות. שימו לב, תעודת זהות חייבת להכיל 9 ספרות בדיוק, ועל ה- Client להשלים אפסים מובילים במידת הצורך.
לדוגמה:

<b> GET http://hapi-fhir.outburn.co.il/fhir/Patient?identifier=http://fhir.health.gov.il/identifier/il-national-id|000000026 </b>

\* ניתן להפעיל את הפניה הנ"ל בכדי לצפות במבנה ה- Bundle שחוזר.

בכדי לחלץ את ה- logical_id יש לשלוף את הערך שבנתיב הבא:  entry.resource.id עבור כל תוצאה, כלומר שליפה על פי כמות האיברים המוחזרים ב- Bundle.

<br>

## Methods 

להלן ריכוז <ins>המתודות</ins>, בהתייחס לשלבי התהליך ולפרופיל הרלוונטי.


| **שלב בתהליך**               | **מתודה**                                                   | **פרופיל**                                                                                                                                                                                                                                   |
|------------------------------|-------------------------------------------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
|     שאילתת מטופלים           | …<**GET** Patient?<params                                   |     <ins>SERVER</ins><br> ILCore Patient Profile<br> t17-bundle-search-pat<br>                                                                                                                                                               |
|     שליחת בקשה להתחייבות     |     **POST** [server]/CoverageEligibilityRequest/$submit    | <ins>CLIENT</ins> <br> t17-request<br> t17-requested-location<br>  t17-booked-appointment<br> t17-visit-summary <br> t17-response <br> t17-bundle-req<br><br>  <ins>SERVER</ins><br>  t17-response<br> t17-obligation<br> t17-obligation-doc |
| דגימת מענה לבקשה להתחייבות   |     <**GET** CoverageEligibilityResponse/ <id                | <ins>SERVER</ins><br> t17-response                                                                                                                                                                                                           |
|     שליפת התחייבות מאושרת    |     …<**GET** Coverage?<params                            | <ins>SERVER</ins><br> t17-obligation<br> t17-obligation-doc<br> t17-bundle-search-obl                                                                                                                                                        |

\* מבוצע באמצעות Conditional Update

### SearchParameters

להלן ריכוז SearchParameters, בהתייחס לשלב הרלוונטי בתהליך, לאיזה גורם מהווה Server באותו השלב והאם זה פרמטר שחובה לתמוך בו.

| **Supports** <br>revinclude_ |  **Supported<br>Searches** | **Supported<br>Profiles** | **Resource<br>Type** |
|:---:|:---:|:---:|:---:|
|-    | identifier |    <br>ILCore Patient Profile    | Patient |
|    Coverage:DocumentReference:related    |    id_ |    t17-obligation    | Coverage |


</div>
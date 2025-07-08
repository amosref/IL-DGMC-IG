Extension: DeleteTimeStamp
Id: ext-delete-time-stamp
Title: "Delete Time Stamp"
Description: "תאריך וזמן מחיקה רשומה"
Context: DomainResource
* ^url = $ext-delete-time-stamp
* url 1..1
* value[x] only instant
* valueInstant 1..1

Extension: TotalDailyDose
Id: ext-med-total-daily-dose
Title: "Total Daily Dose"
Description: "סך הכל מינון ליום - במידה וההוראה לתרופה ניתנת במינונים משתנים לאורך היום, ההרחבה הזו תייצג את סך המינון הכולל לאותו היום"
Context: MedicationRequest
* insert ConformanceMetadata

* ^url = $ext-med-total-daily-dose
* value[x] only Quantity


Extension: ComboPerParam
Id: ext-combo-per-param
Title: "Combo Per Param"
Description: "הרחבה לתיעוד ערכי קומבו שלא הוגדר מראש כיצד יש לטפל בהם. הרחבה זו תופיע בעדיפות על האלמנט הרלוונטי (אם בוצע ניתוח כזה) כדי לספק הבנה כללית לגבי מהות הקוד או לחלופין ב root של הריסורס עבור מקרים שלא נותחו כלל."
Context: Observation
* ^url = $ext-combo-per-param
* . ^isModifier = true
* . ^isModifierReason = "הרחבה לתיעוד ערכי קומבו שלא הוגדר מראש כיצד יש לטפל בהם. הרחבה זו תופיע בעדיפות על האלמנט הרלוונטי (אם בוצע ניתוח כזה) כדי לספק הבנה כללית לגבי מהות הקוד או לחלופין ב root של הריסורס עבור מקרים שלא נותחו כלל."
* value[x] only CodeableConcept
* valueCodeableConcept.coding 1..1
* valueCodeableConcept.coding.system 1..1
* valueCodeableConcept.coding.system from $vsCmlMonitorCombo (required)
* valueCodeableConcept.coding.code 1..1


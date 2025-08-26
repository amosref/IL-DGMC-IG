Instance: DGMCMedStatementChronic
InstanceOf: DGMCMedStatementChronic
Title: "DGMC Medication Statement Chronic example"
Usage: #example

* text.status = #generated
* text.div = "<div xmlns='http://www.w3.org/1999/xhtml'><p>DGMC chronic medication statement example</p></div>"

* status = #active
* dateAsserted = "2025-08-15"
* subject = Reference(ILHDPPatient/example)

* meta.security[HDP].system = $info-buckets
* meta.security[HDP].code = #medications
* meta.security[HDP].display = "תרופות"

* identifier.system = "http://fhir.dgmc.health.gov.il/Identifier/medstatement-id"
* identifier.value = "MS-000123"

// Extension: courseOfTherapyType
* extension[courseOfTherapyType].valueCodeableConcept = http://fhir.health.gov.il/cs/il-core-medication-course-of-therapy-type#chronic "Chronic therapy"

// Category as constrained in DGMC
* category.coding.system = "http://fhir.health.gov.il/ValueSet/il-core-medication-statement-category"

// Medication coding slices
* medicationCodeableConcept.coding[internal].system = "http://fhir.dgmc.health.gov.il/cs/cml-internal-drug-code"
* medicationCodeableConcept.coding[internal].code = #123456
* medicationCodeableConcept.coding[internal].display = "Acetaminophen 500 mg tablet"

* medicationCodeableConcept.coding[snomed].system = "http://snomed.info/sct"
* medicationCodeableConcept.coding[snomed].code = #372729009
* medicationCodeableConcept.coding[snomed].display = "Acyclovir"

* medicationCodeableConcept.coding[external].system = "http://fhir.dgmc.health.gov.il/cs/cml-external-drug-code"
* medicationCodeableConcept.coding[external].code = #EXT-98765

* medicationCodeableConcept.coding[atc].system = "http://www.whocc.no/atc"
* medicationCodeableConcept.coding[atc].code = #N02BE01

// Dosage as constrained in HDP and changed in DGMC
* dosage.text = "1 tablet orally twice daily"

* dosage.route.coding[snomed].system = "http://snomed.info/sct"
* dosage.route.coding[snomed].code = #26643006
* dosage.route.coding[snomed].display = "Oral route"

* dosage.route.coding[internal].system = "http://fhir.dgmc.health.gov.il/cs/cml-med-route"
* dosage.route.coding[internal].code = #PO
* dosage.route.coding[internal].display = "Oral"

* dosage.doseAndRate[0].doseQuantity.value = 500
* dosage.doseAndRate[0].doseQuantity.unit = "mg"
* dosage.doseAndRate[0].doseQuantity.system = "http://unitsofmeasure.org"
* dosage.doseAndRate[0].doseQuantity.code = #mg

* dosage.doseAndRate[0].rateRatio.numerator.value = 2
* dosage.doseAndRate[0].rateRatio.numerator.unit = "1/d"
* dosage.doseAndRate[0].rateRatio.numerator.system = "http://unitsofmeasure.org"
* dosage.doseAndRate[0].rateRatio.numerator.code = #1/d

* dosage.doseAndRate[0].rateRatio.denominator.value = 1
* dosage.doseAndRate[0].rateRatio.denominator.unit = "d"
* dosage.doseAndRate[0].rateRatio.denominator.system = "http://unitsofmeasure.org"
* dosage.doseAndRate[0].rateRatio.denominator.code = #d

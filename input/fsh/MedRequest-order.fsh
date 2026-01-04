Profile: DGMCMedRequestOrder
Parent: il-hdp-medication-request
Id: dgmc-med-request-order
Title: "DGMC Medication Request Order"
Description: "DGMC Medication Request for Medication Order"
// * insert ConformanceMetadata


// contained - representing cocktail's ingredients
* contained only Medication
* contained.id 1..1
* contained.id = "Cocktail"
* contained.identifier 1..*
* contained.identifier.system 1..1
* contained.identifier.system from $vsCmlCocktailDrugCodeUri (required)
* contained.identifier.value 1..1
* contained.code 1..1

* contained.ingredient 2..*
* contained.ingredient.itemCodeableConcept 1..1

* contained.ingredient.itemCodeableConcept.coding ^slicing.discriminator.type = #value
* contained.ingredient.itemCodeableConcept.coding ^slicing.discriminator.path = "system"
* contained.ingredient.itemCodeableConcept.coding ^slicing.rules = #open
* contained.ingredient.itemCodeableConcept.coding ^slicing.ordered = false
* contained.ingredient.itemCodeableConcept.coding contains internal 1..1 and atc 0..1 and external 0..1

* contained.ingredient.itemCodeableConcept.coding[internal].system 1..1
* contained.ingredient.itemCodeableConcept.coding[internal].system from $vsCmlInternalDrugCodeUri (required)
* contained.ingredient.itemCodeableConcept.coding[internal].code 1..1
* contained.ingredient.itemCodeableConcept.coding[internal].display 1..1
* contained.ingredient.itemCodeableConcept.coding[internal].userSelected 1..1
* contained.ingredient.itemCodeableConcept.coding[internal].userSelected = true
* contained.ingredient.itemCodeableConcept.coding[atc].system 1..1
* contained.ingredient.itemCodeableConcept.coding[atc].system = "http://www.whocc.no/atc" (exactly)
* contained.ingredient.itemCodeableConcept.coding[atc].code 1..1
* contained.ingredient.itemCodeableConcept.coding[atc].userSelected = false
* contained.ingredient.itemCodeableConcept.coding[external].system 1..1
* contained.ingredient.itemCodeableConcept.coding[external].system from $vsCmlExternalDrugCodeUri (required)
* contained.ingredient.itemCodeableConcept.coding[external].code 1..1
* contained.ingredient.itemCodeableConcept.coding[external].userSelected = false

* contained.ingredient.strength.numerator.system = "http://unitsofmeasure.org" (exactly)
* contained.ingredient.strength.denominator.value = 1 (exactly)
* contained.ingredient.strength.denominator.code = #h (exactly)
* contained.ingredient.strength.denominator.unit = "hour" (exactly)
* contained.ingredient.strength.denominator.system = "http://unitsofmeasure.org" (exactly)

* id 1..1

// extensions
* extension contains $ext-med-confirmed-by named confirmedBy 0..1 
                and $ext-med-total-daily-dose named totalDailyDose 0..1 
                and $ext-med-order-type named orderType 0..1
* extension[confirmedBy].url 1..1
* extension[confirmedBy].url = $ext-med-confirmed-by (exactly)
* extension[confirmedBy].valueReference 1..1
* extension[totalDailyDose].url 1..1
* extension[totalDailyDose].url = $ext-med-total-daily-dose (exactly)
* extension[totalDailyDose].valueQuantity 1..1
* extension[totalDailyDose].valueQuantity.value 1..1
* extension[totalDailyDose].valueQuantity.code 1..1
* extension[totalDailyDose].valueQuantity.system 1..1
* extension[totalDailyDose].valueQuantity.system = "http://unitsofmeasure.org/"
* extension[totalDailyDose].valueQuantity.unit 1..1
* extension[orderType].url 1..1
* extension[orderType].url = $ext-med-order-type (exactly)
* extension[orderType].valueCode 1..1

* identifier 1..*
* identifier.system 1..1
* identifier.system from $vsCmlMedOrderUri (required)
* identifier.value 1..1

* statusReason.coding.system = "http://fhir.dgmc.health.gov.il/cs/med-status-reason" (exactly)

* medicationCodeableConcept.coding ^slicing.discriminator.type = #value
* medicationCodeableConcept.coding ^slicing.discriminator.path = "system"
* medicationCodeableConcept.coding ^slicing.rules = #open
* medicationCodeableConcept.coding ^slicing.ordered = false
* medicationCodeableConcept.coding contains internal 1..1 and atc 0..1 and external 0..1

* medicationCodeableConcept.coding[internal].system 1..1
* medicationCodeableConcept.coding[internal].system from $vsCmlInternalDrugCodeUri (required)
* medicationCodeableConcept.coding[internal].code 1..1
* medicationCodeableConcept.coding[internal].display 1..1
* medicationCodeableConcept.coding[internal].userSelected 1..1
* medicationCodeableConcept.coding[internal].userSelected = true
* medicationCodeableConcept.coding[atc].system 1..1
* medicationCodeableConcept.coding[atc].system = "http://www.whocc.no/atc" (exactly)
* medicationCodeableConcept.coding[atc].code 1..1
* medicationCodeableConcept.coding[atc].userSelected = false
* medicationCodeableConcept.coding[external].system 1..1
* medicationCodeableConcept.coding[external].system from $vsCmlExternalDrugCodeUri (required)
* medicationCodeableConcept.coding[external].code 1..1
* medicationCodeableConcept.coding[external].userSelected = false

* medicationReference.reference = "#Cocktail" (exactly)

* subject.reference 1..1
* encounter 1..1
* encounter.reference 1..1
* requester.reference 1..1
* recorder.reference 1..1
* performer.reference 1..1
* performer.type 1..1
* performer.type = "Patient" (exactly)

// * instantiatesUri from $vsCmlInternalDrugCodeUri (required)

* instantiatesUri.extension contains $ext-med-order-protocol-desc named protocolDesc 0..1 
* instantiatesUri.extension[protocolDesc].url 1..1
* instantiatesUri.extension[protocolDesc].url = $ext-med-order-protocol-desc (exactly)
* instantiatesUri.extension[protocolDesc].valueString 1..1
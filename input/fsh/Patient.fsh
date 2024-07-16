Profile: DgmcPatient
Parent: il-core-patient
Id: dgmc-patient
Title: "DGMC Patient"
Description: "Profile on IL-Core-Patient by DGMC"
* insert ConformanceMetadata
* ^url = $Patient
// חיסיון
* meta.security.system 1..1
* meta.security.system = "http://terminology.hl7.org/CodeSystem/v3-Confidentiality"
* meta.security.code 1..1
* meta.security.code = #R
* meta.security.display 1..1
* meta.security.display = "restricted"
* id 1..1
// gov.il extension: hmo
* extension[hmo].valueCodeableConcept.coding ^slicing.discriminator.type = #value
* extension[hmo].valueCodeableConcept.coding ^slicing.discriminator.path = "system"
* extension[hmo].valueCodeableConcept.coding ^slicing.rules = #open
* extension[hmo].valueCodeableConcept.coding ^slicing.ordered = false
* extension[hmo].valueCodeableConcept.coding contains nmr 0..1
* extension[hmo] 1..1
// * extension[hmo].valueCodeableConcept.coding[hmo].system 1..1
// * extension[hmo].valueCodeableConcept.coding[hmo].system = "http://fhir.health.gov.il/cs/paying-entity-moh" (exactly)
// * extension[hmo].valueCodeableConcept.coding[hmo].code 1..1
// local slice: nmr-hmo - new
* extension[hmo].valueCodeableConcept.coding[nmr].system 1..1
* extension[hmo].valueCodeableConcept.coding[nmr].system = "http://fhir.dgmc.health.gov.il/cs/nmr-hmo" (exactly)
* extension[hmo].valueCodeableConcept.coding[nmr].code 1..1
// HL7 extension: patient-birthPlace
* extension[birthPlace].valueAddress.country 1..1
// Adding HL7 extensions to the profile that aren't inherited from ILCore Patient
* extension contains 
            $genderIdentity named genderIdentity 0..1 and
            $cadavericDonor named cadavericDonor 0..1 and
            $disability named disability 0..1 and
            $nationality named nationality 0..1
// HL7 extension: gender-identity
* extension[genderIdentity].url = $genderIdentity (exactly)
* extension[genderIdentity].valueCodeableConcept.coding.system 1..1
* extension[genderIdentity].valueCodeableConcept.coding.system = "http://hl7.org/fhir/gender-identity" (exactly)
* extension[genderIdentity].valueCodeableConcept.coding.code 1..1
* extension[genderIdentity].valueCodeableConcept.coding.code = #other (exactly)
* extension[genderIdentity].valueCodeableConcept.coding.display 1..1
* extension[genderIdentity].valueCodeableConcept.coding.display = "other" (exactly)
// HL7 extension: cadavericDonor
* extension[cadavericDonor].url = $cadavericDonor (exactly)
* extension[cadavericDonor].valueBoolean 1..1
* extension[cadavericDonor].valueBoolean = true
// HL7 extension: disability
* extension[disability].url = $disability (exactly)
* extension[disability].valueCodeableConcept 1..1
* extension[disability].valueCodeableConcept.coding 1..1
* extension[disability].valueCodeableConcept.coding.system 1..1
* extension[disability].valueCodeableConcept.coding.system = "http://snomed.info/sct" (exactly)
* extension[disability].valueCodeableConcept.coding.code 1..1
* extension[disability].valueCodeableConcept.coding.code = #15188001 (exactly)
* extension[disability].valueCodeableConcept.coding.display 1..1
* extension[disability].valueCodeableConcept.coding.display = "Hearing impaired" (exactly)
* extension[disability].valueCodeableConcept.text 1..1
* extension[disability].valueCodeableConcept.text = "כבד שמיעה" (exactly)
// HL7 extension: nationality
* extension[nationality].url = $nationality (exactly)
* extension[nationality].extension[code] 1..1
* extension[nationality].extension[code].url = "code" (exactly)
* extension[nationality].extension[code].valueCodeableConcept.coding 1..*
* extension[nationality].extension[code].valueCodeableConcept.coding.system 1..1
* extension[nationality].extension[code].valueCodeableConcept.coding.system = "urn:iso:std:iso:3166" (exactly)
* extension[nationality].extension[code].valueCodeableConcept.coding.code 1..1
// father name

// local slice: nmr-pat-int-num - new
* identifier contains nmr-pat-int-num 1..1 and cml-pat-int-num 0..1 and nmr-pat-tmp-num 0..1
* identifier[nmr-pat-int-num].system 1..1
* identifier[nmr-pat-int-num].system from $HospitalsUrisNmrPatIntVS (required)
* identifier[nmr-pat-int-num].value 1..1 
// local slice: cml-pat-int-num - new
* identifier[cml-pat-int-num].system 1..1
* identifier[cml-pat-int-num].system from $HospitalsUrisCmlPatIntVS (required)
* identifier[cml-pat-int-num].value 1..1 
// local slice: tmp - new
* identifier[nmr-pat-tmp-num].system 1..1
* identifier[nmr-pat-tmp-num].system from $HospitalsUrisNmrPatTmpVS (required)
* identifier[nmr-pat-tmp-num].value 1..1 
// gov.il slice: idf
* identifier contains idf 0..1
* identifier[idf].system 1..1
* identifier[idf].system = "http://fhir.health.gov.il/identifier/idf-service-number" (exactly)
* identifier[idf].value 1..1 
// gov.il slice: ppn (passport number)
* identifier[ppn].type.coding.system 1..1
* identifier[ppn].type.coding.code 1..1
// * identifier[ppn].type.coding.code = "PPN" (exactly)
// HL7 extension: data-absent-reason
* identifier[ppn].system.extension contains $dataAbsent named data-absent-reason 1..1
* identifier[ppn].system.extension[data-absent-reason].url = $dataAbsent (exactly)
* identifier[ppn].system.extension[data-absent-reason].valueCode 1..1
* identifier[ppn].system.extension[data-absent-reason].valueCode = #unknown (exactly)
* identifier[ppn].value 1..1
// HL7 extension: data-absent-reason
* birthDate.extension contains $dataAbsent named data-absent-reason 0..1 and $ext-hebrew-date named hebrew-date 0..1
* birthDate.extension[data-absent-reason].url = $dataAbsent (exactly)
* birthDate.extension[data-absent-reason].valueCode 1..1
* birthDate.extension[data-absent-reason].valueCode = #unknown (exactly)


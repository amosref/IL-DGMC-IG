Instance: 3819
InstanceOf: Coverage
Usage: #inline
* identifier.system = "http://fhir.leumit.co.il/identifier/obligation-num"
* identifier.value = "1-1222223"
* status = #active
* type = $coverage-type#OBL "התחייבות"
* beneficiary.identifier.system = "http://fhir.leumit.co.il/identifier/magnetic-card"
* beneficiary.identifier.value = "1-123456-123456-789"
* period.start = "2023-09-01"
* period.end = "2023-10-01"
* payor.identifier.system = "http://fhir.health.gov.il/identifier/legal-entity"
* payor.identifier.value = "580039899"
* payor.display = "לאומית"
* class.type = $coverage-class#OBL-BASKET
* class.value = "התחייבות במסגרת הסל"
* costToBeneficiary.type = $coverage-copay-type#deductible "Deductible"
* costToBeneficiary.type.text = "גובה השתתפות עצמית"
* costToBeneficiary.valueMoney.value = 200
* costToBeneficiary.valueMoney.currency = #ILS
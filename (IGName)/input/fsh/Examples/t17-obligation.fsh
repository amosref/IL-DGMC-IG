Instance: t17-obligation
InstanceOf: t17-obligation
Usage: #example
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">פרטי התחייבות מאושרת</div>"
* text.status = #generated
* meta.profile = "http://ig.fhir-il-community.org/T17/StructureDefinition/t17-obligation"
* identifier.system = "http://fhir.leumit.co.il/identifier/obligation-num"
* identifier.value = "1-1222223"
* status = #active
* type = $coverage-type#OBL "התחייבות"
* beneficiary.identifier.system = "http://fhir.leumit.co.il/identifier/magnetic-card"
* beneficiary.identifier.value = "1-123456-123456-789"
* period.start = "2023-05-25"
* period.end = "2023-08-25"
* payor.identifier.system = "http://fhir.health.gov.il/identifier/legal-entity"
* payor.identifier.value = "580039899"
* payor.display = "לאומית"
* class.type = $coverage-class#OBL-BASKET
* class.value = "התחייבות במסגרת הסל"
* costToBeneficiary.type = $coverage-copay-type#deductible "Deductible"
* costToBeneficiary.type.text = "גובה השתתפות עצמית"
* costToBeneficiary.valueMoney.value = 200
* costToBeneficiary.valueMoney.currency = #ILS
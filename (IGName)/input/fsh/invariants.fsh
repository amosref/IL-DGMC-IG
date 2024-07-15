Invariant: bundle-https
Description: "Must start with either 'http://' or 'https://'"
Expression: "fullUrl.startsWith('http://') or fullUrl.startsWith('https://')"
Severity: #error

Invariant: purpose-validation
Description: "אם יש insurance.identifier או insurance.reference ומדובר ב- purpose=validation אז חייבים להיות תאריכים."
Severity: #error
Expression: "(insurance.identifier.exists() or insurance.reference.exists()) and (purpose.coding.system = 'http://hl7.org/fhir/eligibilityresponse-purpose' and purpose.coding.code = 'validation') implies insurance.benefitPeriod.exists()"

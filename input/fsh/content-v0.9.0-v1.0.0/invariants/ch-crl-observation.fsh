// * obeys ch-crl-obs-1
Invariant: ch-crl-obs-1
Description: "Observation must have either value[x] or dataAbsentReason"
Expression: "value.exists() or dataAbsentReason.exists()"
Severity: #error

// * dataAbsentReason.coding obeys ch-crl-obs-2
Invariant: ch-crl-obs-2
Description: "The value for code must be either 'unknown' or 'not-performed'"
Expression: "code='unknown' or code='not-performed'"
Severity: #error

// * dataAbsentReason.coding obeys ch-crl-obs-3
Invariant: ch-crl-obs-3
Description: "The value for code must be either 'unknown' or 'not-applicable'"
Expression: "code='unknown' or code='not-applicable'"
Severity: #error

// * obeys ch-crl-obs-4
Invariant: ch-crl-obs-4
Description: "ICD-O morphology pre-transformation as member is only allowed if 'code = 2 Transformation'"
Expression: "hasMember.where($this.conformsTo('http://fhir.ch/ig/ch-crl/StructureDefinition/ch-crl-observation-icdo3morphologypretransformation')).exists() and valueCodeableConcept.coding.code=2"
Severity: #error

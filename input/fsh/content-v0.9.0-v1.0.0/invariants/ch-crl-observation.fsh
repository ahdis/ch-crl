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
Expression: "(value.empty() and hasMember.count()=0) 
or (value.coding.code=3 and hasMember.where($this.conformsTo('http://fhir.ch/ig/ch-crl/StructureDefinition/ch-crl-observation-topographypostdiagnosismetastases')).count()=1)"
Severity: #warning



// true: fsh-generated\resources\Observation-TypeRecurrenceTransformation-Unknown.json -fhirpath "(value.empty() and hasMember.count()=0)"
// true: fsh-generated\resources\Observation-TypeRecurrenceTransformation-Metastasis.json -fhirpath "value.coding.code=3"
// false: fsh-generated\resources\Observation-TypeRecurrenceTransformation-Metastasis.json -fhirpath "hasMember.where($this.conformsTo('http://fhir.ch/ig/ch-crl/StructureDefinition/ch-crl-observation-topographypostdiagnosismetastases')).count()=1"


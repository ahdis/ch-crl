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

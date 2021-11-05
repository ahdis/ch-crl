Instance: pN
InstanceOf: CHCRLObservationPN
Title: "pN - pN1(sn)"
Description: "Example for Observation for the TNM pathologic regional nodes category"
Usage: #example
* status = #final
* code = $loinc#21900-6 "Regional lymph nodes.pathology [Class] Cancer"
* subject = Reference(FranzMinimum)
* effectiveDateTime = "2018-12-15"
* valueCodeableConcept = $nkrs-pn#1(sn) "pN1(sn)"
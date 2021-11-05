Instance: cN
InstanceOf: CHCRLObservationCN
Title: "cN - cN2"
Description: "Example for Observation for the TNM clinical regional nodes category"
Usage: #example
* status = #final
* code = $loinc#21906-3 "Regional lymph nodes.clinical [Class] Cancer"
* subject = Reference(FranzMinimum)
* effectiveDateTime = "2018-12-15"
* valueCodeableConcept = $nkrs-cn#2 "cN2"
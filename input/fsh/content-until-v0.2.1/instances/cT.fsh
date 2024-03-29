Instance: cT
InstanceOf: CHCRLObservationCT
Title: "cT - cT1"
Description: "Example for Observation for the TNM clinical primary tumor category"
Usage: #example
* status = #final
* code = $loinc#21905-5 "Primary tumor.clinical [Class] Cancer"
* subject = Reference(FranzMinimum)
* effectiveDateTime = "2018-12-15"
* valueCodeableConcept = $nkrs-ct#1 "cT1"
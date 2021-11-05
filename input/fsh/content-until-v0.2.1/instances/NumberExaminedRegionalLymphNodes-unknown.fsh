Instance: NumberExaminedRegionalLymphNodes-unknown
InstanceOf: CHCRLObservationNumberExaminedRegionalLymphNodes
Title: "Number examined regional lymph nodes - Unknown"
Description: "Example for Observation for the number of examined regional lymph nodes"
Usage: #example
* status = #final
* code = $loinc#21894-1 "Regional lymph nodes examined [#] Specimen"
* subject = Reference(FranzMinimum)
* effectiveDateTime = "2018-12-15"
* dataAbsentReason = $data-absent-reason#unknown "Unknown"
Instance: NumberExaminedRegionalLymphNodes
InstanceOf: CHCRLObservationNumberExaminedRegionalLymphNodes
Title: "NumberExaminedRegionalLymphNodes"
Description: "Example for Observation"
Usage: #example
* status = #final
* code = $loinc#21894-1 "Regional lymph nodes examined [#] Specimen"
* subject = Reference(FranzMinimum)
* effectiveDateTime = "2018-12-15"
* valueQuantity.value = 7
Instance: m-SuffixOfpT-unspecified
InstanceOf: CHCRLObservationmSuffixOfpT
Title: "m-SuffixOfpT-unspecified"
Description: "Example for Observation"
Usage: #example
* status = #final
* code = $loinc#42030-7 "Multiple tumors reported as single primary Cancer"
* subject = Reference(FranzMinimum)
* effectiveDateTime = "2018-12-15"
* valueCodeableConcept = $nkrs-msuffixofpt#m "Unspecified multiplicity"

// TBD: Workaround -> Sushi: error Element Observation.value[x]:valueQuantity.value has minimum cardinality 1 but occurs 0 time(s).
// * valueQuantity.value = 4
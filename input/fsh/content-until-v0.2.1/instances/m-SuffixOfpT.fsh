Instance: m-SuffixOfpT
InstanceOf: CHCRLObservationmSuffixOfpT
Title: "m-SuffixOfpT"
Description: "Example for Observation"
Usage: #example
* status = #final
* code = $loinc#42030-7 "Multiple tumors reported as single primary Cancer"
* subject = Reference(FranzMinimum)
* effectiveDateTime = "2018-12-15"
* valueQuantity.value = 4

// TBD: Workaround -> Sushi: error Element Observation.value[x]:valueCodeableConcept.coding has minimum cardinality 1 but occurs 0 time(s).
// * valueCodeableConcept = $nkrs-msuffixofpt#m "Unspecified multiplicity"
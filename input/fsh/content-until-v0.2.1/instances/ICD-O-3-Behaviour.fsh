Instance: ICD-O-3-Behaviour
InstanceOf: CHCRLObservationICDO3Behaviour
Title: "ICD-O-3-Behaviour"
Description: "Example for Observation"
Usage: #example
* status = #final
* code = $loinc#31206-6 "Behavior ICD-O-3 Cancer"
* subject = Reference(FranzMinimum)
* effectiveDateTime = "2018-12-15"
* valueCodeableConcept = $nkrs-icdo3behaviour#3 "Malignant"
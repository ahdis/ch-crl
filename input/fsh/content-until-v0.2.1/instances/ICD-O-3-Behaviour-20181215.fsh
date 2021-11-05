Instance: ICD-O-3-Behaviour-20181215
InstanceOf: CHCRLObservationICDO3Behaviour
Title: "ICD-O-3 Behaviour - Malignant (2018-12-15)"
Description: "Example for Observation for the ICD-O-3 behaviour code"
Usage: #example
* status = #final
* code = $loinc#31206-6 "Behavior ICD-O-3 Cancer"
* subject = Reference(RobertMeier)
* effectiveDateTime = "2018-12-15"
* valueCodeableConcept = $nkrs-icdo3behaviour#3 "Malignant"
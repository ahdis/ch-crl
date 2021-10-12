Instance: ICD-O-3-Behaviour-20181202
InstanceOf: CHCRLObservationICDO3Behaviour
Title: "ICD-O-3-Behaviour-20181202"
Description: "Example for Observation"
Usage: #example
* status = #final
* code = $loinc#31206-6 "Behavior ICD-O-3 Cancer"
* subject = Reference(RobertMeier)
* effectiveDateTime = "2018-12-02"
* valueCodeableConcept = $nkrs-icdo3behaviour#3 "Malignant"
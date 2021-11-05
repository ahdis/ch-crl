Instance: ICD-O-3-Topography-20181215
InstanceOf: CHCRLObservationICDO3Topography
Title: "ICD-O-3 Topography - Flexura hepatica (2018-12-15)"
Description: "Example for Observation for the ICD-O-3 topography code"
Usage: #example
* status = #final
* code = $loinc#21855-2 "Primary site Cancer"
* subject = Reference(RobertMeier)
* effectiveDateTime = "2018-12-15"
* valueCodeableConcept.coding.version = "3.2"
* valueCodeableConcept.coding = $icd-o-3#C18.3 "Flexura hepatica"
Instance: ICD-O-3-Topography
InstanceOf: CHCRLObservationICDO3Topography
Title: "ICD-O-3 Topography - Pankreaskörper"
Description: "Example for Observation for the ICD-O-3 topography code"
Usage: #example
* status = #final
* code = $loinc#21855-2 "Primary site Cancer"
* subject = Reference(FranzMinimum)
* effectiveDateTime = "2018-12-15"
* valueCodeableConcept.coding.version = "3.2"
* valueCodeableConcept.coding = $icd-o-3#C25.1 "Pankreaskörper"
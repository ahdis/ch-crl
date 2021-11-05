Instance: ICD-O-3-Morphology
InstanceOf: CHCRLObservationICDO3Morphology
Title: "ICD-O-3 Morphology - Adenokarzinom"
Description: "Example for Observation for the ICD-O-3 morphology code"
Usage: #example
* status = #final
* code = $loinc#59848-2 "Morphology.ICD-O-3 Cancer"
* subject = Reference(FranzMinimum)
* effectiveDateTime = "2018-12-15"
* valueCodeableConcept.coding.version = "3.2"
* valueCodeableConcept.coding = $icd-o-3#8140/3 "Adenokarzinom o.n.A."
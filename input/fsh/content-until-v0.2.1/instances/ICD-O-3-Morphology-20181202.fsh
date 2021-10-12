Instance: ICD-O-3-Morphology-20181202
InstanceOf: CHCRLObservationICDO3Morphology
Title: "ICD-O-3-Morphology-20181202"
Description: "Example for Observation"
Usage: #example
* status = #final
* code = $loinc#59848-2 "Morphology.ICD-O-3 Cancer"
* subject = Reference(RobertMeier)
* effectiveDateTime = "2018-12-02"
* valueCodeableConcept.coding.version = "3.2"
* valueCodeableConcept.coding = $icd-o-3#8480/3 "Muzinöses Adenokarzinom"
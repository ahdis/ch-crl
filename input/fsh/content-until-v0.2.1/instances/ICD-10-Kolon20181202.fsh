Instance: ICD-10-Kolon20181202
InstanceOf: CHCRLObservationICD10
Title: "ICD-10 - Kolon (2018-12-02)"
Description: "Example for Observation for the ICD-10 code"
Usage: #example
* status = #final
* code = $loinc#86255-7 "Primary diagnosis ICD code"
* subject = Reference(RobertMeier)
* effectiveDateTime = "2018-12-02"
* valueCodeableConcept.coding.version = "2019"
* valueCodeableConcept.coding = $icd-10-gm#C18 "Bösartige Neubildung des Kolons"
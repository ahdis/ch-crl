Instance: ICD-10-Kolon20181214
InstanceOf: CHCRLObservationICD10
Title: "ICD-10-Kolon20181214"
Description: "Example for Observation"
Usage: #example
* status = #final
* code = $loinc#86255-7 "Primary diagnosis ICD code"
* subject = Reference(RobertMeier)
* effectiveDateTime = "2018-12-14"
* valueCodeableConcept.coding.version = "2019"
* valueCodeableConcept.coding = $icd-10-gm#C18 "Bösartige Neubildung des Kolons"
Instance: ICD-10-Kolon20181201
InstanceOf: CHCRLObservationICD10
Title: "ICD-10 - Kolon (2018-12-01)"
Description: "Example for Observation for the ICD-10 code"
Usage: #example
* status = #preliminary
* code = $loinc#86255-7 "Primary diagnosis ICD code"
* subject = Reference(RobertMeier)
* effectiveDateTime = "2018-12-01"
* valueCodeableConcept.coding.version = "2019"
* valueCodeableConcept.coding = $icd-10-gm#C18 "Bösartige Neubildung des Kolons"
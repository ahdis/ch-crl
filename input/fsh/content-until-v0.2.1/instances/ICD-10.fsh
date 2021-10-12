Instance: ICD-10
InstanceOf: CHCRLObservationICD10
Title: "ICD-10"
Description: "Example for Observation"
Usage: #example
* status = #final
* code = $loinc#86255-7 "Primary diagnosis ICD code"
* subject = Reference(FranzMinimum)
* effectiveDateTime = "2018-12-15"
* valueCodeableConcept.coding.version = "2019"
* valueCodeableConcept.coding = $icd-10-gm#C25 "Bösartige Neubildung des Pankreas"
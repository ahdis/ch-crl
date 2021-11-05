Instance: ICD-10
InstanceOf: CHCRLObservationICD10
Title: "ICD-10 - C25"
Description: "Example for Observation for the ICD-10 code"
Usage: #example
* status = #final
* code = $loinc#86255-7 "Primary diagnosis ICD code"
* subject = Reference(FranzMinimum)
* effectiveDateTime = "2018-12-15"
* valueCodeableConcept.coding.version = "2019"
* valueCodeableConcept.coding = $icd-10-gm#C25 "Bösartige Neubildung des Pankreas"
Instance: ICD-O-3-HistologicalGrade-unknown
InstanceOf: CHCRLObservationICDO3HistologicalGrade
Title: "ICD-O-3-HistologicalGrade-unknown"
Description: "Example for Observation"
Usage: #example
* status = #final
* code = $loinc#33732-9 "Histology grade [Identifier] in Cancer specimen"
* subject = Reference(FranzMinimum)
* effectiveDateTime = "2018-12-15"
* dataAbsentReason = $data-absent-reason#unknown "Unknown"
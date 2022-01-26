Instance: ICD-O-3-HistologicalGrade-20181215
InstanceOf: CHCRLObservationICDO3HistologicalGrade
Title: "ICD-O-3 Histological Grade - Grade III (2018-12-15)"
Description: "Example for Observation for the ICD-O-3 histological grade code"
Usage: #example
* status = #final
* code = $loinc#33732-9 "Histology grade [Identifier] in Cancer specimen"
* subject = Reference(RobertMeier)
* effectiveDateTime = "2018-12-15"
* valueCodeableConcept = $nkrs-icdo3histologicalgrade#3 "Grade III"
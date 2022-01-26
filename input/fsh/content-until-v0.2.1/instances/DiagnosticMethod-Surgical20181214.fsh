Instance: DiagnosticMethod-Surgical20181214
InstanceOf: CHCRLProcedureDiagnosticMethod
Title: "Diagnostic Method - Surgical Tissue from Operation (2018-12-14)"
Description: "Example for Procedure for the diagnostic method(s)"
Usage: #example
* status = #completed
* category = $loinc#67183-4 "Diagnostic staging procedure PhenX"
* code = $nkrs-diagnosticmethodsused#26 "Surgical tissue from operation (e.g. neuroendocrine tumours)"
* subject = Reference(RobertMeier)
* performedDateTime = "2018-12-14T13:00:00+02:00"
* performer.actor = Reference(AbteilungOnko)
* performer.onBehalfOf = Reference(SpitalSeeblickHansEgli)
* reasonReference = Reference(ICD-10-Kolon-final)
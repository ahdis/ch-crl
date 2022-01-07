Instance: DiagnosticMethod-Surgical20181215
InstanceOf: CHCRLProcedureDiagnosticMethod
Title: "Diagnostic method - Surgical tissue from operation (2018-12-15)"
Description: "Example for Procedure for the diagnostic method(s)"
Usage: #example
* status = #completed
* category = $loinc#67183-4 "Diagnostic staging procedure PhenX"
* code = $nkrs-diagnosticmethodsused#26 "Surgical tissue from operation (e.g. neuroendocrine tumours)"
* subject = Reference(RobertMeier)
* performedDateTime = "2018-12-15T13:00:00+02:00"
* performer.actor = Reference(AbteilungPatho)
* performer.onBehalfOf = Reference(SpitalSeeblickDoktorPatho)
* reasonReference = Reference(ICD-10-Kolon20181215)
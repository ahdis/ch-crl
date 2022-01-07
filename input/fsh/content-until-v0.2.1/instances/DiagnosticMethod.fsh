Instance: DiagnosticMethod
InstanceOf: CHCRLProcedureDiagnosticMethod
Title: "Diagnostic method - CT scan of tumour"
Description: "Example for Procedure for the diagnostic method(s)"
Usage: #example
* status = #completed
* category = $loinc#67183-4 "Diagnostic staging procedure PhenX"
* code = $nkrs-diagnosticmethodsused#7 "CT scan of tumour"
* subject = Reference(FranzMinimum)
* performedDateTime = "2018-12-15T13:00:00+02:00"
* performer.actor = Reference(AbteilungMinimum)
* performer.onBehalfOf = Reference(SpitalMinimum)
* reasonReference = Reference(ICD-10)
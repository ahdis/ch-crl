Instance: DiagnosticMethod
InstanceOf: CHCRLProcedureDiagnosticMethod
Title: "DiagnosticMethod"
Description: "Example for Procedure"
Usage: #example
* status = #completed
* category = $loinc#67183-4 "Diagnostic staging procedure PhenX"
* code = $nkrs-diagnosticmethodsused#7 "CT scan of tumour"
* subject = Reference(FranzMinimum)
* performedDateTime = "2018-12-15T13:00:00+02:00"
* reasonReference = Reference(ICD-10)
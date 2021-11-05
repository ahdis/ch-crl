Instance: DiagnosticMethod-Biopsy20181202
InstanceOf: CHCRLProcedureDiagnosticMethod
Title: "Diagnostic method - Biopsy of primary tumour (2018-12-02)"
Description: "Example for Procedure for the diagnostic method(s)"
Usage: #example
* status = #completed
* category = $loinc#67183-4 "Diagnostic staging procedure PhenX"
* code = $nkrs-diagnosticmethodsused#24 "Biopsy of primary tumour"
* subject = Reference(RobertMeier)
* performedDateTime = "2018-12-02T13:00:00+02:00"
* reasonReference = Reference(ICD-10-Kolon20181202)
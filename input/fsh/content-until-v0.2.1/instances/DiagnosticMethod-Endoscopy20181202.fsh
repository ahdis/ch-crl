Instance: DiagnosticMethod-Endoscopy20181202
InstanceOf: CHCRLProcedureDiagnosticMethod
Title: "DiagnosticMethod-Endoscopy20181202"
Description: "Example for Procedure"
Usage: #example
* status = #completed
* category = $loinc#67183-4 "Diagnostic staging procedure PhenX"
* code = $nkrs-diagnosticmethodsused#11 "Endoscopy"
* subject = Reference(RobertMeier)
* performedDateTime = "2018-12-02T13:00:00+02:00"
* reasonReference = Reference(ICD-10-Kolon20181202)
Instance: DiagnosticMethod-Biopsy20181201
InstanceOf: CHCRLProcedureDiagnosticMethod
Title: "DiagnosticMethod-Biopsy20181201"
Description: "Example for Procedure"
Usage: #example
* status = #completed
* category = $loinc#67183-4 "Diagnostic staging procedure PhenX"
* code = $nkrs-diagnosticmethodsused#23 "Biopsy of primary tumour"
* subject = Reference(RobertMeier)
* performedDateTime = "2018-12-01T13:00:00+02:00"
* reasonReference = Reference(ICD-10-Kolon20181201)
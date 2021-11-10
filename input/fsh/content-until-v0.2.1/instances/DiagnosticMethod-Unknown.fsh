Instance: DiagnosticMethod-Unknown
InstanceOf: CHCRLProcedureDiagnosticMethod
Title: "Diagnostic method - Unknown"
Description: "Example for Procedure for the diagnostic method(s)"
Usage: #example
* extension[ext-data-absent-reason].valueCode = #unknown
* status = #completed
* category = $loinc#67183-4 "Diagnostic staging procedure PhenX"
* subject = Reference(FranzMinimum)
* performedDateTime = "2018-12-15T13:00:00+02:00"
* reasonReference = Reference(ICD-10)
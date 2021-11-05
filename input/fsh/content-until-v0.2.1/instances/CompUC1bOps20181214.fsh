Instance: CompUC1bOps20181214
InstanceOf: CHCRLComposition
Title: "Composition UC 1b Ops (2018-12-14)"
Description: "Example for Composition"
Usage: #example
* status = #final
* type = $loinc#72134-0 "Cancer event report"
* subject = Reference(RobertMeier)
* date = "2018-12-14T13:00:00+02:00"
* author = Reference(AbteilungOnko)
* title = "Operationsbericht"

* section[diagnosis].title = "Diagnosis"
* section[diagnosis].entry[diagnosticMethodsUsed] = Reference(DiagnosticMethod-Biopsy20181214)
* section[diagnosis].entry[diagnosticMethodsUsed] = Reference(DiagnosticMethod-Surgical20181214)
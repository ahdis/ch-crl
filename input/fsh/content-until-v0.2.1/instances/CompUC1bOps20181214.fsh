Instance: CompUC1bOps20181214
InstanceOf: CHCRLComposition
Title: "CompUC1bOps20181214"
Description: "Example for Composition"
Usage: #example
* status = #final
* type = $loinc#72134-0 "Cancer event report"
* subject = Reference(RobertMeier)
* date = "2018-12-14T13:00:00+02:00"
* author = Reference(AbteilungOnko)
* title = "Operationsbericht"
* section.entry[0] = Reference(DiagnosticMethod-Biopsy20181214)
* section.entry[+] = Reference(DiagnosticMethod-Surgical20181214)
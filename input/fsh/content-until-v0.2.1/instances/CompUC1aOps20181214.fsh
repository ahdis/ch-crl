Instance: CompUC1aOps20181214
InstanceOf: CHCRLComposition
Title: "CompUC1aOps20181214"
Description: "Example for Composition"
Usage: #example
* status = #final
* type = $loinc#72134-0 "Cancer event report"
* subject = Reference(RobertMeier)
* date = "2018-12-14T13:00:00+02:00"
* author = Reference(AbteilungOnko)
* title = "Operationsbericht"

* section[unstructuredReport].title = "Report as PDF"
* section[unstructuredReport].entry[documentReference] = Reference(DocuUC1aOps20181214)
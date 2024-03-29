Instance: CompUC1aGastro20181201
InstanceOf: CHCRLComposition
Title: "Composition UC 1a Gastro (2018-12-01)"
Description: "Example for Composition"
Usage: #example
* status = #final
* type = $loinc#72134-0 "Cancer event report"
* subject = Reference(RobertMeier)
* date = "2018-12-01T13:00:00+02:00"
* author = Reference(AbteilungGastro)
* title = "Bericht Koloskopie"

* section[unstructuredReport].title = "Report as PDF"
* section[unstructuredReport].entry[documentReference] = Reference(DocuUC1aGastro20181201)
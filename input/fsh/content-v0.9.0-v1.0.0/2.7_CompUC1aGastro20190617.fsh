Instance: CompUC1aGastro20190617
InstanceOf: CHCRLComposition
Title: "Composition UC 1a Gastro (2019-06-17)"
Description: "Example for Composition"
Usage: #example
* status = #final
* type = $loinc#72134-0 "Cancer event report"
* subject = Reference(RobertMeier)
* date = "2019-06-17T13:00:00+02:00"
* author = Reference(AbteilungGastro)
* title = "Bericht Koloskopie"

* section[unstructuredReport].title = "Report as PDF"
* section[unstructuredReport].entry[documentReference] = Reference(DocuUC1aGastro20190617)
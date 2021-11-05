Instance: CompUC1aPatho20181202
InstanceOf: CHCRLComposition
Title: "Composition UC 1a Patho (2018-12-02)"
Description: "Example for Composition"
Usage: #example
* status = #final
* type = $loinc#72134-0 "Cancer event report"
* subject = Reference(RobertMeier)
* date = "2018-12-02T13:00:00+02:00"
* author = Reference(AbteilungPatho)
* title = "Pathologischer Befund"

* section[unstructuredReport].title = "Report as PDF"
* section[unstructuredReport].entry[documentReference] = Reference(DocuUC1aPatho20181202)
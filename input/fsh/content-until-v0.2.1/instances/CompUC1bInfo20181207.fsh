Instance: CompUC1bInfo20181207
InstanceOf: CHCRLComposition
Title: "Composition UC 1b Info (2018-12-07)"
Description: "Example for Composition"
Usage: #example
* status = #final
* type = $loinc#72134-0 "Cancer event report"
* subject = Reference(RobertMeier)
* date = "2018-12-07T13:00:00+02:00"
* author = Reference(AgnesBauer)
* title = "Information über Diagnose"

* section[coding].title = "Coding"
* section[coding].entry[ICD-code] = Reference(ICD-10-Kolon20181207)
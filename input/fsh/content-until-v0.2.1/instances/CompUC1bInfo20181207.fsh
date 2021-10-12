Instance: CompUC1bInfo20181207
InstanceOf: CHCRLComposition
Title: "CompUC1bInfo20181207"
Description: "Example for Composition"
Usage: #example
* status = #final
* type = $loinc#72134-0 "Cancer event report"
* subject = Reference(RobertMeier)
* date = "2018-12-07T13:00:00+02:00"
* author = Reference(AgnesBauer)
* title = "Information über Diagnose und Patienteninformation"
* section.entry[0] = Reference(CommMeier)
* section.entry[+] = Reference(ICD-10-Kolon20181207)
Instance: CompUC1bGastro20181201
InstanceOf: CHCRLComposition
Title: "CompUC1bGastro20181201"
Description: "Example for Composition"
Usage: #example
* status = #final
* type = $loinc#72134-0 "Cancer event report"
* subject = Reference(RobertMeier)
* date = "2018-12-01T13:00:00+02:00"
* author = Reference(AbteilungGastro)
* title = "Bericht Koloskopie"
* section.entry[0] = Reference(DiagnosticMethod-Endoscopy20181201)
* section.entry[+] = Reference(DiagnosticMethod-Biopsy20181201)
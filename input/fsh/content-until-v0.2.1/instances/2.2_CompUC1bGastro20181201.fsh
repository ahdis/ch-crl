Instance: CompUC1bGastro20181201
InstanceOf: CHCRLComposition
Title: "Composition UC 1b Gastro (2018-12-01)"
Description: "Example for Composition"
Usage: #example
* status = #final
* type = $loinc#72134-0 "Cancer event report"
* subject = Reference(RobertMeier)
* date = "2018-12-01T13:00:00+02:00"
* author = Reference(AbteilungGastro)
* title = "Bericht Koloskopie"

* section[diagnosis].title = "Diagnosis"
* section[diagnosis].entry[diagnosticMethodsUsed][+] = Reference(DiagnosticMethod-Endoscopy20181201)
* section[diagnosis].entry[diagnosticMethodsUsed][+] = Reference(DiagnosticMethod-Biopsy20181201)

* section[coding].title = "Coding"
* section[coding].entry[ICD-code][+] = Reference(ICD-10-Kolon-preliminary)
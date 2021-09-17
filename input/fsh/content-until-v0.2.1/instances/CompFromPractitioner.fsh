Instance: CompFromPractitioner
InstanceOf: CHCRLComposition
Title: "CompFromPractitioner"
Description: "Example for Composition"
Usage: #example
* status = #final
* type = $loinc#72134-0 "Cancer event report"
* subject = Reference(FranzMinimum)
* date = "2018-12-15T13:00:00+02:00"
* author = Reference(EmmaMinimum)
* title = "Report to the Cancer Registry"
* section.entry[0] = Reference(DocuPractMinimum)
* section.entry[+] = Reference(CommMinimum)
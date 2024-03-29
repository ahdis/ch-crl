Instance: CompFromPractitioner
InstanceOf: CHCRLComposition
Title: "Composition from Practitioner"
Description: "Example for Composition"
Usage: #example
* status = #final
* type = $loinc#72134-0 "Cancer event report"
* subject = Reference(FranzMinimum)
* date = "2018-12-15T13:00:00+02:00"
* author = Reference(EmmaMinimum)
* title = "Report to the Cancer Registry"

* section[unstructuredReport].title = "Report as PDF"
* section[unstructuredReport].entry[documentReference] = Reference(DocuPractMinimum)
* section[registrationRequirements].title = "Registration requirements"
* section[registrationRequirements].entry[communication] = Reference(CommMinimum)
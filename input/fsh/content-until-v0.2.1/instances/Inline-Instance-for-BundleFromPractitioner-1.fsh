Instance: Inline-Instance-for-BundleFromPractitioner-1
InstanceOf: CHCRLComposition
Usage: #inline
* id = "CompFromPractitioner"
* meta.versionId = "1"
* meta.lastUpdated = "2019-10-30T09:37:15.638+00:00"
* status = #final
* type = $loinc#72134-0 "Cancer event report"
* subject = Reference(FranzMinimum)
* date = "2018-12-15T13:00:00+02:00"
* author = Reference(EmmaMinimum)
* title = "Report to the Cancer Registry"
* section.entry[0] = Reference(DocuPractMinimum)
* section.entry[+] = Reference(CommMinimum)
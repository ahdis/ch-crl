Instance: BundleFromPractitioner
InstanceOf: CHCRLBundle
Title: "BundleFromPractitioner"
Description: "Example for Practitioner"
Usage: #example
* meta.lastUpdated = "2019-10-30T09:41:15.071+00:00"
* identifier.system = "http://example.fhir"
* identifier.value = "1234"
* type = #document
* timestamp = "2019-10-30T09:41:15.071+00:00"
* entry[0].fullUrl = "http://test.fhir.ch/r4/Composition/CompFromPractitioner"
* entry[=].resource = CompFromPractitioner
* entry[+].fullUrl = "http://test.fhir.ch/r4/DocumentReference/DocuPractMinimum"
* entry[=].resource = DocuPractMinimum
* entry[+].fullUrl = "http://test.fhir.ch/r4/Communication/CommMinimum"
* entry[=].resource = CommMinimum
* entry[+].fullUrl = "http://test.fhir.ch/r4/Patient/FranzMinimum"
* entry[=].resource = FranzMinimum
* entry[+].fullUrl = "http://test.fhir.ch/r4/Practitioner/EmmaMinimum"
* entry[=].resource = EmmaMinimum
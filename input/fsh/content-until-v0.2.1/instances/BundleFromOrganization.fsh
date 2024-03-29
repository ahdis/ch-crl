Instance: BundleFromOrganization
InstanceOf: CHCRLBundle
Title: "Bundle from Organization"
Description: "Example for Bundle for reporting to the cancer registry"
Usage: #example
* identifier.system = "http://example.fhir"
* identifier.value = "1234"
* type = #document
* timestamp = "2019-10-31T08:51:46.828+00:00"
* entry[0].fullUrl = "http://test.fhir.ch/r4/Composition/CompFromOrganization"
* entry[=].resource = CompFromOrganization
* entry[+].fullUrl = "http://test.fhir.ch/r4/Organization/AbteilungMinimum"
* entry[=].resource = AbteilungMinimum
* entry[+].fullUrl = "http://test.fhir.ch/r4/DocumentReference/DocuHospMinimum"
* entry[=].resource = DocuHospMinimum
* entry[+].fullUrl = "http://test.fhir.ch/r4/Communication/CommMinimum"
* entry[=].resource = CommMinimum
* entry[+].fullUrl = "http://test.fhir.ch/r4/Patient/FranzMinimum"
* entry[=].resource = FranzMinimum
* entry[+].fullUrl = "http://test.fhir.ch/r4/Organization/SpitalMinimum"
* entry[=].resource = SpitalMinimum
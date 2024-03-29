Instance: BundleUC1aPatho20181215
InstanceOf: CHCRLBundle
Title: "Bundle UC 1a Patho (2018-12-15)"
Description: "Example for Bundle for reporting to the cancer registry"
Usage: #example
* identifier.system = "http://example.fhir"
* identifier.value = "1234"
* type = #document
* timestamp = "2018-12-15T16:16:12.012+00:00"
* entry[0].fullUrl = "http://test.fhir.ch/r4/Composition/CompUC1aPatho20181215"
* entry[=].resource = CompUC1aPatho20181215
* entry[+].fullUrl = "http://test.fhir.ch/r4/Organization/AbteilungPatho"
* entry[=].resource = AbteilungPatho
* entry[+].fullUrl = "http://test.fhir.ch/r4/DocumentReference/DocuUC1aPatho20181215"
* entry[=].resource = DocuUC1aPatho20181215
* entry[+].fullUrl = "http://test.fhir.ch/r4/Patient/RobertMeier"
* entry[=].resource = RobertMeier
* entry[+].fullUrl = "http://test.fhir.ch/r4/Organization/SpitalSeeblickDoktorPatho"
* entry[=].resource = SpitalSeeblickDoktorPatho
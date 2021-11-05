Instance: BundleUC1aInfo20181207
InstanceOf: CHCRLBundle
Title: "Bundle UC 1a Info (2018-12-07)"
Description: "Example for Bundle for reporting to the cancer registry"
Usage: #example
* meta.lastUpdated = "2019-10-31T14:11:21.384+00:00"
* identifier.system = "http://example.fhir"
* identifier.value = "1234"
* type = #document
* timestamp = "2018-12-01T16:11:21.384+00:00"
* entry[0].fullUrl = "http://test.fhir.ch/r4/Composition/CompUC1aInfo20181207"
* entry[=].resource = CompUC1aInfo20181207
* entry[+].fullUrl = "http://test.fhir.ch/r4/DocumentReference/DocuUC1aInfo20181207"
* entry[=].resource = DocuUC1aInfo20181207
* entry[+].fullUrl = "http://test.fhir.ch/r4/Patient/RobertMeier"
* entry[=].resource = RobertMeier
* entry[+].fullUrl = "http://test.fhir.ch/r4/Practitioner/AgnesBauer"
* entry[=].resource = AgnesBauer
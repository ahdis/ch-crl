Instance: BundleUC1bInfo20181207
InstanceOf: CHCRLBundle
Title: "Bundle UC 1b Info (2018-12-07)"
Description: "Example for Bundle for reporting to the cancer registry"
Usage: #example
* identifier.system = "http://example.fhir"
* identifier.value = "1234"
* type = #document
* timestamp = "2018-12-07T16:19:20.680+00:00"
* entry[0].fullUrl = "http://test.fhir.ch/r4/Composition/CompUC1bInfo20181207"
* entry[=].resource = CompUC1bInfo20181207
* entry[+].fullUrl = "http://test.fhir.ch/r4/Observation/ICD-10-Kolon-final"
* entry[=].resource = ICD-10-Kolon-final
* entry[+].fullUrl = "http://test.fhir.ch/r4/Communication/CommMeier"
* entry[=].resource = CommMeier
* entry[+].fullUrl = "http://test.fhir.ch/r4/Practitioner/AgnesBauer"
* entry[=].resource = AgnesBauer
* entry[+].fullUrl = "http://test.fhir.ch/r4/Patient/RobertMeier"
* entry[=].resource = RobertMeier
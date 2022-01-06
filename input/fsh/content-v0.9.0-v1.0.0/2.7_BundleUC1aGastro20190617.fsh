Instance: BundleUC1aGastro20190617
InstanceOf: CHCRLBundle
Title: "Bundle UC 1a Gastro (2019-06-17)"
Description: "Example for Bundle for reporting to the cancer registry"
Usage: #example
* identifier.system = "http://example.fhir"
* identifier.value = "1234"
* type = #document
* timestamp = "2019-06-17T16:49:22.988+00:00"
* entry[0].fullUrl = "http://test.fhir.ch/r4/Composition/CompUC1aGastro20190617"
* entry[=].resource = CompUC1aGastro20190617
* entry[+].fullUrl = "http://test.fhir.ch/r4/Organization/AbteilungGastro"
* entry[=].resource = AbteilungGastro
* entry[+].fullUrl = "http://test.fhir.ch/r4/Patient/RobertMeier"
* entry[=].resource = RobertMeier
* entry[+].fullUrl = "http://test.fhir.ch/r4/DocumentReference/DocuUC1aGastro20190617"
* entry[=].resource = DocuUC1aGastro20190617
* entry[+].fullUrl = "http://test.fhir.ch/r4/Organization/SpitalSeeblickDoktorGastro"
* entry[=].resource = SpitalSeeblickDoktorGastro
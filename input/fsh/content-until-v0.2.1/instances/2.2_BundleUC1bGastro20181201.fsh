Instance: BundleUC1bGastro20181201
InstanceOf: CHCRLBundle
Title: "Bundle UC 1b Gastro (2018-12-01)"
Description: "Example for Bundle for reporting to the cancer registry"
Usage: #example
* identifier.system = "http://example.fhir"
* identifier.value = "1234"
* type = #document
* timestamp = "2018-12-01T16:19:20.680+00:00"
* entry[0].fullUrl = "http://test.fhir.ch/r4/Composition/CompUC1bGastro20181201"
* entry[=].resource = CompUC1bGastro20181201
* entry[+].fullUrl = "http://test.fhir.ch/r4/Procedure/DiagnosticMethod-Biopsy20181201"
* entry[=].resource = DiagnosticMethod-Biopsy20181201
* entry[+].fullUrl = "http://test.fhir.ch/r4/Procedure/DiagnosticMethod-Endoscopy20181201"
* entry[=].resource = DiagnosticMethod-Endoscopy20181201
* entry[+].fullUrl = "http://test.fhir.ch/r4/Organization/AbteilungGastro"
* entry[=].resource = AbteilungGastro
* entry[+].fullUrl = "http://test.fhir.ch/r4/Patient/RobertMeier"
* entry[=].resource = RobertMeier
* entry[+].fullUrl = "http://test.fhir.ch/r4/Organization/SpitalSeeblickDoktorGastro"
* entry[=].resource = SpitalSeeblickDoktorGastro
* entry[+].fullUrl = "http://test.fhir.ch/r4/Observation/ICD-10-Kolon-preliminary"
* entry[=].resource = ICD-10-Kolon-preliminary
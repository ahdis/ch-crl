Instance: BundleUC1bOps20181214
InstanceOf: CHCRLBundle
Title: "Bundle UC 1b Ops (2018-12-14)"
Description: "Example for Bundle for reporting to the cancer registry"
Usage: #example
* identifier.system = "http://example.fhir"
* identifier.value = "1234"
* type = #document
* timestamp = "2018-12-14T16:19:20.680+00:00"
* entry[0].fullUrl = "http://test.fhir.ch/r4/Composition/CompUC1bOps20181214"
* entry[=].resource = CompUC1bOps20181214
* entry[+].fullUrl = "http://test.fhir.ch/r4/Organization/AbteilungOnko"
* entry[=].resource = AbteilungOnko
* entry[+].fullUrl = "http://test.fhir.ch/r4/Procedure/DiagnosticMethod-Biopsy20181214"
* entry[=].resource = DiagnosticMethod-Biopsy20181214
* entry[+].fullUrl = "http://test.fhir.ch/r4/Procedure/DiagnosticMethod-Surgical20181214"
* entry[=].resource = DiagnosticMethod-Surgical20181214
* entry[+].fullUrl = "http://test.fhir.ch/r4/Patient/RobertMeier"
* entry[=].resource = RobertMeier
* entry[+].fullUrl = "http://test.fhir.ch/r4/Organization/SpitalSeeblickHansEgli"
* entry[=].resource = SpitalSeeblickHansEgli
* entry[+].fullUrl = "http://test.fhir.ch/r4/Observation/ICD-10-Kolon-final"
* entry[=].resource = ICD-10-Kolon-final
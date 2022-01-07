Instance: BundleUC1bGastro20190617
InstanceOf: CHCRLBundle
Title: "Bundle UC 1b Gastro (2019-06-17)"
Description: "Example for Bundle for reporting to the cancer registry"
Usage: #example
* identifier.system = "http://example.fhir"
* identifier.value = "1234"
* type = #document
* timestamp = "2019-06-17T16:19:20.680+00:00"
* entry[0].fullUrl = "http://test.fhir.ch/r4/Composition/CompUC1bGastro20190617"
* entry[=].resource = CompUC1bGastro20190617
* entry[+].fullUrl = "http://test.fhir.ch/r4/Procedure/DiagnosticMethod-Biopsy20190617"
* entry[=].resource = DiagnosticMethod-Biopsy20190617
* entry[+].fullUrl = "http://test.fhir.ch/r4/Procedure/DiagnosticMethod-Endoscopy20190617"
* entry[=].resource = DiagnosticMethod-Endoscopy20190617
* entry[+].fullUrl = "http://test.fhir.ch/r4/Organization/AbteilungGastro"
* entry[=].resource = AbteilungGastro
* entry[+].fullUrl = "http://test.fhir.ch/r4/Patient/RobertMeier"
* entry[=].resource = RobertMeier
* entry[+].fullUrl = "http://test.fhir.ch/r4/Organization/SpitalSeeblickDoktorGastro"
* entry[=].resource = SpitalSeeblickDoktorGastro
* entry[+].fullUrl = "http://test.fhir.ch/r4/Observation/ICD-10-Kolon20190617"
* entry[=].resource = ICD-10-Kolon20190617



Instance: CompUC1bGastro20190617
InstanceOf: CHCRLComposition
Title: "Composition UC 1b Gastro (2019-06-17)"
Description: "Example for Composition"
Usage: #example
* status = #final
* type = $loinc#72134-0 "Cancer event report"
* subject = Reference(RobertMeier)
* date = "2019-06-17T13:00:00+02:00"
* author = Reference(AbteilungGastro)
* title = "Bericht Koloskopie"

* section[diagnosis].title = "Diagnosis"
* section[diagnosis].entry[diagnosticMethodsUsed][+] = Reference(DiagnosticMethod-Endoscopy20190617)
* section[diagnosis].entry[diagnosticMethodsUsed][+] = Reference(DiagnosticMethod-Biopsy20190617)

* section[courseOfDisease].title = "Course of disease"
* section[courseOfDisease].entry[event][+] = Reference(TypeRecurrenceTransformation-Relapse20190617)


Instance: DiagnosticMethod-Biopsy20190617
InstanceOf: CHCRLProcedureDiagnosticMethod
Title: "Diagnostic method - Biopsy of primary tumour (2019-06-17)"
Description: "Example for Procedure for the diagnostic method(s)"
Usage: #example
* status = #completed
* category = $loinc#67183-4 "Diagnostic staging procedure PhenX"
* code = $nkrs-diagnosticmethodsused#24 "Biopsy of primary tumour"
* subject = Reference(RobertMeier)
* performedDateTime = "2019-06-17T13:00:00+02:00"
* reasonReference = Reference(ICD-10-Kolon20190617)


Instance: DiagnosticMethod-Endoscopy20190617
InstanceOf: CHCRLProcedureDiagnosticMethod
Title: "Diagnostic method - Endoscopy (2019-06-17)"
Description: "Example for Procedure for the diagnostic method(s)"
Usage: #example
* status = #completed
* category = $loinc#67183-4 "Diagnostic staging procedure PhenX"
* code = $nkrs-diagnosticmethodsused#11 "Endoscopy"
* subject = Reference(RobertMeier)
* performedDateTime = "2019-06-17T13:00:00+02:00"
* reasonReference = Reference(ICD-10-Kolon20190617)


Instance: ICD-10-Kolon20190617
InstanceOf: CHCRLObservationICD10
Title: "ICD-10 - Kolon (2019-06-17)"
Description: "Example for Observation for the ICD-10 code"
Usage: #example
* status = #preliminary
* code = $loinc#86255-7 "Primary diagnosis ICD code"
* subject = Reference(RobertMeier)
* effectiveDateTime = "2019-06-17"
* valueCodeableConcept.coding.version = "2019"
* valueCodeableConcept.coding = $icd-10-gm#C18 "Bösartige Neubildung des Kolons"


Instance: TypeRecurrenceTransformation-Relapse20190617
InstanceOf: CHCRLObservationTypeRecurrenceTransformation
Title: "Type of Recurrence/Transformation - Relapse (2019-06-17)"
Description: "Example for Observation for the type of recurrence/transformation"
Usage: #example
* status = #final
* code = $loinc#97509-4 "Cancer disease progression"
* subject = Reference(RobertMeier)
* effectiveDateTime = "2019-06-17"
* valueCodeableConcept = $nkrs-typerecurrencetransformation#4 "Relapse"
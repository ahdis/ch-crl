Instance: CompUC1bPatho20181202
InstanceOf: CHCRLComposition
Title: "Composition UC 1b Patho 2018-12-02"
Description: "Example for Composition"
Usage: #example
* status = #final
* type = $loinc#72134-0 "Cancer event report"
* subject = Reference(RobertMeier)
* date = "2018-12-02T13:00:00+02:00"
* author = Reference(AbteilungPatho)
* title = "Pathologischer Befund"

* section[diagnosis].title = "Diagnosis"
* section[diagnosis].entry[dateOfIncidence] = Reference(DateOfIncidence-20181202)
* section[diagnosis].entry[diagnosticMethodsUsed][+] = Reference(DiagnosticMethod-Endoscopy20181202)
* section[diagnosis].entry[diagnosticMethodsUsed][+] = Reference(DiagnosticMethod-Biopsy20181202)

* section[coding].title = "Coding"
* section[coding].entry[ICD-code] = Reference(ICD-10-Kolon-final)
* section[coding].entry[ICD-O-topography] = Reference(ICD-O-3-Topography-20181202)
* section[coding].entry[ICD-O-morphologyAndBehaviour] = Reference(ICD-O-3-Morphology-20181202)
* section[coding].entry[ICD-O-observedBehaviour] = Reference(ICD-O-3-Behaviour-20181202)
* section[coding].entry[ICD-O-histologicalGrades] = Reference(ICD-O-3-HistologicalGrade-20181202)
* section[coding].entry[ICD-O-laterality] = Reference(ICD-O-3-Laterality-20181202)

* section[stagingAndGrading].title = "Staging and grading"
* section[stagingAndGrading].entry[cTNM-y-prefix] = Reference(y-PrefixOfcTNM-20181202)
* section[stagingAndGrading].entry[pTNM-a-prefix] = Reference(a-PrefixOfpTNM-20181202)
* section[stagingAndGrading].entry[pTNM-y-prefix] = Reference(y-PrefixOfpTNM-20181202)
* section[stagingAndGrading].entry[pT-m-suffix] = Reference(m-SuffixOfpT-20181202)
* section[stagingAndGrading].entry[numberInvolvedRegionalLymphNodes] = Reference(NumberInvolvedRegionalLymphNodes-20181202)
* section[stagingAndGrading].entry[numberExaminedRegionalLymphNodes] = Reference(NumberExaminedRegionalLymphNodes-20181202)
* section[stagingAndGrading].entry[lymphaticInvasion] = Reference(LymphaticInvasion-20181202)
* section[stagingAndGrading].entry[venousInvasion] = Reference(VenousInvasion-20181202)
* section[stagingAndGrading].entry[perineuralInvasion] = Reference(PerineuralInvasion-20181202)
* section[stagingAndGrading].entry[TNM-stage] = Reference(TNM-StageGroup-20181202)
Instance: CompStructuredData
InstanceOf: CHCRLComposition
Title: "Composition structured data"
Description: "Example for Composition"
Usage: #example
* status = #final
* type = $loinc#72134-0 "Cancer event report"
* subject = Reference(FranzMinimum)
* date = "2018-12-15T13:00:00+02:00"
* author = Reference(AbteilungMinimum)
* title = "Report to the Cancer Registry"

* section[registrationRequirements].title = "Registration requirements"
* section[registrationRequirements].entry[communication] = Reference(CommMinimum)

* section[causeOfDeath].title = "Cause of death"
* section[causeOfDeath].entry[principalCauseOfDeath] = Reference(FinalCauseOfDeath)
* section[causeOfDeath].entry[diseases][+] = Reference(PrimaryDisease)
* section[causeOfDeath].entry[diseases][+] = Reference(SecondaryDisease)
* section[causeOfDeath].entry[diseases][+] = Reference(ConcomitantDiseaseA)
* section[causeOfDeath].entry[diseases][+] = Reference(ConcomitantDiseaseB)

* section[diagnosis].title = "Diagnosis"
* section[diagnosis].entry[dateOfIncidence] = Reference(DateOfIncidence)
* section[diagnosis].entry[methodFirstDetection] = Reference(MethodFirstDetection-ClinicalSymptoms)
* section[diagnosis].entry[diagnosticMethodsUsed] = Reference(DiagnosticMethod)

* section[coding].title = "Coding"
* section[coding].entry[ICD-code] = Reference(ICD-10)
* section[coding].entry[ICD-O-topography] = Reference(ICD-O-3-Topography)
* section[coding].entry[ICD-O-morphologyAndBehaviour] = Reference(ICD-O-3-Morphology)
* section[coding].entry[ICD-O-observedBehaviour] = Reference(ICD-O-3-Behaviour)
* section[coding].entry[ICD-O-histologicalGrades] = Reference(ICD-O-3-HistologicalGrade-unknown)
* section[coding].entry[ICD-O-laterality] = Reference(ICD-O-3-Laterality)

* section[stagingAndGrading].title = "Staging and grading"
* section[stagingAndGrading].entry[cTNM-y-prefix] = Reference(y-PrefixOfcTNM)
* section[stagingAndGrading].entry[pTNM-a-prefix] = Reference(a-PrefixOfpTNM)
* section[stagingAndGrading].entry[pTNM-y-prefix] = Reference(y-PrefixOfpTNM)
* section[stagingAndGrading].entry[pT-m-suffix] = Reference(m-SuffixOfpT)
* section[stagingAndGrading].entry[numberInvolvedRegionalLymphNodes] = Reference(NumberInvolvedRegionalLymphNodes)
* section[stagingAndGrading].entry[numberExaminedRegionalLymphNodes] = Reference(NumberExaminedRegionalLymphNodes)
* section[stagingAndGrading].entry[lymphaticInvasion] = Reference(LymphaticInvasion)
* section[stagingAndGrading].entry[venousInvasion] = Reference(VenousInvasion)
* section[stagingAndGrading].entry[perineuralInvasion] = Reference(PerineuralInvasion)
* section[stagingAndGrading].entry[residualTumour] = Reference(ResidualInvasiveTumour-R1)
* section[stagingAndGrading].entry[TNM-stage] = Reference(TNM-StageGroup)
* section[stagingAndGrading].entry[clinicalTumourSize] = Reference(ClinicalTumourSize-11mm)
* section[stagingAndGrading].entry[pathologicalTumourSize] = Reference(PathologicalTumourSize-11mm)
* section[stagingAndGrading].entry[metastasesAtDiagnosisIndicator] = Reference(MetastasesAtDiagnosisIndicator-Unknown)
* section[stagingAndGrading].entry[topographyMetastasesAtDiagnosis][+] = Reference(TopographyMetastasesAtDiagnosis-LYM)
* section[stagingAndGrading].entry[topographyMetastasesAtDiagnosis][+] = Reference(TopographyMetastasesAtDiagnosis-OTH)
* section[stagingAndGrading].entry[resectionMarginInvasiveTumour] = Reference(ResectionMarginInvasiveTumour-NotApplicable)
* section[stagingAndGrading].entry[associatedInsituTumour] = Reference(AssociatedInsituTumour-Yes)
* section[stagingAndGrading].entry[residualForAssociatedInsituTumour] = Reference(ResidualInsituTumour-RX)
* section[stagingAndGrading].entry[resectionMarginInsituTumour] = Reference(ResectionMarginInsituTumour-2.1mm)
* section[stagingAndGrading].entry[sentinelLymphNodeAssessment] = Reference(SentinelLymphNodeAssessment-N0)
* section[stagingAndGrading].entry[numberPositiveSentinelLymphNodes] = Reference(NumberPositiveSentinelLymphNodes-6)
* section[stagingAndGrading].entry[numberExaminedSentinelLymphNodes] = Reference(NumberExaminedSentinelLymphNodes-4)

* section[tumourRelatedPrognosticFactors].entry[oestrogenReceptorStatus] = Reference(OestrogenReceptorStatus-5percent)
* section[tumourRelatedPrognosticFactors].entry[progesteroneReceptorStatus] = Reference(ProgesteroneReceptorStatus-3percent)
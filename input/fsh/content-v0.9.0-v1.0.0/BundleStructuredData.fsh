Instance: BundleStructuredData
InstanceOf: CHCRLBundle
Title: "Bundle structured data"
Description: "Example for Bundle for reporting to the cancer registry"
Usage: #example
* meta.lastUpdated = "2019-11-05T12:02:50.958+00:00"
* identifier.system = "http://example.fhir"
* identifier.value = "1234"
* type = #document
* timestamp = "2019-11-05T12:02:50.958+00:00"
* entry[0].fullUrl = "http://test.fhir.ch/r4/Composition/CompStructuredData"
* entry[=].resource = CompStructuredData
* entry[+].fullUrl = "http://test.fhir.ch/r4/Patient/FranzMinimum"
* entry[=].resource = FranzMinimum
* entry[+].fullUrl = "http://test.fhir.ch/r4/Communication/CommMinimum"
* entry[=].resource = CommMinimum
* entry[+].fullUrl = "http://test.fhir.ch/r4/Condition/ConcomitantDiseaseA"
* entry[=].resource = ConcomitantDiseaseA
* entry[+].fullUrl = "http://test.fhir.ch/r4/Condition/ConcomitantDiseaseB"
* entry[=].resource = ConcomitantDiseaseB
* entry[+].fullUrl = "http://test.fhir.ch/r4/Condition/FinalCauseOfDeath"
* entry[=].resource = FinalCauseOfDeath
* entry[+].fullUrl = "http://test.fhir.ch/r4/Condition/PrimaryDisease"
* entry[=].resource = PrimaryDisease
* entry[+].fullUrl = "http://test.fhir.ch/r4/Condition/SecondaryDisease"
* entry[=].resource = SecondaryDisease
* entry[+].fullUrl = "http://test.fhir.ch/r4/Observation/a-PrefixOfpTNM"
* entry[=].resource = a-PrefixOfpTNM
* entry[+].fullUrl = "http://test.fhir.ch/r4/Observation/DateOfIncidence"
* entry[=].resource = DateOfIncidence
* entry[+].fullUrl = "http://test.fhir.ch/r4/Observation/ICD-10"
* entry[=].resource = ICD-10
* entry[+].fullUrl = "http://test.fhir.ch/r4/Observation/ICD-O-3-Behaviour"
* entry[=].resource = ICD-O-3-Behaviour
* entry[+].fullUrl = "http://test.fhir.ch/r4/Observation/ICD-O-3-Laterality"
* entry[=].resource = ICD-O-3-Laterality
* entry[+].fullUrl = "http://test.fhir.ch/r4/Observation/ICD-O-3-Morphology"
* entry[=].resource = ICD-O-3-Morphology
* entry[+].fullUrl = "http://test.fhir.ch/r4/Observation/ICD-O-3-Topography"
* entry[=].resource = ICD-O-3-Topography
* entry[+].fullUrl = "http://test.fhir.ch/r4/Observation/LymphaticInvasion"
* entry[=].resource = LymphaticInvasion
* entry[+].fullUrl = "http://test.fhir.ch/r4/Observation/m-SuffixOfpT"
* entry[=].resource = m-SuffixOfpT
* entry[+].fullUrl = "http://test.fhir.ch/r4/Observation/NumberExaminedRegionalLymphNodes"
* entry[=].resource = NumberExaminedRegionalLymphNodes
* entry[+].fullUrl = "http://test.fhir.ch/r4/Observation/NumberInvolvedRegionalLymphNodes"
* entry[=].resource = NumberInvolvedRegionalLymphNodes
* entry[+].fullUrl = "http://test.fhir.ch/r4/Observation/PerineuralInvasion"
* entry[=].resource = PerineuralInvasion
* entry[+].fullUrl = "http://test.fhir.ch/r4/Observation/TNM-StageGroup"
* entry[=].resource = TNM-StageGroup
* entry[+].fullUrl = "http://test.fhir.ch/r4/Observation/VenousInvasion"
* entry[=].resource = VenousInvasion
* entry[+].fullUrl = "http://test.fhir.ch/r4/Observation/y-PrefixOfcTNM"
* entry[=].resource = y-PrefixOfcTNM
* entry[+].fullUrl = "http://test.fhir.ch/r4/Observation/y-PrefixOfpTNM"
* entry[=].resource = y-PrefixOfpTNM
* entry[+].fullUrl = "http://test.fhir.ch/r4/Procedure/DiagnosticMethod"
* entry[=].resource = DiagnosticMethod
* entry[+].fullUrl = "http://test.fhir.ch/r4/Observation/ICD-O-3-HistologicalGrade-unknown"
* entry[=].resource = ICD-O-3-HistologicalGrade-unknown
* entry[+].fullUrl = "http://test.fhir.ch/r4/Organization/AbteilungMinimum"
* entry[=].resource = AbteilungMinimum
* entry[+].fullUrl = "http://test.fhir.ch/r4/Observation/cM"
* entry[=].resource = cM
* entry[+].fullUrl = "http://test.fhir.ch/r4/Observation/cN"
* entry[=].resource = cN
* entry[+].fullUrl = "http://test.fhir.ch/r4/Observation/cT"
* entry[=].resource = cT
* entry[+].fullUrl = "http://test.fhir.ch/r4/Observation/pM-unknown"
* entry[=].resource = pM-unknown
* entry[+].fullUrl = "http://test.fhir.ch/r4/Observation/pN"
* entry[=].resource = pN
* entry[+].fullUrl = "http://test.fhir.ch/r4/Observation/pT"
* entry[=].resource = pT
* entry[+].fullUrl = "http://test.fhir.ch/r4/Organization/SpitalMinimum"
* entry[=].resource = SpitalMinimum
* entry[+].fullUrl = "http://test.fhir.ch/r4/Observation/SentinelLymphNodeAssessment-N0"
* entry[=].resource = SentinelLymphNodeAssessment-N0
* entry[+].fullUrl = "http://test.fhir.ch/r4/Observation/NumberPositiveSentinelLymphNodes-6"
* entry[=].resource = NumberPositiveSentinelLymphNodes-6
* entry[+].fullUrl = "http://test.fhir.ch/r4/Observation/NumberExaminedSentinelLymphNodes-4"
* entry[=].resource = NumberExaminedSentinelLymphNodes-4
* entry[+].fullUrl = "http://test.fhir.ch/r4/Observation/ClinicalTumourSize-11mm"
* entry[=].resource = ClinicalTumourSize-11mm
* entry[+].fullUrl = "http://test.fhir.ch/r4/Observation/PathologicalTumourSize-11mm"
* entry[=].resource = PathologicalTumourSize-11mm
* entry[+].fullUrl = "http://test.fhir.ch/r4/Observation/MetastasesAtDiagnosisIndicator-Unknown"
* entry[=].resource = MetastasesAtDiagnosisIndicator-Unknown
* entry[+].fullUrl = "http://test.fhir.ch/r4/Observation/TopographyMetastasesAtDiagnosis-LYM"
* entry[=].resource = TopographyMetastasesAtDiagnosis-LYM
* entry[+].fullUrl = "http://test.fhir.ch/r4/Observation/TopographyMetastasesAtDiagnosis-OTH"
* entry[=].resource = TopographyMetastasesAtDiagnosis-OTH
* entry[+].fullUrl = "http://test.fhir.ch/r4/Observation/ResectionMarginInvasiveTumour-NotApplicable"
* entry[=].resource = ResectionMarginInvasiveTumour-NotApplicable
* entry[+].fullUrl = "http://test.fhir.ch/r4/Observation/ResectionMarginInsituTumour-2.1mm"
* entry[=].resource = ResectionMarginInsituTumour-2.1mm
* entry[+].fullUrl = "http://test.fhir.ch/r4/Observation/AssociatedInsituTumour-Yes"
* entry[=].resource = AssociatedInsituTumour-Yes
* entry[+].fullUrl = "http://test.fhir.ch/r4/Procedure/MethodFirstDetection-ClinicalSymptoms"
* entry[=].resource = MethodFirstDetection-ClinicalSymptoms
* entry[+].fullUrl = "http://test.fhir.ch/r4/Observation/ResidualInvasiveTumour-R1"
* entry[=].resource = ResidualInvasiveTumour-R1
* entry[+].fullUrl = "http://test.fhir.ch/r4/Observation/ResidualInsituTumour-RX"
* entry[=].resource = ResidualInsituTumour-RX
* entry[+].fullUrl = "http://test.fhir.ch/r4/Observation/OestrogenReceptorStatus-5percent"
* entry[=].resource = OestrogenReceptorStatus-5percent
* entry[+].fullUrl = "http://test.fhir.ch/r4/Observation/ProgesteroneReceptorStatus-3percent"
* entry[=].resource = ProgesteroneReceptorStatus-3percent
* entry[+].fullUrl = "http://test.fhir.ch/r4/Observation/Her2ReceptorStatus-Overexpressed"
* entry[=].resource = Her2ReceptorStatus-Overexpressed
* entry[+].fullUrl = "http://test.fhir.ch/r4/Observation/TumourProliferationLabeling-3percent"
* entry[=].resource = TumourProliferationLabeling-3percent
* entry[+].fullUrl = "http://test.fhir.ch/r4/Observation/PretreatmentProstateSpecificAntigen-80ngml"
* entry[=].resource = PretreatmentProstateSpecificAntigen-80ngml
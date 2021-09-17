Instance: CompStructuredData
InstanceOf: CHCRLComposition
Title: "CompStructuredData"
Description: "Example for Composition"
Usage: #example
* status = #final
* type = $loinc#72134-0 "Cancer event report"
* subject = Reference(FranzMinimum)
* date = "2018-12-15T13:00:00+02:00"
* author = Reference(AbteilungMinimum)
* title = "Report to the Cancer Registry"
* section.entry[0] = Reference(CommMinimum)
* section.entry[+] = Reference(FinalCauseOfDeath)
* section.entry[+] = Reference(PrimaryDisease)
* section.entry[+] = Reference(SecondaryDisease)
* section.entry[+] = Reference(ConcomitantDiseaseA)
* section.entry[+] = Reference(ConcomitantDiseaseB)
* section.entry[+] = Reference(DateOfIncidence)
* section.entry[+] = Reference(ICD-10)
* section.entry[+] = Reference(ICD-O-3-Morphology)
* section.entry[+] = Reference(ICD-O-3-Topography)
* section.entry[+] = Reference(ICD-O-3-Behaviour)
* section.entry[+] = Reference(ICD-O-3-Laterality)
* section.entry[+] = Reference(ICD-O-3-HistologicalGrade-unknown)
* section.entry[+] = Reference(y-PrefixOfcTNM)
* section.entry[+] = Reference(a-PrefixOfpTNM)
* section.entry[+] = Reference(y-PrefixOfpTNM)
* section.entry[+] = Reference(m-SuffixOfpT)
* section.entry[+] = Reference(NumberInvolvedRegionalLymphNodes)
* section.entry[+] = Reference(NumberExaminedRegionalLymphNodes)
* section.entry[+] = Reference(LymphaticInvasion)
* section.entry[+] = Reference(VenousInvasion)
* section.entry[+] = Reference(PerineuralInvasion)
* section.entry[+] = Reference(TNM-StageGroup)
* section.entry[+] = Reference(DiagnosticMethod)
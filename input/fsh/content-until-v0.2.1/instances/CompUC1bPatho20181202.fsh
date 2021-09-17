Instance: CompUC1bPatho20181202
InstanceOf: CHCRLComposition
Title: "CompUC1bPatho20181202"
Description: "Example for Composition"
Usage: #example
* status = #final
* type = $loinc#72134-0 "Cancer event report"
* subject = Reference(RobertMeier)
* date = "2018-12-02T13:00:00+02:00"
* author = Reference(AbteilungPatho)
* title = "Pathologischer Befund"
* section.entry[0] = Reference(ICD-10-Kolon20181202)
* section.entry[+] = Reference(DateOfIncidence-20181202)
* section.entry[+] = Reference(TNM-StageGroup-20181202)
* section.entry[+] = Reference(ICD-O-3-Morphology-20181202)
* section.entry[+] = Reference(ICD-O-3-Topography-20181202)
* section.entry[+] = Reference(ICD-O-3-Behaviour-20181202)
* section.entry[+] = Reference(ICD-O-3-Laterality-20181202)
* section.entry[+] = Reference(ICD-O-3-HistologicalGrade-20181202)
* section.entry[+] = Reference(y-PrefixOfcTNM-20181202)
* section.entry[+] = Reference(y-PrefixOfpTNM-20181202)
* section.entry[+] = Reference(a-PrefixOfpTNM-20181202)
* section.entry[+] = Reference(m-SuffixOfpT-20181202)
* section.entry[+] = Reference(NumberInvolvedRegionalLymphNodes-20181202)
* section.entry[+] = Reference(NumberExaminedRegionalLymphNodes-20181202)
* section.entry[+] = Reference(LymphaticInvasion-20181202)
* section.entry[+] = Reference(VenousInvasion-20181202)
* section.entry[+] = Reference(PerineuralInvasion-20181202)
* section.entry[+] = Reference(DiagnosticMethod-Endoscopy20181202)
* section.entry[+] = Reference(DiagnosticMethod-Biopsy20181202)
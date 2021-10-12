Instance: CompUC1bPatho20181215
InstanceOf: CHCRLComposition
Title: "CompUC1bPatho20181215"
Description: "Example for Composition"
Usage: #example
* status = #final
* type = $loinc#72134-0 "Cancer event report"
* subject = Reference(RobertMeier)
* date = "2018-12-15T13:00:00+02:00"
* author = Reference(AbteilungPatho)
* title = "Pathologischer Befund"
* section.entry[0] = Reference(ICD-10-Kolon20181215)
* section.entry[+] = Reference(DateOfIncidence-20181215)
* section.entry[+] = Reference(TNM-StageGroup-20181215)
* section.entry[+] = Reference(ICD-O-3-Morphology-20181215)
* section.entry[+] = Reference(ICD-O-3-Topography-20181215)
* section.entry[+] = Reference(ICD-O-3-Behaviour-20181215)
* section.entry[+] = Reference(ICD-O-3-Laterality-20181215)
* section.entry[+] = Reference(ICD-O-3-HistologicalGrade-20181215)
* section.entry[+] = Reference(y-PrefixOfcTNM-20181215)
* section.entry[+] = Reference(y-PrefixOfpTNM-20181215)
* section.entry[+] = Reference(a-PrefixOfpTNM-20181215)
* section.entry[+] = Reference(m-SuffixOfpT-20181215)
* section.entry[+] = Reference(NumberInvolvedRegionalLymphNodes-20181215)
* section.entry[+] = Reference(NumberExaminedRegionalLymphNodes-20181215)
* section.entry[+] = Reference(LymphaticInvasion-20181215)
* section.entry[+] = Reference(VenousInvasion-20181215)
* section.entry[+] = Reference(PerineuralInvasion-20181215)
* section.entry[+] = Reference(DiagnosticMethod-Surgical20181215)
Instance: TNM-StageGroup-20181202
InstanceOf: CHCRLObservationTNMStageGroup
Title: "TNM-StageGroup-20181202"
Description: "Example for Observation"
Usage: #example
* status = #final
* code = $loinc#21914-7 "Stage group.other Cancer"
* subject = Reference(RobertMeier)
* effectiveDateTime = "2018-12-02"
* valueCodeableConcept = $nkrs-tnmstagegroup#I "Stage I"
* hasMember[0] = Reference(cT-20181202)
* hasMember[+] = Reference(cN-20181202)
* hasMember[+] = Reference(cM-20181202)
* hasMember[+] = Reference(pT-20181202)
* hasMember[+] = Reference(pN-20181202)
* hasMember[+] = Reference(pM-20181202)
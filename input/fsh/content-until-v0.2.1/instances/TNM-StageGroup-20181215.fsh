Instance: TNM-StageGroup-20181215
InstanceOf: CHCRLObservationTNMStageGroup
Title: "TNM-StageGroup-2018121"
Description: "Example for Observation"
Usage: #example
* status = #final
* code = $loinc#21914-7 "Stage group.other Cancer"
* subject = Reference(RobertMeier)
* effectiveDateTime = "2018-12-15"
* valueCodeableConcept = $nkrs-tnmstagegroup#IIA "Stage IIA"
* hasMember[0] = Reference(cT-20181215)
* hasMember[+] = Reference(cN-20181215)
* hasMember[+] = Reference(cM-20181215)
* hasMember[+] = Reference(pT-20181215)
* hasMember[+] = Reference(pN-20181215)
* hasMember[+] = Reference(pM-20181215)
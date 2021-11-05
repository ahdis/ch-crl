Instance: TNM-StageGroup
InstanceOf: CHCRLObservationTNMStageGroup
Title: "TNM stage group - Stage IV"
Description: "Example for Observation for the TNM stage group"
Usage: #example
* status = #final
* code = $loinc#21914-7 "Stage group.other Cancer"
* subject = Reference(FranzMinimum)
* effectiveDateTime = "2018-12-15"
* valueCodeableConcept = $nkrs-tnmstagegroup#IV "Stage IV"
* hasMember[0] = Reference(cT)
* hasMember[+] = Reference(cN)
* hasMember[+] = Reference(cM)
* hasMember[+] = Reference(pT)
* hasMember[+] = Reference(pN)
* hasMember[+] = Reference(pM-unknown)
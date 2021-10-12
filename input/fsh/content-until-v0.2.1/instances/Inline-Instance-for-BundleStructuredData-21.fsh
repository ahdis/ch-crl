Instance: Inline-Instance-for-BundleStructuredData-21
InstanceOf: CHCRLObservationTNMStageGroup
Usage: #inline
* id = "TNM-StageGroup"
* meta.versionId = "1"
* meta.lastUpdated = "2019-11-05T12:01:43.084+00:00"
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
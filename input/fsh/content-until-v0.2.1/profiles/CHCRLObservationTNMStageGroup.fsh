Profile: CHCRLObservationTNMStageGroup
Parent: Observation
Id: ch-crl-observation-tnmstagegroup
Title: "CH CRL Observation TNM Stage Group"
Description: "Definition of the Observation for the TNM stage group"
* obeys ch-crl-obs-1
* . ^short = "CH CRL Observation TNM Stage Group"
* code 1..
* code = $loinc#21914-7 "Stage group.other Cancer"
* subject 1..
* subject only Reference(CHCRLPatient)
* subject ^short = "Patient"
* subject.reference 1..
* effectiveDateTime 1..
* performer only Reference(CHCRLPractitioner or CHCRLOrganizationDepartment)
* performer ^short = "Practitioner if resident physician or Organization Department if hospital"
* performer.reference 1..
* valueCodeableConcept from NkrsTnmStageGroup (preferred)
* valueCodeableConcept ^short = "The UICC TNM stage group"
* valueCodeableConcept.coding 1..*
* valueCodeableConcept.coding.system 1..
* valueCodeableConcept.coding.code 1..
* valueCodeableConcept.coding.display 1..
* dataAbsentReason ^short = "The UICC TNM stage group is not applicable or unknown"
* dataAbsentReason.coding obeys ch-crl-obs-3
* dataAbsentReason.coding 1..*
* dataAbsentReason.coding.system 1..
* dataAbsentReason.coding.system = "http://terminology.hl7.org/CodeSystem/data-absent-reason" (exactly)
* dataAbsentReason.coding.code 1..
* dataAbsentReason.coding.code ^short = "If not applicable or TNM classification not defined for this type of cancer than 'value=not-applicable'. 
If not stated / not assessed than 'value=unknown'."
* dataAbsentReason.coding.display 1..
* hasMember ..*
* hasMember only Reference(Observation)
* hasMember ^slicing.discriminator.type = #profile
* hasMember ^slicing.discriminator.path = "resolve()"
* hasMember ^slicing.ordered = false
* hasMember ^slicing.rules = #open
* hasMember contains
    ch-crl-cT 0..1 and
    ch-crl-cN 0..1 and
    ch-crl-cM 0..1 and
    ch-crl-pT 0..1 and
    ch-crl-pN 0..1 and
    ch-crl-pM 0..1
* hasMember[ch-crl-cT] only Reference(CHCRLObservationCT)
* hasMember[ch-crl-cT] ^short = "TNM clinical primary tumor category"
* hasMember[ch-crl-cN] only Reference(CHCRLObservationCN)
* hasMember[ch-crl-cN] ^short = "TNM clinical regional nodes category"
* hasMember[ch-crl-cM] only Reference(CHCRLObservationCM)
* hasMember[ch-crl-cM] ^short = "TNM clinical distant metastases category"
* hasMember[ch-crl-pT] only Reference(CHCRLObservationPT)
* hasMember[ch-crl-pT] ^short = "TNM pathologic primary tumor category"
* hasMember[ch-crl-pN] only Reference(CHCRLObservationPN)
* hasMember[ch-crl-pN] ^short = "TNM pathologic regional nodes category"
* hasMember[ch-crl-pM] only Reference(CHCRLObservationPM)
* hasMember[ch-crl-pM] ^short = "TNM pathologic distant metastases category"
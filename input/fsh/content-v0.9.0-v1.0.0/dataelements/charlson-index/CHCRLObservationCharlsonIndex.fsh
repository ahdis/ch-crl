Profile: CHCRLObservationCharlsonIndex
Parent: Observation
Id: ch-crl-observation-charlsonindex
Title: "CH CRL Observation Charlson Index"
Description: "Definition of the Observation for the Charlson index"
* . ^short = "CH CRL Observation Charlson Index"
* code 1..
* code = $sct#762713009 "Charlson Comorbidity Index (assessment scale)"
* subject 1..
* subject only Reference(CHCRLPatient)
* subject ^short = "Patient"
* subject.reference 1..
* effectiveDateTime 1..
* performer only Reference(CHCRLPractitioner or CHCRLOrganizationDepartment)
* performer ^short = "Practitioner if resident physician or Organization Department if hospital"
* performer.reference 1..

* valueInteger ^short = "The summed scores of all components of the Charlson Index. 
It estimates the combined effect of the Charlson Index components on patient survival."
* valueInteger 1..

/*
* derivedFrom ..*
* derivedFrom only Reference(Observation)
* derivedFrom ^slicing.discriminator.type = #profile
* derivedFrom ^slicing.discriminator.path = "resolve()"
* derivedFrom ^slicing.ordered = false
* derivedFrom ^slicing.rules = #open
* derivedFrom contains
    ch-crl-congestiveHeartFailure 0..1
* derivedFrom[ch-crl-congestiveHeartFailure] only Reference(CHCRLObservationCongestiveHeartFailure)
* derivedFrom[ch-crl-congestiveHeartFailure] ^short = "Congestive heart failure"
*/

Mapping: NICER-B1-for-CHCRLObservationCharlsonIndex
Id: NICER-B1
Title: "NATIONAL CANCER DATA DICTIONARY, V 1.1, Part B1: SUPPLEMENTARY VARIABLES for Adults"
Source: CHCRLObservationCharlsonIndex
Target: "https://www.nacr.ch/assets/files/uploads/b1-datadictionary-supplementaryvariables-adults-v1.1.pdf"
* -> "Charlson Index (Variable number: 10.14)"


Instance: CharlsonIndex-4
InstanceOf: CHCRLObservationCharlsonIndex
Title: "Charlson Index - 4"
Description: "Example for Observation for the Charlson index"
Usage: #example
* status = #final
* code = $sct#762713009 "Charlson Comorbidity Index (assessment scale)"
* subject = Reference(FranzMinimum)
* effectiveDateTime = "2018-12-15"
* valueInteger = 4
// * derivedFrom[ch-crl-congestiveHeartFailure] = Reference(CongestiveHeartFailure-Yes)


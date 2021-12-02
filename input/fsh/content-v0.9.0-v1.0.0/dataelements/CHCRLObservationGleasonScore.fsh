Profile: CHCRLObservationGleasonScore
Parent: Observation
Id: ch-crl-observation-gleasonscore
Title: "CH CRL Observation Gleason Score"
Description: "Definition of the Observation for the gleason score"
* . ^short = "CH CRL Observation Gleason Score"
* code 1..
* code = $loinc#35266-6 "Gleason score in Specimen Qualitative"
* subject 1..
* subject only Reference(CHCRLPatient)
* subject ^short = "Patient"
* subject.reference 1..
* effectiveDateTime 1..
* performer only Reference(CHCRLPractitioner or CHCRLOrganizationDepartment)
* performer ^short = "Practitioner if resident physician or Organization Department if hospital"
* performer.reference 1..

* valueQuantity ^short = "Gleason score comprises the Gleason grade or the most extensive (primary pattern) pattern, 
plus the second most common pattern (secondary pattern), if two are present, or the pattern with the highest Gleason grade, 
if a tumour has more than 2 histological patterns."
* valueQuantity.value 1..

* dataAbsentReason ^short = "The gleason score is unknown"
* dataAbsentReason.coding 1..
* dataAbsentReason.coding.system 1..
* dataAbsentReason.coding.system = "http://terminology.hl7.org/CodeSystem/data-absent-reason" (exactly)
* dataAbsentReason.coding.code 1..
* dataAbsentReason.coding.code = #unknown (exactly)
* dataAbsentReason.coding.display 1..
* dataAbsentReason.coding.display = "Unknown" (exactly)


* hasMember ..*
* hasMember only Reference(Observation)
* hasMember ^slicing.discriminator.type = #profile
* hasMember ^slicing.discriminator.path = "resolve()"
* hasMember ^slicing.ordered = false
* hasMember ^slicing.rules = #open
* hasMember contains
    ch-crl-gleasonBiopsyMostCommonGrade 0..1 and
    ch-crl-gleasonBiopsySecondMostCommonOrHighestGrade 0..1 and
    ch-crl-gleasonExcisionMostCommonGrade 0..1 and
    ch-crl-gleasonExcisionSecondMostCommonOrHighestGrade 0..1 
* hasMember[ch-crl-gleasonBiopsyMostCommonGrade] only Reference(CHCRLObservationCT) // TBD
* hasMember[ch-crl-gleasonBiopsyMostCommonGrade] ^short = "Gleason biopsy most common grade"
* hasMember[ch-crl-gleasonBiopsySecondMostCommonOrHighestGrade] only Reference(CHCRLObservationCN) // TBD
* hasMember[ch-crl-gleasonBiopsySecondMostCommonOrHighestGrade] ^short = "Gleason biopsy second most common or highest grade"
* hasMember[ch-crl-gleasonExcisionMostCommonGrade] only Reference(CHCRLObservationCM) // TBD
* hasMember[ch-crl-gleasonExcisionMostCommonGrade] ^short = "Gleason excision most common grade"
* hasMember[ch-crl-gleasonExcisionSecondMostCommonOrHighestGrade] only Reference(CHCRLObservationPT) // TBD
* hasMember[ch-crl-gleasonExcisionSecondMostCommonOrHighestGrade] ^short = "Gleason excision second most common or highest grade"


Mapping: NICER-A-for-CHCRLObservationGleasonScore
Id: NICER-A
Title: "NATIONAL CANCER DATA DICTIONARY, V 1.1, Part A: BASIC VARIABLES for Adults, Adolescents, and Children"
Source: CHCRLObservationGleasonScore
Target: "https://www.nacr.ch/assets/files/uploads/a-datadictionary-basicvariables-v1.1.pdf"
* -> "Gleason score (Variable number: 5.2.6)"


Instance: GleasonScore-5
InstanceOf: CHCRLObservationGleasonScore
Title: "Gleason Score - 5"
Description: "Example for Observation for the Gleason Score"
Usage: #example
* status = #final
* code = $loinc#35266-6 "Gleason score in Specimen Qualitative"
* subject = Reference(FranzMinimum)
* effectiveDateTime = "2018-12-15"
* valueQuantity.value = 5
//TBD


Instance: GleasonScore-Unknown
InstanceOf: CHCRLObservationGleasonScore
Title: "Gleason Score - Unknown"
Description: "Example for Observation for the Gleason Score"
Usage: #example
* status = #final
* code = $loinc#35266-6 "Gleason score in Specimen Qualitative"
* subject = Reference(FranzMinimum)
* effectiveDateTime = "2018-12-15"
* dataAbsentReason = $data-absent-reason#unknown "Unknown"
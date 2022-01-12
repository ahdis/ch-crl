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

* valueInteger ^short = "Gleason score comprises the Gleason grade or the most extensive (primary pattern) pattern, 
plus the second most common pattern (secondary pattern), if two are present, or the pattern with the highest Gleason grade, 
if a tumour has more than 2 histological patterns."

* dataAbsentReason ^short = "The gleason score is unknown"
* dataAbsentReason.coding 1..
* dataAbsentReason.coding.system 1..
* dataAbsentReason.coding.system = "http://terminology.hl7.org/CodeSystem/data-absent-reason" (exactly)
* dataAbsentReason.coding.code 1..
* dataAbsentReason.coding.code = #unknown (exactly)
* dataAbsentReason.coding.display 1..
* dataAbsentReason.coding.display = "Unknown" (exactly)


* derivedFrom ..*
* derivedFrom only Reference(Observation)
* derivedFrom ^slicing.discriminator.type = #profile
* derivedFrom ^slicing.discriminator.path = "resolve()"
* derivedFrom ^slicing.ordered = false
* derivedFrom ^slicing.rules = #open
* derivedFrom contains
    ch-crl-gleasonBiopsyMostCommonGrade 0..1 and
    ch-crl-gleasonBiopsySecondMostCommonOrHighestGrade 0..1 and
    ch-crl-gleasonExcisionMostCommonGrade 0..1 and
    ch-crl-gleasonExcisionSecondMostCommonOrHighestGrade 0..1 
* derivedFrom[ch-crl-gleasonBiopsyMostCommonGrade] only Reference(CHCRLObservationGleasonBiopsyMostCommonGrade)
* derivedFrom[ch-crl-gleasonBiopsyMostCommonGrade] ^short = "Gleason biopsy most common grade"
* derivedFrom[ch-crl-gleasonBiopsySecondMostCommonOrHighestGrade] only Reference(CHCRLObservationGleasonBiopsySecondMostCommonOrHighestGrade)
* derivedFrom[ch-crl-gleasonBiopsySecondMostCommonOrHighestGrade] ^short = "Gleason biopsy second most common or highest grade"
* derivedFrom[ch-crl-gleasonExcisionMostCommonGrade] only Reference(CHCRLObservationGleasonExcisionMostCommonGrade)
* derivedFrom[ch-crl-gleasonExcisionMostCommonGrade] ^short = "Gleason excision most common grade"
* derivedFrom[ch-crl-gleasonExcisionSecondMostCommonOrHighestGrade] only Reference(CHCRLObservationGleasonExcisionSecondMostCommonOrHighestGrade)
* derivedFrom[ch-crl-gleasonExcisionSecondMostCommonOrHighestGrade] ^short = "Gleason excision second most common or highest grade"


Mapping: NICER-A-for-CHCRLObservationGleasonScore
Id: NICER-A
Title: "NATIONAL CANCER DATA DICTIONARY, V 1.1, Part A: BASIC VARIABLES for Adults, Adolescents, and Children"
Source: CHCRLObservationGleasonScore
Target: "https://www.nacr.ch/assets/files/uploads/a-datadictionary-basicvariables-v1.1.pdf"
* -> "Gleason score (Variable number: 5.2.6)"


Instance: GleasonScore-6
InstanceOf: CHCRLObservationGleasonScore
Title: "Gleason Score - 6"
Description: "Example for Observation for the gleason score"
Usage: #example
* status = #final
* code = $loinc#35266-6 "Gleason score in Specimen Qualitative"
* subject = Reference(FranzMinimum)
* effectiveDateTime = "2018-12-15"
* valueInteger = 6
* derivedFrom[ch-crl-gleasonBiopsyMostCommonGrade] = Reference(GleasonBiopsyMostCommonGrade-2)
* derivedFrom[ch-crl-gleasonBiopsySecondMostCommonOrHighestGrade] = Reference(GleasonBiopsySecondMostCommonOrHighestGrade-3)
* derivedFrom[ch-crl-gleasonExcisionMostCommonGrade] = Reference(GleasonExcisionMostCommonGrade-3)
* derivedFrom[ch-crl-gleasonExcisionSecondMostCommonOrHighestGrade] = Reference(GleasonExcisionSecondMostCommonOrHighestGrade-3)


Instance: GleasonScore-Unknown
InstanceOf: CHCRLObservationGleasonScore
Title: "Gleason Score - Unknown"
Description: "Example for Observation for the gleason score"
Usage: #example
* status = #final
* code = $loinc#35266-6 "Gleason score in Specimen Qualitative"
* subject = Reference(FranzMinimum)
* effectiveDateTime = "2018-12-15"
* dataAbsentReason = $data-absent-reason#unknown "Unknown"
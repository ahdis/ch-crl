Profile: CHCRLObservationGleasonBiopsySecondMostCommonOrHighestGrade
Parent: Observation
Id: ch-crl-observation-gleasonbiopsysecondmostcommonorhighestgrade
Title: "CH CRL Observation Gleason Biopsy Second Most Common or Highest Grade"
Description: "Definition of the Observation for the gleason biopsy second most common or highest grade"
* . ^short = "CH CRL Observation Gleason Biopsy Second Most Common or Highest Grade"
* code 1..
* code = $loinc#44642-7 "Gleason pattern.secondary in Prostate tumor"
* subject 1..
* subject only Reference(CHCRLPatient)
* subject ^short = "Patient"
* subject.reference 1..
* effectiveDateTime 1..
* performer only Reference(CHCRLPractitioner or CHCRLOrganizationDepartment)
* performer ^short = "Practitioner if resident physician or Organization Department if hospital"
* performer.reference 1..

* valueQuantity ^short = "The item Gleason biopsy second most common or highest grade shows Gleason grade 
of the second most common pattern (secondary pattern), or the pattern with the highest Gleason grade in 
biopsy-detected prostate cancer, if a tumour has more than 2 histological patterns."
* valueQuantity.value 1..



Mapping: NICER-A-for-CHCRLObservationGleasonBiopsySecondMostCommonOrHighestGrade
Id: NICER-A
Title: "NATIONAL CANCER DATA DICTIONARY, V 1.1, Part A: BASIC VARIABLES for Adults, Adolescents, and Children"
Source: CHCRLObservationGleasonBiopsySecondMostCommonOrHighestGrade
Target: "https://www.nacr.ch/assets/files/uploads/a-datadictionary-basicvariables-v1.1.pdf"
* -> "Gleason biopsy second most common or highest grade (Variable number: 5.2.3)"


Instance: GleasonBiopsySecondMostCommonOrHighestGrade-3
InstanceOf: CHCRLObservationGleasonBiopsySecondMostCommonOrHighestGrade
Title: "Gleason Biopsy Second Most Common or Highest Grade - 3"
Description: "Example for Observation for the Gleason Biopsy Second Most Common or Highest Grade"
Usage: #example
* status = #final
* code = $loinc#44642-7 "Gleason pattern.secondary in Prostate tumor"
* subject = Reference(FranzMinimum)
* effectiveDateTime = "2018-12-15"
* valueQuantity.value = 3

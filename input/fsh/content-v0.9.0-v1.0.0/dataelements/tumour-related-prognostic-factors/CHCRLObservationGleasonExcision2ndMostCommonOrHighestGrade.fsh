Profile: CHCRLObservationGleasonExcision2ndMostCommonOrHighestGrade
Parent: Observation
Id: ch-crl-observation-gleasonexcision2ndmostcommonorhighestgrade
Title: "CH CRL Observation Gleason Excision Second Most Common or Highest Grade"
Description: "Definition of the Observation for the Gleason excision second most common or highest grade"
* . ^short = "CH CRL Observation Gleason Excision Second Most Common or Highest Grade"
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

* valueInteger ^short = "The item Gleason excision second most common or highest grade shows Gleason grade 
of the second-most common pattern (secondary pattern) or the pattern with the highest Gleason grade in prostate cancer."
* valueInteger 1..

* method 1..
* method = $sct#65801008 "Excision (procedure)"


Mapping: NICER-A-for-CHCRLObservationGleasonExcision2ndMostCommonOrHighestGrade
Id: NICER-A
Title: "NATIONAL CANCER DATA DICTIONARY, V 1.1, Part A: BASIC VARIABLES for Adults, Adolescents, and Children"
Source: CHCRLObservationGleasonExcision2ndMostCommonOrHighestGrade
Target: "https://www.nacr.ch/assets/files/uploads/a-datadictionary-basicvariables-v1.1.pdf"
* -> "Gleason excision second most common or highest grade (Variable number: 5.2.5)"


Instance: GleasonExcisionSecondMostCommonOrHighestGrade-3
InstanceOf: CHCRLObservationGleasonExcision2ndMostCommonOrHighestGrade
Title: "Gleason Excision Second Most Common or Highest Grade - 3"
Description: "Example for Observation for the Gleason excision second most common or highest grade"
Usage: #example
* status = #final
* code = $loinc#44642-7 "Gleason pattern.secondary in Prostate tumor"
* subject = Reference(FranzMinimum)
* effectiveDateTime = "2018-12-15"
* valueInteger = 3
* method = $sct#65801008 "Excision (procedure)"
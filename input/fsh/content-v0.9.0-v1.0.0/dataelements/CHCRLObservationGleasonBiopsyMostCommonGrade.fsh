Profile: CHCRLObservationGleasonBiopsyMostCommonGrade
Parent: Observation
Id: ch-crl-observation-gleasonbiopsymostcommongrade
Title: "CH CRL Observation Gleason Biopsy Most Common Grade"
Description: "Definition of the Observation for the gleason biopsy most common grade"
* . ^short = "CH CRL Observation Gleason Biopsy Most Common Grade"
* code 1..
* code = $loinc#44641-9 "Gleason pattern.primary in Prostate tumor"
* subject 1..
* subject only Reference(CHCRLPatient)
* subject ^short = "Patient"
* subject.reference 1..
* effectiveDateTime 1..
* performer only Reference(CHCRLPractitioner or CHCRLOrganizationDepartment)
* performer ^short = "Practitioner if resident physician or Organization Department if hospital"
* performer.reference 1..

* valueQuantity ^short = "The item Gleason biopsy most common grade shows Gleason grade of the most 
extensive pattern (primary pattern) in biopsy-detected prostate cancer."
* valueQuantity.value 1..

* method 1..
* method = $sct#86273004 "Biopsy (procedure)"


Mapping: NICER-A-for-CHCRLObservationGleasonBiopsyMostCommonGrade
Id: NICER-A
Title: "NATIONAL CANCER DATA DICTIONARY, V 1.1, Part A: BASIC VARIABLES for Adults, Adolescents, and Children"
Source: CHCRLObservationGleasonBiopsyMostCommonGrade
Target: "https://www.nacr.ch/assets/files/uploads/a-datadictionary-basicvariables-v1.1.pdf"
* -> "Gleason biopsy most common grade (Variable number: 5.2.2)"


Instance: GleasonBiopsyMostCommonGrade-2
InstanceOf: CHCRLObservationGleasonBiopsyMostCommonGrade
Title: "Gleason Biopsy Most Common Grade - 2"
Description: "Example for Observation for the Gleason Biopsy Most Common Grade"
Usage: #example
* status = #final
* code = $loinc#44641-9 "Gleason pattern.primary in Prostate tumor"
* subject = Reference(FranzMinimum)
* effectiveDateTime = "2018-12-15"
* valueQuantity.value = 2
* method = $sct#86273004 "Biopsy (procedure)"

Profile: CHCRLObservationGleasonExcisionMostCommonGrade
Parent: Observation
Id: ch-crl-observation-gleasonexcisionmostcommongrade
Title: "CH CRL Observation Gleason Excision Most Common Grade"
Description: "Definition of the Observation for the gleason excision most common grade"
* . ^short = "CH CRL Observation Gleason Excision Most Common Grade"
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

* valueQuantity ^short = "The item Gleason excision most common grade shows Gleason grade of the most 
extensive pattern (primary pattern) in prostate cancer."
* valueQuantity.value 1..



Mapping: NICER-A-for-CHCRLObservationGleasonExcisionMostCommonGrade
Id: NICER-A
Title: "NATIONAL CANCER DATA DICTIONARY, V 1.1, Part A: BASIC VARIABLES for Adults, Adolescents, and Children"
Source: CHCRLObservationGleasonExcisionMostCommonGrade
Target: "https://www.nacr.ch/assets/files/uploads/a-datadictionary-basicvariables-v1.1.pdf"
* -> "Gleason excision most common grade (Variable number: 5.2.4)"


Instance: GleasonExcisionMostCommonGrade-3
InstanceOf: CHCRLObservationGleasonExcisionMostCommonGrade
Title: "Gleason Excision Most Common Grade - 3"
Description: "Example for Observation for the Gleason Excision Most Common Grade"
Usage: #example
* status = #final
* code = $loinc#44641-9 "Gleason pattern.primary in Prostate tumor"
* subject = Reference(FranzMinimum)
* effectiveDateTime = "2018-12-15"
* valueQuantity.value = 3

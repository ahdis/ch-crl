Profile: CHCRLObservationHPVp16
Parent: Observation
Id: ch-crl-observation-hpvp16
Title: "CH CRL Observation HPV/p16"
Description: "Definition of the Observation for the HPV/p16"
* . ^short = "CH CRL Observation HPV/p16"
* code 1..
* code = $loinc#49896-4 "Human papilloma virus 16+18+31+33+35+39+45+51+52+56+58+59+68 DNA [Presence] in Specimen by NAA with probe detection"
* subject 1..
* subject only Reference(CHCRLPatient)
* subject ^short = "Patient"
* subject.reference 1..
* effectiveDateTime 1..
* performer only Reference(CHCRLPractitioner or CHCRLOrganizationDepartment)
* performer ^short = "Practitioner if resident physician or Organization Department if hospital"
* performer.reference 1..

* valueBoolean 0..1
* valueBoolean ^short = "HPV (Human papillomavirus) positivity is defined as showing either evidence of HPV gene expression 
(tested with p16 immunohistochemistry) or HPV DNA, or both. 
If HPV- or p16-negative then 'value=false', 
if HPV- or p16-positive then 'value=true'."

* dataAbsentReason ^short = "HPV or p16 is not stated / not assessed"
* dataAbsentReason.coding 1..*
* dataAbsentReason.coding.system 1..
* dataAbsentReason.coding.system = "http://terminology.hl7.org/CodeSystem/data-absent-reason" (exactly)
* dataAbsentReason.coding.code 1..
* dataAbsentReason.coding.code = #unknown (exactly)
* dataAbsentReason.coding.display 1..
* dataAbsentReason.coding.display = "Unknown" (exactly)


Mapping: NICER-A-for-CHCRLObservationHPVp16
Id: NICER-A
Title: "NATIONAL CANCER DATA DICTIONARY, V 1.1, Part A: BASIC VARIABLES for Adults, Adolescents, and Children"
Source: CHCRLObservationHPVp16
Target: "https://www.nacr.ch/assets/files/uploads/a-datadictionary-basicvariables-v1.1.pdf"
* -> "HPV/p16 (Variable number: 5.6.1)"


Instance: HPVp16-No
InstanceOf: CHCRLObservationHPVp16
Title: "HPV/p16 - No"
Description: "Example for Observation for the HPV/p16"
Usage: #example
* status = #final
* code = $loinc#49896-4 "Human papilloma virus 16+18+31+33+35+39+45+51+52+56+58+59+68 DNA [Presence] in Specimen by NAA with probe detection"
* subject = Reference(FranzMinimum)
* effectiveDateTime = "2018-12-15"
* valueBoolean = false

Instance: HPVp16-Yes
InstanceOf: CHCRLObservationHPVp16
Title: "HPV/p16 - Yes"
Description: "Example for Observation for the HPV/p16"
Usage: #example
* status = #final
* code = $loinc#49896-4 "Human papilloma virus 16+18+31+33+35+39+45+51+52+56+58+59+68 DNA [Presence] in Specimen by NAA with probe detection"
* subject = Reference(FranzMinimum)
* effectiveDateTime = "2018-12-15"
* valueBoolean = true

Instance: HPVp16-Unknown
InstanceOf: CHCRLObservationHPVp16
Title: "HPV/p16 - Unknown"
Description: "Example for Observation for the HPV/p16"
Usage: #example
* status = #final
* code = $loinc#49896-4 "Human papilloma virus 16+18+31+33+35+39+45+51+52+56+58+59+68 DNA [Presence] in Specimen by NAA with probe detection"
* subject = Reference(FranzMinimum)
* effectiveDateTime = "2018-12-15"
* dataAbsentReason = $data-absent-reason#unknown "Unknown"
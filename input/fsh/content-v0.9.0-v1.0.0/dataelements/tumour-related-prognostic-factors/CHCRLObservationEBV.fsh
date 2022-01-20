Profile: CHCRLObservationEBV
Parent: Observation
Id: ch-crl-observation-ebv
Title: "CH CRL Observation EBV"
Description: "Definition of the Observation for the EBV"
* obeys ch-crl-obs-1
* . ^short = "CH CRL Observation EBV"
* code 1..
* code = $loinc#5005-4 "Epstein Barr virus DNA [Presence] in Specimen by NAA with probe detection"
* subject 1..
* subject only Reference(CHCRLPatient)
* subject ^short = "Patient"
* subject.reference 1..
* effectiveDateTime 1..
* performer only Reference(CHCRLPractitioner or CHCRLOrganizationDepartment)
* performer ^short = "Practitioner if resident physician or Organization Department if hospital"
* performer.reference 1..

* valueBoolean ^short = "EBV (Epstein Barr virus) positivity is defined as showing evidence of EBV 
antigen in a blood test, or EBV DNA or RNA by polymerase chain reaction. 
If EBV-negative then 'value=false', 
if EBV-positive then 'value=true'."

* dataAbsentReason ^short = "EBV is not stated / not assessed"
* dataAbsentReason.coding 1..*
* dataAbsentReason.coding.system 1..
* dataAbsentReason.coding.system = "http://terminology.hl7.org/CodeSystem/data-absent-reason" (exactly)
* dataAbsentReason.coding.code 1..
* dataAbsentReason.coding.code = #unknown (exactly)
* dataAbsentReason.coding.display 1..
* dataAbsentReason.coding.display = "Unknown" (exactly)


Mapping: NICER-A-for-CHCRLObservationEBV
Id: NICER-A
Title: "NATIONAL CANCER DATA DICTIONARY, V 1.1, Part A: BASIC VARIABLES for Adults, Adolescents, and Children"
Source: CHCRLObservationEBV
Target: "https://www.nacr.ch/assets/files/uploads/a-datadictionary-basicvariables-v1.1.pdf"
* -> "EBV (Variable number: 5.6.2)"


Instance: EBV-No
InstanceOf: CHCRLObservationEBV
Title: "EBV - No"
Description: "Example for Observation for the EBV"
Usage: #example
* status = #final
* code = $loinc#5005-4 "Epstein Barr virus DNA [Presence] in Specimen by NAA with probe detection"
* subject = Reference(FranzMinimum)
* effectiveDateTime = "2018-12-15"
* valueBoolean = false

Instance: EBV-Yes
InstanceOf: CHCRLObservationEBV
Title: "EBV - Yes"
Description: "Example for Observation for the EBV"
Usage: #example
* status = #final
* code = $loinc#5005-4 "Epstein Barr virus DNA [Presence] in Specimen by NAA with probe detection"
* subject = Reference(FranzMinimum)
* effectiveDateTime = "2018-12-15"
* valueBoolean = true

Instance: EBV-Unknown
InstanceOf: CHCRLObservationEBV
Title: "EBV - Unknown"
Description: "Example for Observation for the EBV"
Usage: #example
* status = #final
* code = $loinc#5005-4 "Epstein Barr virus DNA [Presence] in Specimen by NAA with probe detection"
* subject = Reference(FranzMinimum)
* effectiveDateTime = "2018-12-15"
* dataAbsentReason = $data-absent-reason#unknown "Unknown"
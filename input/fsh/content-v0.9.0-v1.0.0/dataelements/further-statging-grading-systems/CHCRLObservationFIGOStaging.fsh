Profile: CHCRLObservationFIGOStaging
Parent: Observation
Id: ch-crl-observation-figostaging
Title: "CH CRL Observation FIGO Staging"
Description: "Definition of the Observation for the FIGO staging"
* obeys ch-crl-obs-1
* . ^short = "CH CRL Observation FIGO Staging"
* code 1..
* code = $nkrs-variables#4.21 "FIGO staging"
* subject 1..
* subject only Reference(CHCRLPatient)
* subject ^short = "Patient"
* subject.reference 1..
* effectiveDateTime 1..
* performer only Reference(CHCRLPractitioner or CHCRLOrganizationDepartment)
* performer ^short = "Practitioner if resident physician or Organization Department if hospital"
* performer.reference 1..

* valueCodeableConcept obeys nkrs-figostaging
* valueCodeableConcept from NkrsFIGOStaging (preferred)
* valueCodeableConcept ^short = "FIGO Staging of gynecologic tumours is based on clinical staging, careful clinical examination before therapy, and surgical exploration."
* valueCodeableConcept.coding 1..*
* valueCodeableConcept.coding.system 1..
* valueCodeableConcept.coding.code 1..
* valueCodeableConcept.coding.display 1..

* dataAbsentReason ^short = "The FIGO Staging of gynecologic tumours is not stated / not assessed"
* dataAbsentReason.coding 1..*
* dataAbsentReason.coding.system 1..
* dataAbsentReason.coding.system = "http://terminology.hl7.org/CodeSystem/data-absent-reason" (exactly)
* dataAbsentReason.coding.code 1..
* dataAbsentReason.coding.code = #unknown (exactly)
* dataAbsentReason.coding.display 1..
* dataAbsentReason.coding.display = "Unknown" (exactly)


Mapping: NICER-A-for-CHCRLObservationFIGOStaging
Id: NICER-A
Title: "NATIONAL CANCER DATA DICTIONARY, V 1.1, Part A: BASIC VARIABLES for Adults, Adolescents, and Children"
Source: CHCRLObservationFIGOStaging
Target: "https://www.nacr.ch/assets/files/uploads/a-datadictionary-basicvariables-v1.1.pdf"
* -> "FIGO staging (Variable number: 4.21)"


Instance: FIGOStaging-I
InstanceOf: CHCRLObservationFIGOStaging
Title: "FIGO Staging - I"
Description: "Example for Observation for the FIGO staging"
Usage: #example
* status = #final
* code = $nkrs-variables#4.21 "FIGO staging"
* subject = Reference(FranzMinimum)
* effectiveDateTime = "2018-12-15"
* valueCodeableConcept = $nkrs-figostaging#I "Stage I"

Instance: FIGOStaging-IIIA1i
InstanceOf: CHCRLObservationFIGOStaging
Title: "FIGO Staging - IIIA1i"
Description: "Example for Observation for the FIGO staging"
Usage: #example
* status = #final
* code = $nkrs-variables#4.21 "FIGO staging"
* subject = Reference(FranzMinimum)
* effectiveDateTime = "2018-12-15"
* valueCodeableConcept = $nkrs-figostaging#IIIA1i "Stage IIIA1i"

Instance: FIGOStaging-Unknown
InstanceOf: CHCRLObservationFIGOStaging
Title: "FIGO Staging - Unknown"
Description: "Example for Observation for the FIGO staging"
Usage: #example
* status = #final
* code = $nkrs-variables#4.21 "FIGO staging"
* subject = Reference(FranzMinimum)
* effectiveDateTime = "2018-12-15"
* dataAbsentReason = $data-absent-reason#unknown "Unknown"

/*
Instance: FIGOStaging-WrongExample
InstanceOf: CHCRLObservationFIGOStaging
Title: "FIGO Staging - Wrong Example"
Description: "Example for Observation for the FIGO staging"
Usage: #example
* status = #final
* code = $nkrs-variables#4.21 "FIGO staging"
* subject = Reference(FranzMinimum)
* effectiveDateTime = "2018-12-15"
// value[x] or dataAbsentReason is missing
*/

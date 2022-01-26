Profile: CHCRLObservationWHOGradeGroup
Parent: Observation
Id: ch-crl-observation-whogradegroup
Title: "CH CRL Observation WHO Grade Group"
Description: "Definition of the Observation for the WHO grade group"
* obeys ch-crl-obs-1
* . ^short = "CH CRL Observation WHO Grade Group"
* code 1..
* code = $sct#397005006 "World Health Organization tumor classification (observable entity)"
* subject 1..
* subject only Reference(CHCRLPatient)
* subject ^short = "Patient"
* subject.reference 1..
* effectiveDateTime 1..
* performer only Reference(CHCRLPractitioner or CHCRLOrganizationDepartment)
* performer ^short = "Practitioner if resident physician or Organization Department if hospital"
* performer.reference 1..

* valueCodeableConcept from NkrsWHOGradeGroup (required)
* valueCodeableConcept ^short = "A five-grade group system based on the grading categories from Gleason score 2 to 10."
* valueCodeableConcept.coding 1..*
* valueCodeableConcept.coding.system 1..
* valueCodeableConcept.coding.code 1..
* valueCodeableConcept.coding.display 1..

* dataAbsentReason ^short = "The WHO grade group is not stated / not assessed"
* dataAbsentReason.coding 1..
* dataAbsentReason.coding.system 1..
* dataAbsentReason.coding.system = "http://terminology.hl7.org/CodeSystem/data-absent-reason" (exactly)
* dataAbsentReason.coding.code 1..
* dataAbsentReason.coding.code = #unknown (exactly)
* dataAbsentReason.coding.display 1..
* dataAbsentReason.coding.display = "Unknown" (exactly)


Mapping: NICER-A-for-CHCRLObservationWHOGradeGroup
Id: NICER-A
Title: "NATIONAL CANCER DATA DICTIONARY, V 1.1, Part A: BASIC VARIABLES for Adults, Adolescents, and Children"
Source: CHCRLObservationWHOGradeGroup
Target: "https://www.nacr.ch/assets/files/uploads/a-datadictionary-basicvariables-v1.1.pdf"
* -> "WHO grade group (Variable number: 5.2.7)"


Instance: WHOGradeGroup-GradeGroup2
InstanceOf: CHCRLObservationWHOGradeGroup
Title: "WHO Grade Group - Grade Group 2"
Description: "Example for Observation for the WHO grade group"
Usage: #example
* status = #final
* code = $sct#397005006 "World Health Organization tumor classification (observable entity)"
* subject = Reference(FranzMinimum)
* effectiveDateTime = "2018-12-15"
* valueCodeableConcept = $nkrs-whogradegroup#2 "Grade group 2"


Instance: WHOGradeGroup-Unknown
InstanceOf: CHCRLObservationWHOGradeGroup
Title: "WHO Grade Group - Unknown"
Description: "Example for Observation for the WHO grade group"
Usage: #example
* status = #final
* code = $sct#397005006 "World Health Organization tumor classification (observable entity)"
* subject = Reference(FranzMinimum)
* effectiveDateTime = "2018-12-15"
* dataAbsentReason = $data-absent-reason#unknown "Unknown"
Profile: CHCRLObservationWHOCNSGradingSystem
Parent: Observation
Id: ch-crl-observation-whocnsgradingsystem
Title: "CH CRL Observation WHO(CNS) Grading System"
Description: "Definition of the Observation for the WHO(CNS) grading system"
* obeys ch-crl-obs-1
* . ^short = "CH CRL Observation WHO(CNS) Grading System"
* code 1..
* code = $sct#277460003	"World Health Organization central nervous system tumor grading system (staging scale)"

* subject 1..
* subject only Reference(CHCRLPatient)
* subject ^short = "Patient"
* subject.reference 1..
* effectiveDateTime 1..
* performer only Reference(CHCRLPractitioner or CHCRLOrganizationDepartment)
* performer ^short = "Practitioner if resident physician or Organization Department if hospital"
* performer.reference 1..

* valueCodeableConcept from NkrsWHOCNSGradingSystem (preferred)
* valueCodeableConcept ^short = "Primary brain tumours are grouped according to the WHO classification based on the cell of origin, and the histological aggressiveness."
* valueCodeableConcept.coding 1..*
* valueCodeableConcept.coding.system 1..
* valueCodeableConcept.coding.code 1..
* valueCodeableConcept.coding.display 1..

* dataAbsentReason ^short = "The WHO classification is not stated / not assessed"
* dataAbsentReason.coding 1..*
* dataAbsentReason.coding.system 1..
* dataAbsentReason.coding.system = "http://terminology.hl7.org/CodeSystem/data-absent-reason" (exactly)
* dataAbsentReason.coding.code 1..
* dataAbsentReason.coding.code = #unknown (exactly)
* dataAbsentReason.coding.display 1..
* dataAbsentReason.coding.display = "Unknown" (exactly)


Mapping: NICER-A-for-CHCRLObservationWHOCNSGradingSystem
Id: NICER-A
Title: "NATIONAL CANCER DATA DICTIONARY, V 1.1, Part A: BASIC VARIABLES for Adults, Adolescents, and Children"
Source: CHCRLObservationWHOCNSGradingSystem
Target: "https://www.nacr.ch/assets/files/uploads/a-datadictionary-basicvariables-v1.1.pdf"
* -> "WHO(CNS) grading system (Variable number: 4.38)"


Instance: WHOCNSGradingSystem-3
InstanceOf: CHCRLObservationWHOCNSGradingSystem
Title: "WHO(CNS) Grading System - 3"
Description: "Example for Observation for the WHO(CNS) grading system"
Usage: #example
* status = #final
* code = $sct#277460003	"World Health Organization central nervous system tumor grading system (staging scale)"
* subject = Reference(FranzMinimum)
* effectiveDateTime = "2018-12-15"
* valueCodeableConcept = $sct#396924002 "World Health Organization grade III central nervous system tumor (finding)"

Instance: WHOCNSGradingSystem-Unknown
InstanceOf: CHCRLObservationWHOCNSGradingSystem
Title: "WHO(CNS) Grading System - Unknown"
Description: "Example for Observation for the WHO(CNS) grading system"
Usage: #example
* status = #final
* code = $sct#277460003	"World Health Organization central nervous system tumor grading system (staging scale)"
* subject = Reference(FranzMinimum)
* effectiveDateTime = "2018-12-15"
* dataAbsentReason = $data-absent-reason#unknown "Unknown"

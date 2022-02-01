Profile: CHCRLObservationElstonEllisGradingSystem
Parent: Observation
Id: ch-crl-observation-elstonellisgradingsystem
Title: "CH CRL Observation Elston/Ellis Grading System"
Description: "Definition of the Observation for the Elston/Ellis grading system"
* obeys ch-crl-obs-1
* . ^short = "CH CRL Observation Elston/Ellis Grading System"
* code 1..
* code = $nkrs-variables#4.35 "Elston/Ellis grading system"
* subject 1..
* subject only Reference(CHCRLPatient)
* subject ^short = "Patient"
* subject.reference 1..
* effectiveDateTime 1..
* performer only Reference(CHCRLPractitioner or CHCRLOrganizationDepartment)
* performer ^short = "Practitioner if resident physician or Organization Department if hospital"
* performer.reference 1..

* valueCodeableConcept from NkrsElstonEllisGradingSystem (preferred)
* valueCodeableConcept ^short = "The histopathological grade for breast cancer. It is also called the Nottingham Histological Score."
* valueCodeableConcept.coding 1..*
* valueCodeableConcept.coding.system 1..
* valueCodeableConcept.coding.code 1..
* valueCodeableConcept.coding.display 1..

* dataAbsentReason ^short = "The histopathological grade for breast cancer is not stated / not assessed"
* dataAbsentReason.coding 1..*
* dataAbsentReason.coding.system 1..
* dataAbsentReason.coding.system = "http://terminology.hl7.org/CodeSystem/data-absent-reason" (exactly)
* dataAbsentReason.coding.code 1..
* dataAbsentReason.coding.code = #unknown (exactly)
* dataAbsentReason.coding.display 1..
* dataAbsentReason.coding.display = "Unknown" (exactly)


Mapping: NICER-A-for-CHCRLObservationElstonEllisGradingSystem
Id: NICER-A
Title: "NATIONAL CANCER DATA DICTIONARY, V 1.1, Part A: BASIC VARIABLES for Adults, Adolescents, and Children"
Source: CHCRLObservationElstonEllisGradingSystem
Target: "https://www.nacr.ch/assets/files/uploads/a-datadictionary-basicvariables-v1.1.pdf"
* -> "Elston/Ellis grading system (Variable number: 4.35)"


Instance: ElstonEllisGradingSystem-2
InstanceOf: CHCRLObservationElstonEllisGradingSystem
Title: "Elston/Ellis Grading System - 2"
Description: "Example for Observation for the Elston/Ellis grading system"
Usage: #example
* status = #final
* code = $nkrs-variables#4.35 "Elston/Ellis grading system"
* subject = Reference(FranzMinimum)
* effectiveDateTime = "2018-12-15"
* valueCodeableConcept = $nkrs-elstonellisgradingsystem#2 "grade II"

Instance: ElstonEllisGradingSystem-Unknown
InstanceOf: CHCRLObservationElstonEllisGradingSystem
Title: "Elston/Ellis Grading System - Unknown"
Description: "Example for Observation for the Elston/Ellis grading system"
Usage: #example
* status = #final
* code = $nkrs-variables#4.35 "Elston/Ellis grading system"
* subject = Reference(FranzMinimum)
* effectiveDateTime = "2018-12-15"
* dataAbsentReason = $data-absent-reason#unknown "Unknown"

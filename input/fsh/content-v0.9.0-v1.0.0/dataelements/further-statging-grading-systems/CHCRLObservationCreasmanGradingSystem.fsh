Profile: CHCRLObservationCreasmanGradingSystem
Parent: Observation
Id: ch-crl-observation-creasmangradingsystem
Title: "CH CRL Observation Creasman Grading System"
Description: "Definition of the Observation for the Creasman grading system"
* obeys ch-crl-obs-1
* . ^short = "CH CRL Observation Creasman Grading System"
* code 1..
* code = $nkrs-variables#4.34 "Creasman grading system"
* subject 1..
* subject only Reference(CHCRLPatient)
* subject ^short = "Patient"
* subject.reference 1..
* effectiveDateTime 1..
* performer only Reference(CHCRLPractitioner or CHCRLOrganizationDepartment)
* performer ^short = "Practitioner if resident physician or Organization Department if hospital"
* performer.reference 1..

* valueCodeableConcept from NkrsCreasmanGradingSystem (preferred)
* valueCodeableConcept ^short = "The histopathological grade for uterine or endometrial cancer."
* valueCodeableConcept.coding 1..*
* valueCodeableConcept.coding.system 1..
* valueCodeableConcept.coding.code 1..
* valueCodeableConcept.coding.display 1..

* dataAbsentReason ^short = "The histopathological grade for uterine or endometrial cancer is not stated / not assessed"
* dataAbsentReason.coding 1..*
* dataAbsentReason.coding.system 1..
* dataAbsentReason.coding.system = "http://terminology.hl7.org/CodeSystem/data-absent-reason" (exactly)
* dataAbsentReason.coding.code 1..
* dataAbsentReason.coding.code = #unknown (exactly)
* dataAbsentReason.coding.display 1..
* dataAbsentReason.coding.display = "Unknown" (exactly)


Mapping: NICER-A-for-CHCRLObservationCreasmanGradingSystem
Id: NICER-A
Title: "NATIONAL CANCER DATA DICTIONARY, V 1.1, Part A: BASIC VARIABLES for Adults, Adolescents, and Children"
Source: CHCRLObservationCreasmanGradingSystem
Target: "https://www.nacr.ch/assets/files/uploads/a-datadictionary-basicvariables-v1.1.pdf"
* -> "Creasman grading system (Variable number: 4.34)"


Instance: CreasmanGradingSystem-1
InstanceOf: CHCRLObservationCreasmanGradingSystem
Title: "Creasman Grading System - 1"
Description: "Example for Observation for the Creasman grading system"
Usage: #example
* status = #final
* code = $nkrs-variables#4.34 "Creasman grading system"
* subject = Reference(FranzMinimum)
* effectiveDateTime = "2018-12-15"
* valueCodeableConcept = $nkrs-creasmangradingsystem#1 "G1"

Instance: CreasmanGradingSystem-Unknown
InstanceOf: CHCRLObservationCreasmanGradingSystem
Title: "Creasman Grading System - Unknown"
Description: "Example for Observation for the Creasman grading system"
Usage: #example
* status = #final
* code = $nkrs-variables#4.34 "Creasman grading system"
* subject = Reference(FranzMinimum)
* effectiveDateTime = "2018-12-15"
* dataAbsentReason = $data-absent-reason#unknown "Unknown"

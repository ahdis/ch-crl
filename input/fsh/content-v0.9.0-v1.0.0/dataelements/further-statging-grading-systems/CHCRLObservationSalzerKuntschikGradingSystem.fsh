Profile: CHCRLObservationSalzerKuntschikGradingSystem
Parent: Observation
Id: ch-crl-observation-salzerkuntschikgradingsystem
Title: "CH CRL Observation SalzerKuntschik Grading System"
Description: "Definition of the Observation for the SalzerKuntschik grading system"
* obeys ch-crl-obs-1
* . ^short = "CH CRL Observation SalzerKuntschik Grading System"
* code 1..
* code = $nkrs-variables#4.36 "SalzerKuntschik grading system"
* subject 1..
* subject only Reference(CHCRLPatient)
* subject ^short = "Patient"
* subject.reference 1..
* effectiveDateTime 1..
* performer only Reference(CHCRLPractitioner or CHCRLOrganizationDepartment)
* performer ^short = "Practitioner if resident physician or Organization Department if hospital"
* performer.reference 1..

* valueCodeableConcept obeys nkrs-salzerkuntschikgradingsystem
* valueCodeableConcept from NkrsSalzerKuntschikGradingSystem (preferred)
* valueCodeableConcept ^short = "The grade of morphological regression for malignant bone tumour in children after chemotherapy."
* valueCodeableConcept.coding 1..*
* valueCodeableConcept.coding.system 1..
* valueCodeableConcept.coding.code 1..
* valueCodeableConcept.coding.display 1..

* dataAbsentReason ^short = "The grade of morphological regression for malignant bone tumour in children after chemotherapy is not stated / not assessed"
* dataAbsentReason.coding 1..*
* dataAbsentReason.coding.system 1..
* dataAbsentReason.coding.system = "http://terminology.hl7.org/CodeSystem/data-absent-reason" (exactly)
* dataAbsentReason.coding.code 1..
* dataAbsentReason.coding.code = #unknown (exactly)
* dataAbsentReason.coding.display 1..
* dataAbsentReason.coding.display = "Unknown" (exactly)


Mapping: NICER-A-for-CHCRLObservationSalzerKuntschikGradingSystem
Id: NICER-A
Title: "NATIONAL CANCER DATA DICTIONARY, V 1.1, Part A: BASIC VARIABLES for Adults, Adolescents, and Children"
Source: CHCRLObservationSalzerKuntschikGradingSystem
Target: "https://www.nacr.ch/assets/files/uploads/a-datadictionary-basicvariables-v1.1.pdf"
* -> "SalzerKuntschik grading system (Variable number: 4.36)"


Instance: SalzerKuntschikGradingSystem-1
InstanceOf: CHCRLObservationSalzerKuntschikGradingSystem
Title: "SalzerKuntschik Grading System - 1"
Description: "Example for Observation for the SalzerKuntschik grading system"
Usage: #example
* status = #final
* code = $nkrs-variables#4.36 "SalzerKuntschik grading system"
* subject = Reference(FranzMinimum)
* effectiveDateTime = "2018-12-15"
* valueCodeableConcept = $nkrs-salzerkuntschikgradingsystem#1 "I"

Instance: SalzerKuntschikGradingSystem-Unknown
InstanceOf: CHCRLObservationSalzerKuntschikGradingSystem
Title: "SalzerKuntschik Grading System - Unknown"
Description: "Example for Observation for the SalzerKuntschik grading system"
Usage: #example
* status = #final
* code = $nkrs-variables#4.36 "SalzerKuntschik grading system"
* subject = Reference(FranzMinimum)
* effectiveDateTime = "2018-12-15"
* dataAbsentReason = $data-absent-reason#unknown "Unknown"

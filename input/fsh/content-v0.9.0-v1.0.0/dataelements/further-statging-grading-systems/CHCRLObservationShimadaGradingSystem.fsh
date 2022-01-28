Profile: CHCRLObservationShimadaGradingSystem
Parent: Observation
Id: ch-crl-observation-shimadagradingsystem
Title: "CH CRL Observation Shimada Grading System"
Description: "Definition of the Observation for the Shimada grading system"
* obeys ch-crl-obs-1
* . ^short = "CH CRL Observation Shimada Grading System"
* code 1..
* code = $nkrs-variables#4.37 "Shimada grading system"
* subject 1..
* subject only Reference(CHCRLPatient)
* subject ^short = "Patient"
* subject.reference 1..
* effectiveDateTime 1..
* performer only Reference(CHCRLPractitioner or CHCRLOrganizationDepartment)
* performer ^short = "Practitioner if resident physician or Organization Department if hospital"
* performer.reference 1..

* valueCodeableConcept from NkrsShimadaGradingSystem (required)
* valueCodeableConcept ^short = "The grade for neuroblastoma, a frequent childhood cancer. Based on a grade of neuroblastic differentiation and mitosis-karyorrhexis index [MKI]) along with patient age at the time of diagnosis."
* valueCodeableConcept.coding 1..*
* valueCodeableConcept.coding.system 1..
* valueCodeableConcept.coding.code 1..
* valueCodeableConcept.coding.display 1..

* dataAbsentReason ^short = "The grade for neuroblastoma is not stated / not assessed"
* dataAbsentReason.coding 1..*
* dataAbsentReason.coding.system 1..
* dataAbsentReason.coding.system = "http://terminology.hl7.org/CodeSystem/data-absent-reason" (exactly)
* dataAbsentReason.coding.code 1..
* dataAbsentReason.coding.code = #unknown (exactly)
* dataAbsentReason.coding.display 1..
* dataAbsentReason.coding.display = "Unknown" (exactly)


Mapping: NICER-A-for-CHCRLObservationShimadaGradingSystem
Id: NICER-A
Title: "NATIONAL CANCER DATA DICTIONARY, V 1.1, Part A: BASIC VARIABLES for Adults, Adolescents, and Children"
Source: CHCRLObservationShimadaGradingSystem
Target: "https://www.nacr.ch/assets/files/uploads/a-datadictionary-basicvariables-v1.1.pdf"
* -> "Shimada grading system (Variable number: 4.37)"


Instance: ShimadaGradingSystem-1
InstanceOf: CHCRLObservationShimadaGradingSystem
Title: "Shimada Grading System - 1"
Description: "Example for Observation for the Shimada grading system"
Usage: #example
* status = #final
* code = $nkrs-variables#4.37 "Shimada grading system"
* subject = Reference(FranzMinimum)
* effectiveDateTime = "2018-12-15"
* valueCodeableConcept = $nkrs-shimadagradingsystem#1 "Favourable Histology"

Instance: ShimadaGradingSystem-Unknown
InstanceOf: CHCRLObservationShimadaGradingSystem
Title: "Shimada Grading System - Unknown"
Description: "Example for Observation for the Shimada grading system"
Usage: #example
* status = #final
* code = $nkrs-variables#4.37 "Shimada grading system"
* subject = Reference(FranzMinimum)
* effectiveDateTime = "2018-12-15"
* dataAbsentReason = $data-absent-reason#unknown "Unknown"

Profile: CHCRLObservationIRSSStaging
Parent: Observation
Id: ch-crl-observation-irssstaging
Title: "CH CRL Observation IRSS Staging"
Description: "Definition of the Observation for the IRSS staging"
* obeys ch-crl-obs-1
* . ^short = "CH CRL Observation IRSS Staging"
* code 1..
* code = $nkrs-variables#4.23 "IRSS staging"
* subject 1..
* subject only Reference(CHCRLPatient)
* subject ^short = "Patient"
* subject.reference 1..
* effectiveDateTime 1..
* performer only Reference(CHCRLPractitioner or CHCRLOrganizationDepartment)
* performer ^short = "Practitioner if resident physician or Organization Department if hospital"
* performer.reference 1..

* valueCodeableConcept from NkrsIRSSStaging (required)
* valueCodeableConcept ^short = "The paediatric International Retinoblastoma Staging System is based on extent of disease and the presence of overt extra-ocular extension after enucleation."
* valueCodeableConcept.coding 1..*
* valueCodeableConcept.coding.system 1..
* valueCodeableConcept.coding.code 1..
* valueCodeableConcept.coding.display 1..

* dataAbsentReason ^short = "The paediatric stage classification of the IRSS is not stated / not assessed"
* dataAbsentReason.coding 1..*
* dataAbsentReason.coding.system 1..
* dataAbsentReason.coding.system = "http://terminology.hl7.org/CodeSystem/data-absent-reason" (exactly)
* dataAbsentReason.coding.code 1..
* dataAbsentReason.coding.code = #unknown (exactly)
* dataAbsentReason.coding.display 1..
* dataAbsentReason.coding.display = "Unknown" (exactly)


Mapping: NICER-A-for-CHCRLObservationIRSSStaging
Id: NICER-A
Title: "NATIONAL CANCER DATA DICTIONARY, V 1.1, Part A: BASIC VARIABLES for Adults, Adolescents, and Children"
Source: CHCRLObservationIRSSStaging
Target: "https://www.nacr.ch/assets/files/uploads/a-datadictionary-basicvariables-v1.1.pdf"
* -> "IRSS staging (Variable number: 4.23)"


Instance: IRSSStaging-cIVa1
InstanceOf: CHCRLObservationIRSSStaging
Title: "IRSS Staging - cIVa.1"
Description: "Example for Observation for the IRSS staging"
Usage: #example
* status = #final
* code = $nkrs-variables#4.23 "IRSS staging"
* subject = Reference(FranzMinimum)
* effectiveDateTime = "2018-12-15"
* valueCodeableConcept = $nkrs-irssstaging#cIVa.1 "cStage IVa.1"


Instance: IRSSStaging-Unknown
InstanceOf: CHCRLObservationIRSSStaging
Title: "IRSS Staging - Unknown"
Description: "Example for Observation for the IRSS staging"
Usage: #example
* status = #final
* code = $nkrs-variables#4.23 "IRSS staging"
* subject = Reference(FranzMinimum)
* effectiveDateTime = "2018-12-15"
* dataAbsentReason = $data-absent-reason#unknown "Unknown"



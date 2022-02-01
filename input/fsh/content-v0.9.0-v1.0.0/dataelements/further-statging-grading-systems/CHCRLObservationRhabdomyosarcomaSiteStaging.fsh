Profile: CHCRLObservationRhabdomyosarcomaSiteStaging
Parent: Observation
Id: ch-crl-observation-rhabdomyosarcomasitestaging
Title: "CH CRL Observation Rhabdomyosarcoma Site Staging"
Description: "Definition of the Observation for the Rhabdomyosarcoma site staging"
* obeys ch-crl-obs-1
* . ^short = "CH CRL Observation Rhabdomyosarcoma Site Staging"
* code 1..
* code = $nkrs-variables#4.28 "Rhabdomyosarcoma site staging"

* subject 1..
* subject only Reference(CHCRLPatient)
* subject ^short = "Patient"
* subject.reference 1..
* effectiveDateTime 1..
* performer only Reference(CHCRLPractitioner or CHCRLOrganizationDepartment)
* performer ^short = "Practitioner if resident physician or Organization Department if hospital"
* performer.reference 1..

* valueCodeableConcept from NkrsRhabdomyosarcomaSiteStaging (preferred)
* valueCodeableConcept ^short = "Rhabdomyosarcoma staging is based on the classic TNM staging taking 
into account favourable/non favourable tumour sites. It is used in paediatric oncology."
* valueCodeableConcept.coding 1..*
* valueCodeableConcept.coding.system 1..
* valueCodeableConcept.coding.code 1..
* valueCodeableConcept.coding.display 1..

* dataAbsentReason ^short = "The Rhabdomyosarcoma staging is not stated / not assessed"
* dataAbsentReason.coding 1..*
* dataAbsentReason.coding.system 1..
* dataAbsentReason.coding.system = "http://terminology.hl7.org/CodeSystem/data-absent-reason" (exactly)
* dataAbsentReason.coding.code 1..
* dataAbsentReason.coding.code = #unknown (exactly)
* dataAbsentReason.coding.display 1..
* dataAbsentReason.coding.display = "Unknown" (exactly)


Mapping: NICER-A-for-CHCRLObservationRhabdomyosarcomaSiteStaging
Id: NICER-A
Title: "NATIONAL CANCER DATA DICTIONARY, V 1.1, Part A: BASIC VARIABLES for Adults, Adolescents, and Children"
Source: CHCRLObservationRhabdomyosarcomaSiteStaging
Target: "https://www.nacr.ch/assets/files/uploads/a-datadictionary-basicvariables-v1.1.pdf"
* -> "Rhabdomyosarcoma site staging (Variable number: 4.28)"


Instance: RhabdomyosarcomaSiteStaging-I
InstanceOf: CHCRLObservationRhabdomyosarcomaSiteStaging
Title: "Rhabdomyosarcoma Site Staging - I"
Description: "Example for Observation for the Rhabdomyosarcoma site staging"
Usage: #example
* status = #final
* code = $nkrs-variables#4.28 "Rhabdomyosarcoma site staging"
* subject = Reference(FranzMinimum)
* effectiveDateTime = "2018-12-15"
* valueCodeableConcept = $nkrs-rhabdomyosarcomasitestaging#I "Stage I"


Instance: RhabdomyosarcomaSiteStaging-Unknown
InstanceOf: CHCRLObservationRhabdomyosarcomaSiteStaging
Title: "Rhabdomyosarcoma Site Staging - Unknown"
Description: "Example for Observation for the Rhabdomyosarcoma site staging"
Usage: #example
* status = #final
* code = $nkrs-variables#4.28 "Rhabdomyosarcoma site staging"
* subject = Reference(FranzMinimum)
* effectiveDateTime = "2018-12-15"
* dataAbsentReason = $data-absent-reason#unknown "Unknown"

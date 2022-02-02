Profile: CHCRLObservationINRGSSStaging
Parent: Observation
Id: ch-crl-observation-inrgssstaging
Title: "CH CRL Observation INRGSS Staging"
Description: "Definition of the Observation for the INRGSS staging"
* obeys ch-crl-obs-1
* . ^short = "CH CRL Observation INRGSS Staging"
* code 1..
* code = $nkrs-variables#4.22 "INRGSS staging"
* subject 1..
* subject only Reference(CHCRLPatient)
* subject ^short = "Patient"
* subject.reference 1..
* effectiveDateTime 1..
* performer only Reference(CHCRLPractitioner or CHCRLOrganizationDepartment)
* performer ^short = "Practitioner if resident physician or Organization Department if hospital"
* performer.reference 1..

* valueCodeableConcept obeys nkrs-inrgssstaging
* valueCodeableConcept from NkrsINRGSSStaging (preferred)
* valueCodeableConcept ^short = "The paediatric stage classification of the International Neuroblastoma Risk Group Staging System (INRGSS)."
* valueCodeableConcept.coding 1..*
* valueCodeableConcept.coding.system 1..
* valueCodeableConcept.coding.code 1..
* valueCodeableConcept.coding.display 1..

* dataAbsentReason ^short = "The paediatric stage classification of the INRGSS is not stated / not assessed"
* dataAbsentReason.coding 1..*
* dataAbsentReason.coding.system 1..
* dataAbsentReason.coding.system = "http://terminology.hl7.org/CodeSystem/data-absent-reason" (exactly)
* dataAbsentReason.coding.code 1..
* dataAbsentReason.coding.code = #unknown (exactly)
* dataAbsentReason.coding.display 1..
* dataAbsentReason.coding.display = "Unknown" (exactly)


Mapping: NICER-A-for-CHCRLObservationINRGSSStaging
Id: NICER-A
Title: "NATIONAL CANCER DATA DICTIONARY, V 1.1, Part A: BASIC VARIABLES for Adults, Adolescents, and Children"
Source: CHCRLObservationINRGSSStaging
Target: "https://www.nacr.ch/assets/files/uploads/a-datadictionary-basicvariables-v1.1.pdf"
* -> "INRGSS staging (Variable number: 4.22)"


Instance: INRGSSStaging-M
InstanceOf: CHCRLObservationINRGSSStaging
Title: "INRGSS Staging - M"
Description: "Example for Observation for the INRGSS staging"
Usage: #example
* status = #final
* code = $nkrs-variables#4.22 "INRGSS staging"
* subject = Reference(FranzMinimum)
* effectiveDateTime = "2018-12-15"
* valueCodeableConcept = $nkrs-inrgssstaging#M "Stage M"


Instance: INRGSSStaging-Unknown
InstanceOf: CHCRLObservationINRGSSStaging
Title: "INRGSS Staging - Unknown"
Description: "Example for Observation for the INRGSS staging"
Usage: #example
* status = #final
* code = $nkrs-variables#4.22 "INRGSS staging"
* subject = Reference(FranzMinimum)
* effectiveDateTime = "2018-12-15"
* dataAbsentReason = $data-absent-reason#unknown "Unknown"



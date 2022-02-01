Profile: CHCRLObservationLuganoStaging
Parent: Observation
Id: ch-crl-observation-luganostaging
Title: "CH CRL Observation Lugano Staging"
Description: "Definition of the Observation for the Lugano staging"
* obeys ch-crl-obs-1
* . ^short = "CH CRL Observation Lugano Staging"
* code 1..
* code = $nkrs-variables#4.24 "Lugano staging"

* subject 1..
* subject only Reference(CHCRLPatient)
* subject ^short = "Patient"
* subject.reference 1..
* effectiveDateTime 1..
* performer only Reference(CHCRLPractitioner or CHCRLOrganizationDepartment)
* performer ^short = "Practitioner if resident physician or Organization Department if hospital"
* performer.reference 1..

* valueCodeableConcept from NkrsLuganoStaging (preferred)
* valueCodeableConcept ^short = "A modification of the Ann Arbor classification for lymphoma."
* valueCodeableConcept.coding 1..*
* valueCodeableConcept.coding.system 1..
* valueCodeableConcept.coding.code 1..
* valueCodeableConcept.coding.display 1..

* dataAbsentReason ^short = "The Lugano staging is not stated / not assessed"
* dataAbsentReason.coding 1..*
* dataAbsentReason.coding.system 1..
* dataAbsentReason.coding.system = "http://terminology.hl7.org/CodeSystem/data-absent-reason" (exactly)
* dataAbsentReason.coding.code 1..
* dataAbsentReason.coding.code = #unknown (exactly)
* dataAbsentReason.coding.display 1..
* dataAbsentReason.coding.display = "Unknown" (exactly)


Mapping: NICER-A-for-CHCRLObservationLuganoStaging
Id: NICER-A
Title: "NATIONAL CANCER DATA DICTIONARY, V 1.1, Part A: BASIC VARIABLES for Adults, Adolescents, and Children"
Source: CHCRLObservationLuganoStaging
Target: "https://www.nacr.ch/assets/files/uploads/a-datadictionary-basicvariables-v1.1.pdf"
* -> "Lugano staging (Variable number: 4.24)"


Instance: LuganoStaging-I
InstanceOf: CHCRLObservationLuganoStaging
Title: "Lugano Staging - I"
Description: "Example for Observation for the Lugano staging"
Usage: #example
* status = #final
* code = $nkrs-variables#4.24 "Lugano staging"
* subject = Reference(FranzMinimum)
* effectiveDateTime = "2018-12-15"
* valueCodeableConcept = $nkrs-luganostaging#I "Stage I"


Instance: LuganoStaging-Unknown
InstanceOf: CHCRLObservationLuganoStaging
Title: "Lugano Staging - Unknown"
Description: "Example for Observation for the Lugano staging"
Usage: #example
* status = #final
* code = $nkrs-variables#4.24 "Lugano staging"
* subject = Reference(FranzMinimum)
* effectiveDateTime = "2018-12-15"
* dataAbsentReason = $data-absent-reason#unknown "Unknown"



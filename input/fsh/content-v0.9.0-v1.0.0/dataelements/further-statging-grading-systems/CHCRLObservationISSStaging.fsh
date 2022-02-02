Profile: CHCRLObservationISSStaging
Parent: Observation
Id: ch-crl-observation-issstaging
Title: "CH CRL Observation ISS Staging"
Description: "Definition of the Observation for the ISS staging"
* obeys ch-crl-obs-1
* . ^short = "CH CRL Observation ISS Staging"
* code 1..
* code = $sct#1149162008 "International Staging System for multiple myeloma (staging scale)"

* subject 1..
* subject only Reference(CHCRLPatient)
* subject ^short = "Patient"
* subject.reference 1..
* effectiveDateTime 1..
* performer only Reference(CHCRLPractitioner or CHCRLOrganizationDepartment)
* performer ^short = "Practitioner if resident physician or Organization Department if hospital"
* performer.reference 1..

* valueCodeableConcept obeys nkrs-issstaging
* valueCodeableConcept from NkrsISSStaging (preferred)
* valueCodeableConcept ^short = "The International Staging System (ISS) for multiple myeloma."
* valueCodeableConcept.coding 1..*
* valueCodeableConcept.coding.system 1..
* valueCodeableConcept.coding.code 1..
* valueCodeableConcept.coding.display 1..

* dataAbsentReason ^short = "The ISS for multiple myeloma is not stated / not assessed"
* dataAbsentReason.coding 1..*
* dataAbsentReason.coding.system 1..
* dataAbsentReason.coding.system = "http://terminology.hl7.org/CodeSystem/data-absent-reason" (exactly)
* dataAbsentReason.coding.code 1..
* dataAbsentReason.coding.code = #unknown (exactly)
* dataAbsentReason.coding.display 1..
* dataAbsentReason.coding.display = "Unknown" (exactly)


Mapping: NICER-A-for-CHCRLObservationISSStaging
Id: NICER-A
Title: "NATIONAL CANCER DATA DICTIONARY, V 1.1, Part A: BASIC VARIABLES for Adults, Adolescents, and Children"
Source: CHCRLObservationISSStaging
Target: "https://www.nacr.ch/assets/files/uploads/a-datadictionary-basicvariables-v1.1.pdf"
* -> "ISS staging (Variable number: 4.29)"


Instance: ISSStaging-II
InstanceOf: CHCRLObservationISSStaging
Title: "ISS Staging - II"
Description: "Example for Observation for the ISS staging"
Usage: #example
* status = #final
* code = $sct#1149162008 "International Staging System for multiple myeloma (staging scale)"
* subject = Reference(FranzMinimum)
* effectiveDateTime = "2018-12-15"
* valueCodeableConcept = $nkrs-issstaging#II "Stage II"


Instance: ISSStaging-Unknown
InstanceOf: CHCRLObservationISSStaging
Title: "ISS Staging - Unknown"
Description: "Example for Observation for the ISS staging"
Usage: #example
* status = #final
* code = $sct#1149162008 "International Staging System for multiple myeloma (staging scale)"
* subject = Reference(FranzMinimum)
* effectiveDateTime = "2018-12-15"
* dataAbsentReason = $data-absent-reason#unknown "Unknown"



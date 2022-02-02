Profile: CHCRLObservationPRETEXTStaging
Parent: Observation
Id: ch-crl-observation-pretextstaging
Title: "CH CRL Observation PRETEXT Staging"
Description: "Definition of the Observation for the PRETEXT staging"
* obeys ch-crl-obs-1
* . ^short = "CH CRL Observation PRETEXT Staging"
* code 1..
* code = $nkrs-variables#4.25 "PRETEXT staging"
* subject 1..
* subject only Reference(CHCRLPatient)
* subject ^short = "Patient"
* subject.reference 1..
* effectiveDateTime 1..
* performer only Reference(CHCRLPractitioner or CHCRLOrganizationDepartment)
* performer ^short = "Practitioner if resident physician or Organization Department if hospital"
* performer.reference 1..

* valueCodeableConcept obeys nkrs-pretextstaging
* valueCodeableConcept from NkrsPRETEXTStaging (preferred)
* valueCodeableConcept ^short = "The PRETEXT (PRE-Treatment EXTent of tumor) staging system is used for malignant primary 
liver tumours of childhood before any therapy. The PRETEXT hepatoblastoma staging is based on Couinaud’s system of 
segmentation of the liver."
* valueCodeableConcept.coding 1..*
* valueCodeableConcept.coding.system 1..
* valueCodeableConcept.coding.code 1..
* valueCodeableConcept.coding.display 1..

* dataAbsentReason ^short = "The PRETEXT staging is not stated / not assessed"
* dataAbsentReason.coding 1..*
* dataAbsentReason.coding.system 1..
* dataAbsentReason.coding.system = "http://terminology.hl7.org/CodeSystem/data-absent-reason" (exactly)
* dataAbsentReason.coding.code 1..
* dataAbsentReason.coding.code = #unknown (exactly)
* dataAbsentReason.coding.display 1..
* dataAbsentReason.coding.display = "Unknown" (exactly)


Mapping: NICER-A-for-CHCRLObservationPRETEXTStaging
Id: NICER-A
Title: "NATIONAL CANCER DATA DICTIONARY, V 1.1, Part A: BASIC VARIABLES for Adults, Adolescents, and Children"
Source: CHCRLObservationPRETEXTStaging
Target: "https://www.nacr.ch/assets/files/uploads/a-datadictionary-basicvariables-v1.1.pdf"
* -> "PRETEXT staging (Variable number: 4.25)"


Instance: PRETEXTStaging-II
InstanceOf: CHCRLObservationPRETEXTStaging
Title: "PRETEXT Staging - II"
Description: "Example for Observation for the PRETEXT staging"
Usage: #example
* status = #final
* code = $nkrs-variables#4.25 "PRETEXT staging"
* subject = Reference(FranzMinimum)
* effectiveDateTime = "2018-12-15"
* valueCodeableConcept = $nkrs-pretextstaging#II "PRETEXT II"


Instance: PRETEXTStaging-Unknown
InstanceOf: CHCRLObservationPRETEXTStaging
Title: "PRETEXT Staging - Unknown"
Description: "Example for Observation for the PRETEXT staging"
Usage: #example
* status = #final
* code = $nkrs-variables#4.25 "PRETEXT staging"
* subject = Reference(FranzMinimum)
* effectiveDateTime = "2018-12-15"
* dataAbsentReason = $data-absent-reason#unknown "Unknown"

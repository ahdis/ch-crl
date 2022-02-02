Profile: CHCRLObservationStJudeMurphyStaging
Parent: Observation
Id: ch-crl-observation-stjudemurphystaging
Title: "CH CRL Observation St. Jude / Murphy Staging"
Description: "Definition of the Observation for the St. Jude / Murphy staging"
* obeys ch-crl-obs-1
* . ^short = "CH CRL Observation St. Jude / Murphy Staging"
* code 1..
* code = $nkrs-variables#4.32 "St. Jude / Murphy staging"

* subject 1..
* subject only Reference(CHCRLPatient)
* subject ^short = "Patient"
* subject.reference 1..
* effectiveDateTime 1..
* performer only Reference(CHCRLPractitioner or CHCRLOrganizationDepartment)
* performer ^short = "Practitioner if resident physician or Organization Department if hospital"
* performer.reference 1..

* valueCodeableConcept obeys nkrs-stjudemurphystaging
* valueCodeableConcept from NkrsStJudeMurphyStaging (preferred)
* valueCodeableConcept ^short = "The St Jude/Murphy staging system for childhood NHL is based on clinical-pathological 
features like physical examination, CBC, imaging, bone marrow, CSF examinations etc."
* valueCodeableConcept.coding 1..*
* valueCodeableConcept.coding.system 1..
* valueCodeableConcept.coding.code 1..
* valueCodeableConcept.coding.display 1..

* dataAbsentReason ^short = "The St Jude/Murphy staging is not stated / not assessed"
* dataAbsentReason.coding 1..*
* dataAbsentReason.coding.system 1..
* dataAbsentReason.coding.system = "http://terminology.hl7.org/CodeSystem/data-absent-reason" (exactly)
* dataAbsentReason.coding.code 1..
* dataAbsentReason.coding.code = #unknown (exactly)
* dataAbsentReason.coding.display 1..
* dataAbsentReason.coding.display = "Unknown" (exactly)


Mapping: NICER-A-for-CHCRLObservationStJudeMurphyStaging
Id: NICER-A
Title: "NATIONAL CANCER DATA DICTIONARY, V 1.1, Part A: BASIC VARIABLES for Adults, Adolescents, and Children"
Source: CHCRLObservationStJudeMurphyStaging
Target: "https://www.nacr.ch/assets/files/uploads/a-datadictionary-basicvariables-v1.1.pdf"
* -> "St. Jude / Murphy staging (Variable number: 4.32)"


Instance: StJudeMurphyStaging-I
InstanceOf: CHCRLObservationStJudeMurphyStaging
Title: "St. Jude / Murphy Staging - I"
Description: "Example for Observation for the St. Jude / Murphy staging"
Usage: #example
* status = #final
* code = $nkrs-variables#4.32 "St. Jude / Murphy staging"
* subject = Reference(FranzMinimum)
* effectiveDateTime = "2018-12-15"
* valueCodeableConcept = $nkrs-stjudemurphystaging#I "Stage I"


Instance: StJudeMurphyStaging-Unknown
InstanceOf: CHCRLObservationStJudeMurphyStaging
Title: "St. Jude / Murphy Staging - Unknown"
Description: "Example for Observation for the St. Jude / Murphy staging"
Usage: #example
* status = #final
* code = $nkrs-variables#4.32 "St. Jude / Murphy staging"
* subject = Reference(FranzMinimum)
* effectiveDateTime = "2018-12-15"
* dataAbsentReason = $data-absent-reason#unknown "Unknown"



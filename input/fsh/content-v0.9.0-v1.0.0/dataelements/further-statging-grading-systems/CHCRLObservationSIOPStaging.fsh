Profile: CHCRLObservationSIOPStaging
Parent: Observation
Id: ch-crl-observation-siopstaging
Title: "CH CRL Observation SIOP Staging"
Description: "Definition of the Observation for the SIOP staging"
* obeys ch-crl-obs-1
* . ^short = "CH CRL Observation SIOP Staging"
* code 1..
* code = $nkrs-variables#4.31 "SIOP staging"

* subject 1..
* subject only Reference(CHCRLPatient)
* subject ^short = "Patient"
* subject.reference 1..
* effectiveDateTime 1..
* performer only Reference(CHCRLPractitioner or CHCRLOrganizationDepartment)
* performer ^short = "Practitioner if resident physician or Organization Department if hospital"
* performer.reference 1..

* valueCodeableConcept obeys nkrs-siopstaging
* valueCodeableConcept from NkrsSIOPStaging (preferred)
* valueCodeableConcept ^short = "The staging of Wilms’ tumor for pediatric patients acc. to post-chemotherapy staging 
system developed by the International Society of Pediatric Oncology (SIOP)."
* valueCodeableConcept.coding 1..*
* valueCodeableConcept.coding.system 1..
* valueCodeableConcept.coding.code 1..
* valueCodeableConcept.coding.display 1..

* dataAbsentReason ^short = "The SIOP staging is not stated / not assessed"
* dataAbsentReason.coding 1..*
* dataAbsentReason.coding.system 1..
* dataAbsentReason.coding.system = "http://terminology.hl7.org/CodeSystem/data-absent-reason" (exactly)
* dataAbsentReason.coding.code 1..
* dataAbsentReason.coding.code = #unknown (exactly)
* dataAbsentReason.coding.display 1..
* dataAbsentReason.coding.display = "Unknown" (exactly)


Mapping: NICER-A-for-CHCRLObservationSIOPStaging
Id: NICER-A
Title: "NATIONAL CANCER DATA DICTIONARY, V 1.1, Part A: BASIC VARIABLES for Adults, Adolescents, and Children"
Source: CHCRLObservationSIOPStaging
Target: "https://www.nacr.ch/assets/files/uploads/a-datadictionary-basicvariables-v1.1.pdf"
* -> "SIOP staging (Variable number: 4.31)"


Instance: SIOPStaging-yIII
InstanceOf: CHCRLObservationSIOPStaging
Title: "SIOP Staging - yIII"
Description: "Example for Observation for the SIOP staging"
Usage: #example
* status = #final
* code = $nkrs-variables#4.31 "SIOP staging"
* subject = Reference(FranzMinimum)
* effectiveDateTime = "2018-12-15"
* valueCodeableConcept = $nkrs-siopstaging#yIII "Stage y-III"


Instance: SIOPStaging-Unknown
InstanceOf: CHCRLObservationSIOPStaging
Title: "SIOP Staging - Unknown"
Description: "Example for Observation for the SIOP staging"
Usage: #example
* status = #final
* code = $nkrs-variables#4.31 "SIOP staging"
* subject = Reference(FranzMinimum)
* effectiveDateTime = "2018-12-15"
* dataAbsentReason = $data-absent-reason#unknown "Unknown"



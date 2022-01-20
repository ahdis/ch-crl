Profile: CHCRLObservationCOGStaging
Parent: Observation
Id: ch-crl-observation-cogstaging
Title: "CH CRL Observation COG Staging"
Description: "Definition of the Observation for the COG staging"
* obeys ch-crl-obs-1
* . ^short = "CH CRL Observation COG Staging"
* code 1..
* code = $nkrs-basicvariables#4.19 "COG staging"
* subject 1..
* subject only Reference(CHCRLPatient)
* subject ^short = "Patient"
* subject.reference 1..
* effectiveDateTime 1..
* performer only Reference(CHCRLPractitioner or CHCRLOrganizationDepartment)
* performer ^short = "Practitioner if resident physician or Organization Department if hospital"
* performer.reference 1..

* valueCodeableConcept from NkrsCOGStaging (required)
* valueCodeableConcept ^short = "The staging of Wilms’ tumour for pediatric patients acc. to pre-chemotherapy staging 
system developed by the National Wilms’ Tumor Study Group (NWTSG). Based exclusively on the anatomic extent of the 
tumour, without consideration of genetic, biologic, or molecular markers."
* valueCodeableConcept.coding 1..*
* valueCodeableConcept.coding.system 1..
* valueCodeableConcept.coding.code 1..
* valueCodeableConcept.coding.display 1..

* dataAbsentReason ^short = "The staging of Wilms’ tumour for pediatric patients is not stated / not assessed"
* dataAbsentReason.coding 1..*
* dataAbsentReason.coding.system 1..
* dataAbsentReason.coding.system = "http://terminology.hl7.org/CodeSystem/data-absent-reason" (exactly)
* dataAbsentReason.coding.code 1..
* dataAbsentReason.coding.code = #unknown (exactly)
* dataAbsentReason.coding.display 1..
* dataAbsentReason.coding.display = "Unknown" (exactly)


Mapping: NICER-A-for-CHCRLObservationCOGStaging
Id: NICER-A
Title: "NATIONAL CANCER DATA DICTIONARY, V 1.1, Part A: BASIC VARIABLES for Adults, Adolescents, and Children"
Source: CHCRLObservationCOGStaging
Target: "https://www.nacr.ch/assets/files/uploads/a-datadictionary-basicvariables-v1.1.pdf"
* -> "COG staging (Variable number: 4.19)"


Instance: COGStaging-II
InstanceOf: CHCRLObservationCOGStaging
Title: "COG Staging - II"
Description: "Example for Observation for the COG staging"
Usage: #example
* status = #final
* code = $nkrs-basicvariables#4.19 "COG staging"
* subject = Reference(FranzMinimum)
* effectiveDateTime = "2018-12-15"
* valueCodeableConcept = $nkrs-cogstaging#II "Stage II"


Instance: COGStaging-Unknown
InstanceOf: CHCRLObservationCOGStaging
Title: "COG Staging - Unknown"
Description: "Example for Observation for the COG staging"
Usage: #example
* status = #final
* code = $nkrs-basicvariables#4.19 "COG staging"
* subject = Reference(FranzMinimum)
* effectiveDateTime = "2018-12-15"
* dataAbsentReason = $data-absent-reason#unknown "Unknown"
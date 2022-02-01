Profile: CHCRLObservationCOGALLStaging
Parent: Observation
Id: ch-crl-observation-cogallstaging
Title: "CH CRL Observation COG ALL Staging"
Description: "Definition of the Observation for the COG ALL staging"
* obeys ch-crl-obs-1
* . ^short = "CH CRL Observation COG ALL Staging"
* code 1..
* code = $nkrs-variables#4.20 "COG ALL staging"
* subject 1..
* subject only Reference(CHCRLPatient)
* subject ^short = "Patient"
* subject.reference 1..
* effectiveDateTime 1..
* performer only Reference(CHCRLPractitioner or CHCRLOrganizationDepartment)
* performer ^short = "Practitioner if resident physician or Organization Department if hospital"
* performer.reference 1..

* valueCodeableConcept from NkrsCOGALLStaging (preferred)
* valueCodeableConcept ^short = "COG ALL staging (for childhood B- precursor acute lymphoblastic leukemia, B-ALL) allows a uniform 
assessment of the extent of CNS involvement based on presence of blasts in the diagnostic cerebrospinal fluid (CSF)."
* valueCodeableConcept.coding 1..*
* valueCodeableConcept.coding.system 1..
* valueCodeableConcept.coding.code 1..
* valueCodeableConcept.coding.display 1..

* dataAbsentReason ^short = "The COG ALL staging is not stated / not assessed"
* dataAbsentReason.coding 1..*
* dataAbsentReason.coding.system 1..
* dataAbsentReason.coding.system = "http://terminology.hl7.org/CodeSystem/data-absent-reason" (exactly)
* dataAbsentReason.coding.code 1..
* dataAbsentReason.coding.code = #unknown (exactly)
* dataAbsentReason.coding.display 1..
* dataAbsentReason.coding.display = "Unknown" (exactly)


Mapping: NICER-A-for-CHCRLObservationCOGALLStaging
Id: NICER-A
Title: "NATIONAL CANCER DATA DICTIONARY, V 1.1, Part A: BASIC VARIABLES for Adults, Adolescents, and Children"
Source: CHCRLObservationCOGALLStaging
Target: "https://www.nacr.ch/assets/files/uploads/a-datadictionary-basicvariables-v1.1.pdf"
* -> "COG ALL staging (Variable number: 4.20)"


Instance: COGALLStaging-CNS1
InstanceOf: CHCRLObservationCOGALLStaging
Title: "COG ALL Staging - CNS1"
Description: "Example for Observation for the COG ALL staging"
Usage: #example
* status = #final
* code = $nkrs-variables#4.20 "COG ALL staging"
* subject = Reference(FranzMinimum)
* effectiveDateTime = "2018-12-15"
* valueCodeableConcept = $nkrs-cogallstaging#CNS1 "CNS1"


Instance: COGALLStaging-Unknown
InstanceOf: CHCRLObservationCOGALLStaging
Title: "COG ALL Staging - Unknown"
Description: "Example for Observation for the COG ALL staging"
Usage: #example
* status = #final
* code = $nkrs-variables#4.20 "COG ALL staging"
* subject = Reference(FranzMinimum)
* effectiveDateTime = "2018-12-15"
* dataAbsentReason = $data-absent-reason#unknown "Unknown"
Profile: CHCRLObservationICD10
Parent: Observation
Id: ch-crl-observation-icd10
Title: "CH CRL Observation ICD-10 Profile"
Description: "Observation for the ICD-10 code"
* . ^short = "CH CRL Observation ICD-10"
* code 1..
* code = $loinc#86255-7 "Primary diagnosis ICD code"
* subject 1..
* subject only Reference(CHCRLPatient)
* subject ^short = "Patient"
* subject.reference 1..
* effectiveDateTime 1..
* effectiveDateTime only dateTime
* performer only Reference(CHCRLPractitioner or CHCRLOrganizationDepartment)
* performer ^short = "Practitioner if resident physician or Organization Department if hospital"
* performer.reference 1..
* valueCodeableConcept 1..1
* valueCodeableConcept only CodeableConcept
* valueCodeableConcept from $icd-10-gm (preferred)
* valueCodeableConcept ^short = "ICD-10 code of the disease"
* valueCodeableConcept.coding 1..*
* valueCodeableConcept.coding.system 1..
* valueCodeableConcept.coding.version 1..
* valueCodeableConcept.coding.code 1..
* valueCodeableConcept.coding.display 1..
Profile: CHCRLObservationICD10
Parent: Observation
Id: ch-crl-observation-icd10
Title: "CH CRL Observation ICD-10"
Description: "Definition of the Observation for the ICD-10 code"
* . ^short = "CH CRL Observation ICD-10"
* code 1..
* code = $loinc#86255-7 "Primary diagnosis ICD code"
* subject 1..
* subject only Reference(CHCRLPatient)
* subject ^short = "Patient"
* subject.reference 1..
* effectiveDateTime 1..
* performer only Reference(CHCRLPractitioner or CHCRLOrganizationDepartment)
* performer ^short = "Practitioner if resident physician or Organization Department if hospital"
* performer.reference 1..

* valueCodeableConcept 1..1
* valueCodeableConcept ^short = "ICD-10 code of the disease"
* valueCodeableConcept.coding ^slicing.discriminator.type = #value
* valueCodeableConcept.coding ^slicing.discriminator.path = "system"
* valueCodeableConcept.coding ^slicing.rules = #open
* valueCodeableConcept.coding contains icd-10-gm 0..*
* valueCodeableConcept.coding[icd-10-gm] ^short = "ICD-10-GM"
* valueCodeableConcept.coding[icd-10-gm].system 1..
* valueCodeableConcept.coding[icd-10-gm].system = "http://fhir.de/CodeSystem/dimdi/icd-10-gm" (exactly)
* valueCodeableConcept.coding[icd-10-gm].version 1..
* valueCodeableConcept.coding[icd-10-gm].code 1..
* valueCodeableConcept.coding[icd-10-gm].display 1..

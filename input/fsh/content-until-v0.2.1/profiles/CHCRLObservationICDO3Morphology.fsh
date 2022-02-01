Profile: CHCRLObservationICDO3Morphology
Parent: Observation
Id: ch-crl-observation-icdo3morphology
Title: "CH CRL Observation ICD-O-3 Morphology"
Description: "Definition of the Observation for the ICD-O-3 morphology code"
* . ^short = "CH CRL Observation ICD-O-3 Morphology"
* code 1..
* code = $loinc#59848-2 "Morphology.ICD-O-3 Cancer"
* subject 1..
* subject only Reference(CHCRLPatient)
* subject ^short = "Patient"
* subject.reference 1..
* effectiveDateTime 1..
* performer only Reference(CHCRLPractitioner or CHCRLOrganizationDepartment)
* performer ^short = "Practitioner if resident physician or Organization Department if hospital"
* performer.reference 1..

* valueCodeableConcept 1..1
* valueCodeableConcept ^short = "ICD-O-3 code of the microscopic anatomy or morphology of cells at time of diagnosis"
* valueCodeableConcept.coding ^slicing.discriminator.type = #value
* valueCodeableConcept.coding ^slicing.discriminator.path = "system"
* valueCodeableConcept.coding ^slicing.rules = #open
* valueCodeableConcept.coding contains icd-o-3 0..*
* valueCodeableConcept.coding[icd-o-3] ^short = "ICD-O-3"
* valueCodeableConcept.coding[icd-o-3].system 1..
* valueCodeableConcept.coding[icd-o-3].system = "http://terminology.hl7.org/CodeSystem/icd-o-3" (exactly)
* valueCodeableConcept.coding[icd-o-3].version 1..
* valueCodeableConcept.coding[icd-o-3].code 1..
* valueCodeableConcept.coding[icd-o-3].display 1..
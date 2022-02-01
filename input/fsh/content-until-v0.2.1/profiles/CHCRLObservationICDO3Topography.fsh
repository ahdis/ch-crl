Profile: CHCRLObservationICDO3Topography
Parent: Observation
Id: ch-crl-observation-icdo3topography
Title: "CH CRL Observation ICD-O-3 Topography"
Description: "Definition of the Observation for the ICD-O-3 topography code"
* . ^short = "CH CRL Observation ICD-O-3 Topography"
* code 1..
* code = $loinc#21855-2 "Primary site Cancer"
* subject 1..
* subject only Reference(CHCRLPatient)
* subject ^short = "Patient"
* subject.reference 1..
* effectiveDateTime 1..
* performer only Reference(CHCRLPractitioner or CHCRLOrganizationDepartment)
* performer ^short = "Practitioner if resident physician or Organization Department if hospital"
* performer.reference 1..

* valueCodeableConcept 1..1
* valueCodeableConcept ^short = "ICD-O-3 code of the primary site, or topography, of the neoplasm"
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

Profile: CHCRLObservationICDO3Morphology
Parent: Observation
Id: ch-crl-observation-icdo3morphology
Title: "CH CRL Observation ICD-O-3 Morphology Profile"
Description: "Observation for the ICD-O-3 morphology code"
* . ^short = "CH CRL Observation ICD-O-3 Morphology"
* code 1..
* code = $loinc#59848-2 "Morphology.ICD-O-3 Cancer"
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
* valueCodeableConcept ^short = "ICD-O-3 code of the microscopic anatomy or morphology of cells at time of diagnosis"
* valueCodeableConcept.coding 1..*
* valueCodeableConcept.coding.system 1..
* valueCodeableConcept.coding.system = "urn:oid:2.16.840.1.113883.6.43.1" (exactly)
* valueCodeableConcept.coding.version 1..
* valueCodeableConcept.coding.code 1..
* valueCodeableConcept.coding.display 1..
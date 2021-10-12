Profile: CHCRLObservationICDO3Topography
Parent: Observation
Id: ch-crl-observation-icdo3topography
Title: "CH CRL Observation ICD-O-3 Topography Profile"
Description: "Observation for the ICD-O-3 topography code"
* . ^short = "CH CRL Observation ICD-O-3 Topography"
* code 1..
* code = $loinc#21855-2 "Primary site Cancer"
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
* valueCodeableConcept from urn:oid:2.16.840.1.113883.6.43.1 (preferred)
* valueCodeableConcept ^short = "ICD-O-3 code of the primary site, or topography, of the neoplasm"
* valueCodeableConcept.coding 1..*
* valueCodeableConcept.coding.system 1..
* valueCodeableConcept.coding.version 1..
* valueCodeableConcept.coding.code 1..
* valueCodeableConcept.coding.display 1..
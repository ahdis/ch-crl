Profile: CHCRLObservationICDO3Behaviour
Parent: Observation
Id: ch-crl-observation-icdo3behaviour
Title: "CH CRL Observation ICD-O-3 Behaviour"
Description: "Definition of the Observation for the ICD-O-3 behaviour code"
* obeys ch-crl-obs-1
* . ^short = "CH CRL Observation ICD-O-3 Behaviour"
* code 1..
* code = $loinc#31206-6 "Behavior ICD-O-3 Cancer"
* subject 1..
* subject only Reference(CHCRLPatient)
* subject ^short = "Patient"
* subject.reference 1..
* effectiveDateTime 1..
* performer only Reference(CHCRLPractitioner or CHCRLOrganizationDepartment)
* performer ^short = "Practitioner if resident physician or Organization Department if hospital"
* performer.reference 1..
* valueCodeableConcept from NkrsIcdO3Behaviour (required)
* valueCodeableConcept ^short = "ICD-O-3 code of the behaviour of the neoplasm at time of diagnosis"
* valueCodeableConcept.coding 1..*
* valueCodeableConcept.coding.system 1..
* valueCodeableConcept.coding.code 1..
* valueCodeableConcept.coding.display 1..
* dataAbsentReason ^short = "The behaviour is not stated / not assessed"
* dataAbsentReason.coding 1..*
* dataAbsentReason.coding.system 1..
* dataAbsentReason.coding.system = "http://terminology.hl7.org/CodeSystem/data-absent-reason" (exactly)
* dataAbsentReason.coding.code 1..
* dataAbsentReason.coding.code = #unknown (exactly)
* dataAbsentReason.coding.display 1..
* dataAbsentReason.coding.display = "Unknown" (exactly)
Profile: CHCRLObservationPerineuralInvasion
Parent: Observation
Id: ch-crl-observation-perineuralinvasion
Title: "CH CRL Observation Perineural Invasion"
Description: "Definition of the Observation for the perineural invasion"
* obeys ch-crl-obs-1
* . ^short = "CH CRL Observation Perineural Invasion"
* code 1..
* code = $loinc#92837-4 "Perineural invasion [Presence] in Cancer specimen"
* subject 1..
* subject only Reference(CHCRLPatient)
* subject ^short = "Patient"
* subject.reference 1..
* effectiveDateTime 1..
* performer only Reference(CHCRLPractitioner or CHCRLOrganizationDepartment)
* performer ^short = "Practitioner if resident physician or Organization Department if hospital"
* performer.reference 1..
* valueCodeableConcept from NkrsPerineuralInvasion (required)
* valueCodeableConcept ^short = "The process of neoplastic invasion of nerves"
* valueCodeableConcept.coding 1..*
* valueCodeableConcept.coding.system 1..
* valueCodeableConcept.coding.code 1..
* valueCodeableConcept.coding.display 1..
* dataAbsentReason ^short = "The process of neoplastic invasion is not stated / not assessed"
* dataAbsentReason.coding 1..*
* dataAbsentReason.coding.system 1..
* dataAbsentReason.coding.system = "http://terminology.hl7.org/CodeSystem/data-absent-reason" (exactly)
* dataAbsentReason.coding.code 1..
* dataAbsentReason.coding.code = #unknown (exactly)
* dataAbsentReason.coding.display 1..
* dataAbsentReason.coding.display = "Unknown" (exactly)
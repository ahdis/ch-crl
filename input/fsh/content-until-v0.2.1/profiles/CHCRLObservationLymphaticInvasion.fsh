Profile: CHCRLObservationLymphaticInvasion
Parent: Observation
Id: ch-crl-observation-lymphaticinvasion
Title: "CH CRL Observation Lymphatic Invasion"
Description: "Definition of the Observation for the lymphatic invasion"
* . ^short = "CH CRL Observation Lymphatic Invasion"
* code 1..
* code = $sct#277060007 "Lymphatic tumor invasion status"
* subject 1..
* subject only Reference(CHCRLPatient)
* subject ^short = "Patient"
* subject.reference 1..
* effectiveDateTime 1..
* effectiveDateTime only dateTime
* performer only Reference(CHCRLPractitioner or CHCRLOrganizationDepartment)
* performer ^short = "Practitioner if resident physician or Organization Department if hospital"
* performer.reference 1..
* valueCodeableConcept only CodeableConcept
* valueCodeableConcept from NkrsLymphaticInvasion (required)
* valueCodeableConcept ^short = "The presence or absence of tumour cells in lymphatic vessels within and at the margins of the primary tumour, as well as afferent and efferent lymphatics, as noted microscopically by the pathologist"
* valueCodeableConcept.coding 1..*
* valueCodeableConcept.coding.system 1..
* valueCodeableConcept.coding.code 1..
* valueCodeableConcept.coding.display 1..
* dataAbsentReason ^short = "The presence or absence of tumour cells in lymphatic vessels is not stated / not assessed"
* dataAbsentReason.coding 1..*
* dataAbsentReason.coding.system 1..
* dataAbsentReason.coding.system = "http://terminology.hl7.org/CodeSystem/data-absent-reason" (exactly)
* dataAbsentReason.coding.code 1..
* dataAbsentReason.coding.code = #unknown (exactly)
* dataAbsentReason.coding.display 1..
* dataAbsentReason.coding.display = "Unknown" (exactly)
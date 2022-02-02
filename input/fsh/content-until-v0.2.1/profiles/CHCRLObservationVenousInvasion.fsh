Profile: CHCRLObservationVenousInvasion
Parent: Observation
Id: ch-crl-observation-venousinvasion
Title: "CH CRL Observation Venous Invasion"
Description: "Definition of the Observation for the venous invasion"
* obeys ch-crl-obs-1
* . ^short = "CH CRL Observation Venous Invasion"
* code 1..
* code = $sct#277061006 "Venous tumor invasion status"
* subject 1..
* subject only Reference(CHCRLPatient)
* subject ^short = "Patient"
* subject.reference 1..
* effectiveDateTime 1..
* performer only Reference(CHCRLPractitioner or CHCRLOrganizationDepartment)
* performer ^short = "Practitioner if resident physician or Organization Department if hospital"
* performer.reference 1..

* valueCodeableConcept obeys nkrs-venousinvasion
* valueCodeableConcept from NkrsVenousInvasion (preferred)
* valueCodeableConcept ^short = "The presence or absence of tumour cells in the walls of venous blood vessels, as noted microscopically by the pathologist"
* valueCodeableConcept.coding 1..*
* valueCodeableConcept.coding.system 1..
* valueCodeableConcept.coding.code 1..
* valueCodeableConcept.coding.display 1..
* dataAbsentReason ^short = "The presence or absence of tumour cells in the walls of venous blood vessels is not stated / not assessed"
* dataAbsentReason.coding 1..*
* dataAbsentReason.coding.system 1..
* dataAbsentReason.coding.system = "http://terminology.hl7.org/CodeSystem/data-absent-reason" (exactly)
* dataAbsentReason.coding.code 1..
* dataAbsentReason.coding.code = #unknown (exactly)
* dataAbsentReason.coding.display 1..
* dataAbsentReason.coding.display = "Unknown" (exactly)
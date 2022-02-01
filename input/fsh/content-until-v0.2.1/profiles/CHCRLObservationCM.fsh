Profile: CHCRLObservationCM
Parent: Observation
Id: ch-crl-observation-cm
Title: "CH CRL Observation cM"
Description: "Definition of the Observation for the TNM clinical distant metastases category"
* obeys ch-crl-obs-1
* . ^short = "CH CRL Observation cM"
* code 1..
* code = $loinc#21907-1 "Distant metastases.clinical [Class] Cancer"
* subject 1..
* subject only Reference(CHCRLPatient)
* subject ^short = "Patient"
* subject.reference 1..
* effectiveDateTime 1..
* performer only Reference(CHCRLPractitioner or CHCRLOrganizationDepartment)
* performer ^short = "Practitioner if resident physician or Organization Department if hospital"
* performer.reference 1..
* valueCodeableConcept from NkrscM (preferred)
* valueCodeableConcept ^short = "The absence or presence of distant metastases based on clinical investigation, imaging, endoscopy, surgical exploration without biopsy"
* valueCodeableConcept.coding 1..*
* valueCodeableConcept.coding.system 1..
* valueCodeableConcept.coding.code 1..
* valueCodeableConcept.coding.display 1..
* dataAbsentReason ^short = "The absence or presence of distant metastases is not applicable or unknown"
* dataAbsentReason.coding obeys ch-crl-obs-3
* dataAbsentReason.coding 1..*
* dataAbsentReason.coding.system 1..
* dataAbsentReason.coding.system = "http://terminology.hl7.org/CodeSystem/data-absent-reason" (exactly)
* dataAbsentReason.coding.code 1..
* dataAbsentReason.coding.code ^short = "If not applicable or TNM classification not defined for this type of cancer than 'value=not-applicable'. 
If not stated / not assessed than 'value=unknown'."
* dataAbsentReason.coding.display 1..

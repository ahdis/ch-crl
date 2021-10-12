Profile: CHCRLObservationCN
Parent: Observation
Id: ch-crl-observation-cn
Title: "CH CRL Observation cN Profile"
Description: "Observation for the TNM clinical regional nodes category"
* . ^short = "CH CRL Observation cN"
* code 1..
* code = $loinc#21906-3 "Regional lymph nodes.clinical [Class] Cancer"
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
* valueCodeableConcept from NkrscN (required)
* valueCodeableConcept ^short = "Regional lymph nodes involvement based on clinical investigation, imaging, endoscopy, biopsy or surgical exploration"
* valueCodeableConcept.coding 1..*
* valueCodeableConcept.coding.system 1..
* valueCodeableConcept.coding.code 1..
* valueCodeableConcept.coding.display 1..
* dataAbsentReason ^short = "Regional lymph nodes involvement is not applicable or unknown"
* dataAbsentReason.coding 1..*
* dataAbsentReason.coding.system 1..
* dataAbsentReason.coding.system = "http://terminology.hl7.org/CodeSystem/data-absent-reason" (exactly)
* dataAbsentReason.coding.code 1..
* dataAbsentReason.coding.code ^short = "If not applicable or TNM classification not defined for this type of cancer than 'value=not-applicable'. If not stated / not assessed than 'value=unknown'."
* dataAbsentReason.coding.display 1..
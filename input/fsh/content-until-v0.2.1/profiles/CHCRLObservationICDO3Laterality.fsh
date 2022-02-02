Profile: CHCRLObservationICDO3Laterality
Parent: Observation
Id: ch-crl-observation-icdo3laterality
Title: "CH CRL Observation ICD-O-3 Laterality"
Description: "Definition of the Observation for the ICD-O-3 laterality code"
* obeys ch-crl-obs-1
* . ^short = "CH CRL Observation ICD-O-3 Laterality"
* code 1..
* code = $loinc#63930-2 "Laterality [PhenX]"
* subject 1..
* subject only Reference(CHCRLPatient)
* subject ^short = "Patient"
* subject.reference 1..
* effectiveDateTime 1..
* performer only Reference(CHCRLPractitioner or CHCRLOrganizationDepartment)
* performer ^short = "Practitioner if resident physician or Organization Department if hospital"
* performer.reference 1..

* valueCodeableConcept obeys nkrs-icdo3laterality
* valueCodeableConcept from NkrsIcdO3Laterality (preferred)
* valueCodeableConcept ^short = "ICD-O-3 code of the side of a paired organ or side of the body on which the reportable cancer originated"
* valueCodeableConcept.coding 1..*
* valueCodeableConcept.coding.system 1..
* valueCodeableConcept.coding.code 1..
* valueCodeableConcept.coding.display 1..
* dataAbsentReason ^short = "The laterality of the reportable cancer is not applicable or unknown"
* dataAbsentReason.coding obeys ch-crl-obs-3
* dataAbsentReason.coding 1..*
* dataAbsentReason.coding.system 1..
* dataAbsentReason.coding.system = "http://terminology.hl7.org/CodeSystem/data-absent-reason" (exactly)
* dataAbsentReason.coding.code 1..
* dataAbsentReason.coding.code ^short = "If it is a midline tumor or an unpaired organ than 'value=not-applicable'. 
If it is unknown wheter, for a paired organ, the reportable cancer was unilateral or bilateral than 'value=unknown'."
* dataAbsentReason.coding.display 1..

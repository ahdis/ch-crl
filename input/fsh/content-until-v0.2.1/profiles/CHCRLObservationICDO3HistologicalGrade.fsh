Profile: CHCRLObservationICDO3HistologicalGrade
Parent: Observation
Id: ch-crl-observation-icdo3histologicalgrade
Title: "CH CRL Observation ICD-O-3 Histological Grade"
Description: "Definition of the Observation for the ICD-O-3 histological grade code"
* obeys ch-crl-obs-1
* . ^short = "CH CRL Observation ICD-O-3 Histological Grade"
* code 1..
* code = $loinc#33732-9 "Histology grade [Identifier] in Cancer specimen"
* subject 1..
* subject only Reference(CHCRLPatient)
* subject ^short = "Patient"
* subject.reference 1..
* effectiveDateTime 1..
* performer only Reference(CHCRLPractitioner or CHCRLOrganizationDepartment)
* performer ^short = "Practitioner if resident physician or Organization Department if hospital"
* performer.reference 1..

* valueCodeableConcept obeys nkrs-icdo3histologicalgrade
* valueCodeableConcept from NkrsIcdO3HistologicalGrade (preferred)
* valueCodeableConcept ^short = "ICD-O-3 code of the neoplasm’s resemblance to normal (parent) tissue"
* valueCodeableConcept.coding 1..*
* valueCodeableConcept.coding.system 1..
* valueCodeableConcept.coding.code 1..
* valueCodeableConcept.coding.display 1..
* dataAbsentReason ^short = "Grade or differentiation not determined, not stated, or not applicable. Unknown primary."
* dataAbsentReason.coding 1..*
* dataAbsentReason.coding.system 1..
* dataAbsentReason.coding.system = "http://terminology.hl7.org/CodeSystem/data-absent-reason" (exactly)
* dataAbsentReason.coding.code 1..
* dataAbsentReason.coding.code = #unknown (exactly)
* dataAbsentReason.coding.display 1..
* dataAbsentReason.coding.display = "Unknown" (exactly)
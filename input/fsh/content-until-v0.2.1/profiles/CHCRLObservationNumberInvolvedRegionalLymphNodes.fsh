Profile: CHCRLObservationNumberInvolvedRegionalLymphNodes
Parent: Observation
Id: ch-crl-observation-numberinvolvedregionallymphnodes
Title: "CH CRL Observation Number of Involved Regional Lymph Nodes"
Description: "Definition of the Observation for the number of involved regional lymph nodes"
* obeys ch-crl-obs-1
* . ^short = "CH CRL Observation Number of Involved Regional Lymph Nodes"
* code 1..
* code = $loinc#21893-3 "Regional lymph nodes positive [#] Specimen"
* subject 1..
* subject only Reference(CHCRLPatient)
* subject ^short = "Patient"
* subject.reference 1..
* effectiveDateTime 1..
* performer only Reference(CHCRLPractitioner or CHCRLOrganizationDepartment)
* performer ^short = "Practitioner if resident physician or Organization Department if hospital"
* performer.reference 1..
* valueQuantity ^short = "The number of regional lymph nodes examined by the pathologist and found to contain metastases"
* valueQuantity.value 1..
* dataAbsentReason ^short = "No information whether regional lymph nodes were invaded or not. OR Regional lymph nodes were invaded, but no information on the number."
* dataAbsentReason.coding 1..*
* dataAbsentReason.coding.system 1..
* dataAbsentReason.coding.system = "http://terminology.hl7.org/CodeSystem/data-absent-reason" (exactly)
* dataAbsentReason.coding.code 1..
* dataAbsentReason.coding.code = #unknown (exactly)
* dataAbsentReason.coding.display 1..
* dataAbsentReason.coding.display = "Unknown" (exactly)
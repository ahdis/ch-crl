Profile: CHCRLObservationyPrefixOfcTNM
Parent: Observation
Id: ch-crl-observation-yprefixofctnm
Title: "CH CRL Observation y-Prefix of cTNM"
Description: "Definition of the Observation for the y-Prefix of cTNM"
* . ^short = "CH CRL Observation y-Prefix of cTNM"
* code 1..
* code = $sct#373846009 "Adjuvant - intent"
* subject 1..
* subject only Reference(CHCRLPatient)
* subject ^short = "Patient"
* subject.reference 1..
* effectiveDateTime 1..
* performer only Reference(CHCRLPractitioner or CHCRLOrganizationDepartment)
* performer ^short = "Practitioner if resident physician or Organization Department if hospital"
* performer.reference 1..
* valueBoolean ^short = "If TNM assigned before any therapy then 'value=false'. If TNM assigned during or after neoadjuvant therapy then 'value=true'."
* dataAbsentReason ^short = "It cannot be assessed whether TNM was assigned before, during or after therapy."
* dataAbsentReason.coding 1..*
* dataAbsentReason.coding.system 1..
* dataAbsentReason.coding.system = "http://terminology.hl7.org/CodeSystem/data-absent-reason" (exactly)
* dataAbsentReason.coding.code 1..
* dataAbsentReason.coding.code = #unknown (exactly)
* dataAbsentReason.coding.display 1..
* dataAbsentReason.coding.display = "Unknown" (exactly)
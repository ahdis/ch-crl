Profile: CHCRLObservationDateOfIncidence
Parent: Observation
Id: ch-crl-observation-dateofincidence
Title: "CH CRL Observation Date of Incidence"
Description: "Definition of the Observation for the date of incidence"
* . ^short = "CH CRL Observation Date of Incidence"
* code 1..
* code = $loinc#63931-0 "Date of diagnosis"
* subject 1..
* subject only Reference(CHCRLPatient)
* subject ^short = "Patient"
* subject.reference 1..
* effectiveDateTime 1..
* performer only Reference(CHCRLPractitioner or CHCRLOrganizationDepartment)
* performer ^short = "Practitioner if resident physician or Organization Department if hospital"
* performer.reference 1..
* valueDateTime 1..
* valueDateTime ^short = "The definite date of diagnosis"
Profile: CHCRLProcedureDiagnosticMethod
Parent: Procedure
Id: ch-crl-procedure-diagnosticmethod
Title: "CH CRL Procedure Diagnostic Method"
Description: "Definition of the Procedure for the diagnostic method(s)"
* . ^short = "CH CRL Procedure Diagnostic Method"

* extension contains $ext-data-absent-reason named ext-data-absent-reason 0..1
* extension[ext-data-absent-reason] ^short = "The diagnostic method used is unknown."
* extension[ext-data-absent-reason].valueCode 1..
* extension[ext-data-absent-reason].valueCode = #unknown

* category 1..
* category = $loinc#67183-4 "Diagnostic staging procedure PhenX"

* code obeys nkrs-diagnosticmethodsused
* code from NkrsDiagnosticMethodsUsed (preferred)
* code ^short = "Identification of the diagnostic method"
* code.coding 1..
* code.coding.system 1..
* code.coding.code 1..
* code.coding.display 1..
* subject only Reference(CHCRLPatient)
* subject ^short = "Patient"
* subject.reference 1..
* performed[x] 1..
* performed[x] only dateTime or Period
* performer ^short = "Who performed the diagnostic method"
* performer.actor only Reference(CHCRLPractitioner or CHCRLOrganizationDepartment)
* performer.actor ^short = "Practitioner if resident physician or Organization Department if hospital"
* performer.actor.reference 1..
* performer.onBehalfOf only Reference(CHCRLOrganization)
* performer.onBehalfOf ^short = "Organization of which the organization department forms a part"
* performer.onBehalfOf.reference 1..
* reasonReference 1..
* reasonReference only Reference(CHCRLObservationICD10)
* reasonReference ^short = "The observation on the basis of which the diagnostic method was performed"
* reasonReference.reference 1..
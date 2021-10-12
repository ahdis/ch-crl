Profile: CHCRLProcedureDiagnosticMethod
Parent: Procedure
Id: ch-crl-procedure-diagnosticmethod
Title: "CH CRL Procedure Diagnostic Method Profile"
Description: "Procedure for the diagnostic method(s)"
* . ^short = "CH CRL Procedure Diagnostic Method"
* category 1..
* category = $loinc#67183-4 "Diagnostic staging procedure PhenX"
* code from NkrsDiagnosticMethodsUsed (required)
* code ^short = "Identification of the diagnostic method"
* code ^binding.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* code ^binding.extension.valueString = "ProcedureCode"
* code ^binding.description = "A code to identify a specific procedure."
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
* performer.function ^short = "Type of performance"
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
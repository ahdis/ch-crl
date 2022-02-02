Profile: CHCRLProcedureMethodFirstDetection
Parent: Procedure
Id: ch-crl-procedure-methodfirstdetection
Title: "CH CRL Procedure Method of First Detection"
Description: "Definition of the Procedure for the method of first detection"
* . ^short = "CH CRL Procedure Method of First Detection"

* extension contains $ext-data-absent-reason named ext-data-absent-reason 0..1
* extension[ext-data-absent-reason] ^short = "The method or circumstance by which the case came to medical attention and the cancer was first diagnosed 
is not stated / not assessed."
* extension[ext-data-absent-reason].valueCode 1..
* extension[ext-data-absent-reason].valueCode = #unknown

* category 1..
* category = $loinc#75692-4 "Cancer detection basis"
* code obeys nkrs-methodfirstdetection
* code from NkrsMethodFirstDetection (preferred)
* code ^short = "The method or circumstance by which the case came to medical attention and the cancer was first diagnosed."
* code.coding 1..
* code.coding.system 1..
* code.coding.code 1..
* code.coding.display 1..
* subject only Reference(CHCRLPatient)
* subject ^short = "Patient"
* subject.reference 1..
* performed[x] 1..
* performed[x] only dateTime or Period
* performer ^short = "Who performed the method of first detection"
* performer.actor only Reference(CHCRLPractitioner or CHCRLOrganizationDepartment)
* performer.actor ^short = "Practitioner if resident physician or Organization Department if hospital"
* performer.actor.reference 1..
* performer.onBehalfOf only Reference(CHCRLOrganization)
* performer.onBehalfOf ^short = "Organization of which the organization department forms a part"
* performer.onBehalfOf.reference 1..
* reasonReference 1..
* reasonReference only Reference(CHCRLObservationICD10)
* reasonReference ^short = "The observation on the basis of which the method of first detection was performed"
* reasonReference.reference 1..


Mapping: NICER-A-for-CHCRLProcedureMethodFirstDetection
Id: NICER-A
Title: "NATIONAL CANCER DATA DICTIONARY, V 1.1, Part A: BASIC VARIABLES for Adults, Adolescents, and Children"
Source: CHCRLProcedureMethodFirstDetection
Target: "https://www.nacr.ch/assets/files/uploads/a-datadictionary-basicvariables-v1.1.pdf"
* code -> "Method of first detection (Variable number: 2.6)"


Instance: MethodFirstDetection-ClinicalSymptoms
InstanceOf: CHCRLProcedureMethodFirstDetection
Title: "Method of First Detection - Clinical Symptoms"
Description: "Example for Procedure for the method of first detection"
Usage: #example
* status = #completed
* category = $loinc#75692-4 "Cancer detection basis"
* code = $nkrs-methodfirstdetection#1 "Clinical symptoms"
* subject = Reference(FranzMinimum)
* performedDateTime = "2018-12-15T13:00:00+02:00"
* reasonReference = Reference(ICD-10)

Instance: MethodFirstDetection-Unknown
InstanceOf: CHCRLProcedureMethodFirstDetection
Title: "Method of First Detection - Unknown"
Description: "Example for Procedure for the method of first detection"
Usage: #example
* extension[ext-data-absent-reason].valueCode = #unknown
* status = #completed
* category = $loinc#75692-4 "Cancer detection basis"
* subject = Reference(FranzMinimum)
* performedDateTime = "2018-12-15T13:00:00+02:00"
* reasonReference = Reference(ICD-10)

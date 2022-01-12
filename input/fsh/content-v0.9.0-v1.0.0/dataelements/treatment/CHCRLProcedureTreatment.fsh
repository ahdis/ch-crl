Profile: CHCRLProcedureTreatment
Parent: Procedure
Id: ch-crl-procedure-treatment
Title: "CH CRL Procedure Treatment"
Description: "Definition of the Procedure for the treatment"
* . ^short = "CH CRL Procedure Treatment"

* extension contains $ext-data-absent-reason named ext-data-absent-reason 0..1
* extension[ext-data-absent-reason] ^short = "The CHOP code for each treatment as part of the first treatment complex 
is unknown (no information in patients records)."
* extension[ext-data-absent-reason].valueCode 1..
* extension[ext-data-absent-reason].valueCode = #unknown

* extension contains CHCRLProcedureTreatmentGoal named treatmentGoal 0..1

* category 1..
* category = $sct#708255002 "First line treatment (procedure)"

* code 1..
* code ^short = "The CHOP code for each treatment as part of the first treatment complex. 
CHOP is Swiss classification of surgical operations and other diagnostic and treatment procedures and interventions."
* code.coding 1..
* code.coding.system 1..
* code.coding.system = "urn:oid:2.16.756.5.30.1.126.3.1" (exactly)
* code.coding.code 1..
* code.coding.display 1..

* subject only Reference(CHCRLPatient)
* subject ^short = "Patient"
* subject.reference 1..

* performedPeriod 1..
* performedPeriod.start 1..
* performedPeriod.start ^short = "The date when the treatment of the first treatment complex has been started."

* performed[x] 1..
* performed[x] only dateTime or Period
* performer ^short = "Who performed the treatment"
* performer.actor only Reference(CHCRLPractitioner or CHCRLOrganizationDepartment)
* performer.actor ^short = "Practitioner if resident physician or Organization Department if hospital"
* performer.actor.reference 1..
* performer.onBehalfOf only Reference(CHCRLOrganization)
* performer.onBehalfOf ^short = "Organization of which the organization department forms a part"
* performer.onBehalfOf.reference 1..

* reasonReference 1..
* reasonReference only Reference(CHCRLObservationICD10)
* reasonReference ^short = "The observation on the basis of which the treatment is/was performed"
* reasonReference.reference 1..


Extension: CHCRLProcedureTreatmentGoal
Id: ch-crl-procedure-treatment-goal
Title: "CH CRL Procedure Treatment Goal"
Description: "Extension to define the goal for the treatment as part of the first treatment complex"
* ^context.type = #element
* ^context.expression = "Procedure"
* . ^short = "CH CRL Procedure Treatment Goal"
* valueCodeableConcept 1..
* valueCodeableConcept ^short = "Goal for the treatment as part of the first treatment complex"
* valueCodeableConcept from NkrsTreatmentGoal (required)


Mapping: NICER-A-for-CHCRLProcedureTreatment
Id: NICER-A
Title: "NATIONAL CANCER DATA DICTIONARY, V 1.1, Part A: BASIC VARIABLES for Adults, Adolescents, and Children"
Source: CHCRLProcedureTreatment
Target: "https://www.nacr.ch/assets/files/uploads/a-datadictionary-basicvariables-v1.1.pdf"
* extension[treatmentGoal] -> "First treatment complex goal(s) (Variable number: 7.3)"
* code -> "First treatment complex code(s) (Variable number: 7.4)"
* performedPeriod.start -> "First treatment complex start date(s) (Variable number: 7.5.1)"
* performer -> "First treatment complex institution(s) (Variable number: 7.6)"


Instance: Treatment-IntraoperativeApplicationOfChemotherapeuticSubstances
InstanceOf: CHCRLProcedureTreatment
Title: "Treatment - Intraoperative Application of Chemotherapeutic Substances"
Description: "Example for Procedure for the treatment"
Usage: #example
* extension[treatmentGoal].valueCodeableConcept = $sct#373808002 "Curative - procedure intent (qualifier value)"
* status = #in-progress
* category = $sct#708255002 "First line treatment (procedure)"
* code = urn:oid:2.16.756.5.30.1.126.3.1#Z99.25.29 "Intraoperative Applikation von Chemotherapeutikum, sonstige"
* subject = Reference(FranzMinimum)
* performedPeriod.start = "2018-12-15"
* performer.actor = Reference(AbteilungMinimum)
* performer.onBehalfOf = Reference(SpitalMinimum)
* reasonReference = Reference(ICD-10)

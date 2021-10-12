Profile: CHCRLConditionFinalCauseOfDeath
Parent: Condition
Id: ch-crl-condition-finalcauseofdeath
Title: "CH CRL Condition Final Cause of Death Profile"
Description: "Condition for the final cause of death"
* . ^short = "CH CRL Condition Final Cause of Death"
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains $condition-assertedDate named dateOfDiagnosis 1..1
* category 1..1
* category.coding 1..*
* category.coding.system 1..
* category.coding.system = "http://loinc.org" (exactly)
* category.coding.code 1..
* category.coding.code = #79378-6 (exactly)
* category.coding.display 1..
* category.coding.display = "Cause of death" (exactly)
* code 1..
* code only CodeableConcept
* code from $icd-10-gm (preferred)
* code ^short = "Identification of the final cause of death"
* code.coding 1..*
* code.coding.system 1..
* code.coding.version 1..
* code.coding.code 1..
* code.coding.display 1..
* subject only Reference(CHCRLPatient)
* subject ^short = "Patient"
* subject.reference 1..
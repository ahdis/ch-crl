Profile: CHCRLConditionFinalCauseOfDeath
Parent: Condition
Id: ch-crl-condition-finalcauseofdeath
Title: "CH CRL Condition Final Cause of Death"
Description: "Definition of the Condition for the final cause of death"
* . ^short = "CH CRL Condition Final Cause of Death"
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
* code ^short = "Identification of the final cause of death"
* code.coding ^slicing.discriminator.type = #value
* code.coding ^slicing.discriminator.path = "system"
* code.coding ^slicing.rules = #open
* code.coding contains icd-10-gm 0..*
* code.coding[icd-10-gm] ^short = "ICD-10-GM"
* code.coding[icd-10-gm].system 1..
* code.coding[icd-10-gm].system = "http://fhir.de/CodeSystem/dimdi/icd-10-gm" (exactly)
* code.coding[icd-10-gm].version 1..
* code.coding[icd-10-gm].code 1..
* code.coding[icd-10-gm].display 1..

* subject only Reference(CHCRLPatient)
* subject ^short = "Patient"
* subject.reference 1..
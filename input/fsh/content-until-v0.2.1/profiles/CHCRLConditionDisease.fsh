Profile: CHCRLConditionDisease
Parent: Condition
Id: ch-crl-condition-disease
Title: "CH CRL Condition Disease"
Description: "Definition of the Condition for diseases"
* . ^short = "CH CRL Condition Disease"
* extension contains $condition-assertedDate named dateOfDiagnosis 1..1
* category 1..1
* category.coding 1..*
* category.coding.system 1..
* category.coding.system = "http://loinc.org" (exactly)
* category.coding.code 1..
* category.coding.code = #69441-4 (exactly)
* category.coding.display 1..
* category.coding.display = "Other significant causes or conditions of death" (exactly)

* code 1..
* code ^short = "Identification of the disease"
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
Profile: CHCRLConditionDisease
Parent: Condition
Id: ch-crl-condition-disease
Title: "CH CRL Condition Disease Profile"
Description: "Condition for diseases"
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
* code.coding 1..*
* code.coding.system 1..
* code.coding.system = "http://fhir.de/CodeSystem/dimdi/icd-10-gm" (exactly)
* code.coding.version 1..
* code.coding.code 1..
* code.coding.display 1..
* subject only Reference(CHCRLPatient)
* subject ^short = "Patient"
* subject.reference 1..
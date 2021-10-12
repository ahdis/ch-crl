Profile: CHCRLConditionDisease
Parent: Condition
Id: ch-crl-condition-disease
Title: "CH CRL Condition Disease Profile"
Description: "Condition for diseases"
* ^version = "0.3.0"
* ^status = #draft
* ^date = "2019-11-08"
* ^publisher = "Bundesamt für Gesundheit BAG"
* ^contact.name = "Bundesamt für Gesundheit BAG"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.bag.admin.ch/"
* ^jurisdiction = urn:iso:std:iso:3166#CH
* ^copyright = "CC-BY-SA-4.0"
* . ^short = "CH CRL Condition Disease"
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
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
* code only CodeableConcept
* code from $icd-10-gm (preferred)
* code ^short = "Identification of the disease"
* code.coding 1..*
* code.coding.system 1..
* code.coding.version 1..
* code.coding.code 1..
* code.coding.display 1..
* subject only Reference(CHCRLPatient)
* subject ^short = "Patient"
* subject.reference 1..
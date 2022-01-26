Instance: ConcomitantDiseaseB
InstanceOf: CHCRLConditionDisease
Title: "Concomitant Disease B"
Description: "Example for Condition for the diseases"
Usage: #example
* extension.url = "http://hl7.org/fhir/StructureDefinition/condition-assertedDate"
* extension.valueDateTime = "2018-12-15T13:00:00+02:00"
* category = $loinc#69441-4 "Other significant causes or conditions of death"
* code.coding.version = "2019"
* code.coding = $icd-10-gm#I20.9 "Angina pectoris, nicht näher bezeichnet"
* subject = Reference(FranzMinimum)
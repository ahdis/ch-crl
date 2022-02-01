Instance: FinalCauseOfDeath
InstanceOf: CHCRLConditionFinalCauseOfDeath
Title: "Final Cause of Death"
Description: "Example for Condition for the final cause of death"
Usage: #example
* extension.url = "http://hl7.org/fhir/StructureDefinition/condition-assertedDate"
* extension.valueDateTime = "2018-12-15T13:00:00+02:00"
* category = $loinc#79378-6 "Cause of death"
* code.coding.version = "2019"
* code.coding = $icd-10-gm#C34.9 "Bronchus oder Lunge, nicht näher bezeichnet"
* subject = Reference(FranzMinimum)


Instance: FinalCauseOfDeath-LocalCode
InstanceOf: CHCRLConditionFinalCauseOfDeath
Title: "Final Cause of Death - Local Code"
Description: "Example for Condition for the final cause of death"
Usage: #example
* extension.url = "http://hl7.org/fhir/StructureDefinition/condition-assertedDate"
* extension.valueDateTime = "2018-12-15T13:00:00+02:00"
* category = $loinc#79378-6 "Cause of death"
* code.coding[0] = http://example.com/localcode#localCode "Bronchus oder Lunge"
* code.coding[+].version = "2019"
* code.coding[=] = http://fhir.de/CodeSystem/dimdi/icd-10-gm#C34.9 "Bronchus oder Lunge, nicht näher bezeichnet"
* subject = Reference(FranzMinimum)
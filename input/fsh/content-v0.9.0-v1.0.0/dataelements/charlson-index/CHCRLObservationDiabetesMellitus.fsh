Profile: CHCRLObservationDiabetesMellitus
Parent: Observation
Id: ch-crl-observation-diabetesmellitus
Title: "CH CRL Observation Diabetes Mellitus"
Description: "Definition of the Observation for the diabetes mellitus"
* . ^short = "CH CRL Observation Diabetes Mellitus"
* code 1..
* code = $sct#73211009 "Diabetes mellitus (disorder)"
* subject 1..
* subject only Reference(CHCRLPatient)
* subject ^short = "Patient"
* subject.reference 1..
* effectiveDateTime 1..
* performer only Reference(CHCRLPractitioner or CHCRLOrganizationDepartment)
* performer ^short = "Practitioner if resident physician or Organization Department if hospital"
* performer.reference 1..

* valueCodeableConcept 1..
* valueCodeableConcept from NkrsDiabetesMellitus (preferred)
* valueCodeableConcept ^short = "The presence and severity of diabetes mellitus at the time of diagnosis as pre-existing medical condition."
* valueCodeableConcept.coding 1..*
* valueCodeableConcept.coding.system 1..
* valueCodeableConcept.coding.code 1..
* valueCodeableConcept.coding.display 1..


Mapping: NICER-B1-for-CHCRLObservationDiabetesMellitus
Id: NICER-B1
Title: "NATIONAL CANCER DATA DICTIONARY, V 1.1, Part B1: SUPPLEMENTARY VARIABLES for Adults"
Source: CHCRLObservationDiabetesMellitus
Target: "https://www.nacr.ch/assets/files/uploads/b1-datadictionary-supplementaryvariables-adults-v1.1.pdf"
* -> "Diabetes mellitus (Variable number: 10.1)"


Instance: DiabetesMellitus-No
InstanceOf: CHCRLObservationDiabetesMellitus
Title: "Diabetes Mellitus - No"
Description: "Example for Observation for the diabetes mellitus"
Usage: #example
* status = #final
* code = $sct#73211009 "Diabetes mellitus (disorder)"
* subject = Reference(FranzMinimum)
* effectiveDateTime = "2018-12-15"
* valueCodeableConcept = $nkrs-diabetesmellitus#0 "No (score 0)"

Instance: DiabetesMellitus-Uncomplicated
InstanceOf: CHCRLObservationDiabetesMellitus
Title: "Diabetes Mellitus - Uncomplicated"
Description: "Example for Observation for the diabetes mellitus"
Usage: #example
* status = #final
* code = $sct#73211009 "Diabetes mellitus (disorder)"
* subject = Reference(FranzMinimum)
* effectiveDateTime = "2018-12-15"
* valueCodeableConcept = $nkrs-diabetesmellitus#1 "Uncomplicated (score 1)"

Instance: DiabetesMellitus-EndOrganDamage
InstanceOf: CHCRLObservationDiabetesMellitus
Title: "Diabetes Mellitus - End-organ damage"
Description: "Example for Observation for the diabetes mellitus"
Usage: #example
* status = #final
* code = $sct#73211009 "Diabetes mellitus (disorder)"
* subject = Reference(FranzMinimum)
* effectiveDateTime = "2018-12-15"
* valueCodeableConcept = $nkrs-diabetesmellitus#2 "End-organ damage (score 2)"

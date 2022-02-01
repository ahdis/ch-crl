Profile: CHCRLObservationICDO3MorphologyPreTransformation
Parent: Observation
Id: ch-crl-observation-icdo3morphologypretransformation
Title: "CH CRL Observation ICD-O-3 Morphology Pre-transformation"
Description: "Definition of the Observation for the ICD-O-3 morphology term before change of main diagnosis"
* . ^short = "CH CRL Observation ICD-O-3 Morphology Pre-transformation"

* code 1..
* code = $nkrs-variables#8.4 "Morphology term before change of main diagnosis"

* subject 1..
* subject only Reference(CHCRLPatient)
* subject ^short = "Patient"
* subject.reference 1..

* effectiveDateTime 1..

* performer only Reference(CHCRLPractitioner or CHCRLOrganizationDepartment)
* performer ^short = "Practitioner if resident physician or Organization Department if hospital"
* performer.reference 1..

* valueCodeableConcept 1..1
* valueCodeableConcept ^short = "The morphology according to ICD-O-3 in the case that the main diagnosis has been changed."
* valueCodeableConcept.coding ^slicing.discriminator.type = #value
* valueCodeableConcept.coding ^slicing.discriminator.path = "system"
* valueCodeableConcept.coding ^slicing.rules = #open
* valueCodeableConcept.coding contains icd-o-3 0..*
* valueCodeableConcept.coding[icd-o-3] ^short = "ICD-O-3"
* valueCodeableConcept.coding[icd-o-3].system 1..
* valueCodeableConcept.coding[icd-o-3].system = "http://terminology.hl7.org/CodeSystem/icd-o-3" (exactly)
* valueCodeableConcept.coding[icd-o-3].version 1..
* valueCodeableConcept.coding[icd-o-3].code 1..
* valueCodeableConcept.coding[icd-o-3].display 1..


Mapping: NICER-A-for-CHCRLObservationICDO3MorphologyPreTransformation
Id: NICER-A
Title: "NATIONAL CANCER DATA DICTIONARY, V 1.1, Part A: BASIC VARIABLES for Adults, Adolescents, and Children"
Source: CHCRLObservationICDO3MorphologyPreTransformation
Target: "https://www.nacr.ch/assets/files/uploads/a-datadictionary-basicvariables-v1.1.pdf"
* -> "Morphology term before change of main diagnosis (Variable number: 8.4)"


Instance: ICDO3MorphologyPreTransformation-9950-3
InstanceOf: CHCRLObservationICDO3MorphologyPreTransformation
Title: "ICD-O-3 Morphology Pre-transformation - 9950/3"
Description: "Example for Observation for the ICD-O-3 morphology term before change of main diagnosis"
Usage: #example
* status = #final
* code = $nkrs-variables#8.4 "Morphology term before change of main diagnosis"
* subject = Reference(FranzMinimum)
* effectiveDateTime = "2018-12-15"
* valueCodeableConcept.coding.version = "3.2"
* valueCodeableConcept.coding = $icd-o-3#9950/3 "Polycythaemia vera"
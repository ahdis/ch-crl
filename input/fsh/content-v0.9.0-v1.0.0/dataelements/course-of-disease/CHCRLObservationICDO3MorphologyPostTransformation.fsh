Profile: CHCRLObservationICDO3MorphologyPostTransformation
Parent: Observation
Id: ch-crl-observation-icdo3morphologyposttransformation
Title: "CH CRL Observation ICD-O-3 Morphology Post-transformation"
Description: "Definition of the Observation for the ICD-O-3 morphology term after transformation"
* . ^short = "CH CRL Observation ICD-O-3 Morphology Post-transformation"

* code 1..
* code = $nkrs-variables#8.5 "Morphology term after Transformation"

* subject 1..
* subject only Reference(CHCRLPatient)
* subject ^short = "Patient"
* subject.reference 1..

* effectiveDateTime 1..

* performer only Reference(CHCRLPractitioner or CHCRLOrganizationDepartment)
* performer ^short = "Practitioner if resident physician or Organization Department if hospital"
* performer.reference 1..

* valueCodeableConcept 1..1
* valueCodeableConcept ^short = "The morphology term according to ICD-O-3 after transformation."
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


Mapping: NICER-A-for-CHCRLObservationICDO3MorphologyPostTransformation
Id: NICER-A
Title: "NATIONAL CANCER DATA DICTIONARY, V 1.1, Part A: BASIC VARIABLES for Adults, Adolescents, and Children"
Source: CHCRLObservationICDO3MorphologyPostTransformation
Target: "https://www.nacr.ch/assets/files/uploads/a-datadictionary-basicvariables-v1.1.pdf"
* -> "Morphology term after Transformation (Variable number: 8.5)"


Instance: ICDO3MorphologyPostTransformation-9861-3
InstanceOf: CHCRLObservationICDO3MorphologyPostTransformation
Title: "ICD-O-3 Morphology Post-transformation - 9861/3"
Description: "Example for Observation for the ICD-O-3 morphology term after transformation"
Usage: #example
* status = #final
* code = $nkrs-variables#8.5 "Morphology term after Transformation"
* subject = Reference(FranzMinimum)
* effectiveDateTime = "2018-12-15"
* valueCodeableConcept.coding.version = "3.2"
* valueCodeableConcept.coding = $icd-o-3#9861/3 "Akute myeloische Leukämie o.n.A."
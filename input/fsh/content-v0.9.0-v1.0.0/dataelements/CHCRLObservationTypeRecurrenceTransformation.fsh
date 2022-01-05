// http://build.fhir.org/ig/HL7/fhir-mCODE-ig/StructureDefinition-mcode-cancer-disease-status.html

Profile: CHCRLObservationTypeRecurrenceTransformation
Parent: Observation
Id: ch-crl-observation-typerecurrencetransformation
Title: "CH CRL Observation Type of Recurrence/Transformation"
Description: "Definition of the Observation for the type of recurrence/transformation"
* . ^short = "CH CRL Observation Type of Recurrence/Transformation"
* code 1..
* code = $loinc#97509-4 "Cancer disease progression"
* subject 1..
* subject only Reference(CHCRLPatient)
* subject ^short = "Patient"
* subject.reference 1..
* effectiveDateTime 1..
* performer only Reference(CHCRLPractitioner or CHCRLOrganizationDepartment)
* performer ^short = "Practitioner if resident physician or Organization Department if hospital"
* performer.reference 1..

* valueCodeableConcept from NkrsTypeRecurrenceTransformation (required)
* valueCodeableConcept ^short = "The type of first recurrence of the disease or the occurrence of a transformation."
* valueCodeableConcept.coding 1..*
* valueCodeableConcept.coding.system 1..
* valueCodeableConcept.coding.code 1..
* valueCodeableConcept.coding.display 1..

* dataAbsentReason ^short = "Insufficient information to differentiate between Progression and Relapse."
* dataAbsentReason.coding 1..
* dataAbsentReason.coding.system 1..
* dataAbsentReason.coding.system = "http://terminology.hl7.org/CodeSystem/data-absent-reason" (exactly)
* dataAbsentReason.coding.code 1..
* dataAbsentReason.coding.code = #unknown (exactly)
* dataAbsentReason.coding.display 1..
* dataAbsentReason.coding.display = "Unknown" (exactly)

* hasMember ..*
* hasMember only Reference(Observation)
* hasMember ^slicing.discriminator.type = #profile
* hasMember ^slicing.discriminator.path = "resolve()"
* hasMember ^slicing.ordered = false
* hasMember ^slicing.rules = #open
* hasMember contains
    ch-crl-icdo3morphologypretransformation 0..1 and 
    ch-crl-icdo3morphologyposttransformation 0..1
* hasMember[ch-crl-icdo3morphologypretransformation] only Reference(CHCRLObservationICDO3MorphologyPreTransformation)
* hasMember[ch-crl-icdo3morphologypretransformation] ^short = "ICD-O morphology pre-transformation"
* hasMember[ch-crl-icdo3morphologyposttransformation] only Reference(CHCRLObservationICDO3MorphologyPostTransformation)
* hasMember[ch-crl-icdo3morphologyposttransformation] ^short = "ICD-O morphology post-transformation"


Mapping: NICER-A-for-CHCRLObservationTypeRecurrenceTransformation
Id: NICER-A
Title: "NATIONAL CANCER DATA DICTIONARY, V 1.1, Part A: BASIC VARIABLES for Adults, Adolescents, and Children"
Source: CHCRLObservationTypeRecurrenceTransformation
Target: "https://www.nacr.ch/assets/files/uploads/a-datadictionary-basicvariables-v1.1.pdf"
* effectiveDateTime -> "Date of recurrence(s)/transformation(s) (Variable number: 8.2.1)"
* valueCodeableConcept -> "Type of recurrence(s)/transformation(s) (Variable number: 8.1)"


Instance: TypeRecurrenceTransformation-Relapse
InstanceOf: CHCRLObservationTypeRecurrenceTransformation
Title: "Type of Recurrence/Transformation - Relapse"
Description: "Example for Observation for the type of recurrence/transformation"
Usage: #example
* status = #final
* code = $loinc#97509-4 "Cancer disease progression"
* subject = Reference(FranzMinimum)
* effectiveDateTime = "2018-12-15"
* valueCodeableConcept = $nkrs-typerecurrencetransformation#4 "Relapse"
* hasMember[ch-crl-icdo3morphologypretransformation] = Reference(ICDO3MorphologyPreTransformation-8000-0)
* hasMember[ch-crl-icdo3morphologyposttransformation] = Reference(ICDO3MorphologyPostTransformation-8000-0)


Instance: TypeRecurrenceTransformation-Unknown
InstanceOf: CHCRLObservationTypeRecurrenceTransformation
Title: "Type of Recurrence/Transformation - Unknown"
Description: "Example for Observation for the type of recurrence/transformation"
Usage: #example
* status = #final
* code = $loinc#97509-4 "Cancer disease progression"
* subject = Reference(FranzMinimum)
* effectiveDateTime = "2018-12-15"
* dataAbsentReason = $data-absent-reason#unknown "Unknown"
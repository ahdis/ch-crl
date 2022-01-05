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

/*
* hasMember ..*
* hasMember only Reference(Observation)
* hasMember ^slicing.discriminator.type = #profile
* hasMember ^slicing.discriminator.path = "resolve()"
* hasMember ^slicing.ordered = false
* hasMember ^slicing.rules = #open
* hasMember contains
    ch-crl-gleasonBiopsyMostCommonGrade 0..1 and
    ch-crl-gleasonBiopsySecondMostCommonOrHighestGrade 0..1 and
    ch-crl-gleasonExcisionMostCommonGrade 0..1 and
    ch-crl-gleasonExcisionSecondMostCommonOrHighestGrade 0..1 
* hasMember[ch-crl-gleasonBiopsyMostCommonGrade] only Reference(CHCRLObservationGleasonBiopsyMostCommonGrade)
* hasMember[ch-crl-gleasonBiopsyMostCommonGrade] ^short = "Gleason biopsy most common grade"
* hasMember[ch-crl-gleasonBiopsySecondMostCommonOrHighestGrade] only Reference(CHCRLObservationGleasonBiopsySecondMostCommonOrHighestGrade)
* hasMember[ch-crl-gleasonBiopsySecondMostCommonOrHighestGrade] ^short = "Gleason biopsy second most common or highest grade"
* hasMember[ch-crl-gleasonExcisionMostCommonGrade] only Reference(CHCRLObservationGleasonExcisionMostCommonGrade)
* hasMember[ch-crl-gleasonExcisionMostCommonGrade] ^short = "Gleason excision most common grade"
* hasMember[ch-crl-gleasonExcisionSecondMostCommonOrHighestGrade] only Reference(CHCRLObservationGleasonExcisionSecondMostCommonOrHighestGrade)
* hasMember[ch-crl-gleasonExcisionSecondMostCommonOrHighestGrade] ^short = "Gleason excision second most common or highest grade"
*/

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
/* hasMember[ch-crl-gleasonBiopsyMostCommonGrade] = Reference(GleasonBiopsyMostCommonGrade-2)
* hasMember[ch-crl-gleasonBiopsySecondMostCommonOrHighestGrade] = Reference(GleasonBiopsySecondMostCommonOrHighestGrade-3)
* hasMember[ch-crl-gleasonExcisionMostCommonGrade] = Reference(GleasonExcisionMostCommonGrade-3)
* hasMember[ch-crl-gleasonExcisionSecondMostCommonOrHighestGrade] = Reference(GleasonExcisionSecondMostCommonOrHighestGrade-3)
*/

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
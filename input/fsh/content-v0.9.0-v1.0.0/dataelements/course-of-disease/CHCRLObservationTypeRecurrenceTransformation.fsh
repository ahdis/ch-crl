// http://build.fhir.org/ig/HL7/fhir-mCODE-ig/StructureDefinition-mcode-cancer-disease-status.html

Profile: CHCRLObservationTypeRecurrenceTransformation
Parent: Observation
Id: ch-crl-observation-typerecurrencetransformation
Title: "CH CRL Observation Type of Recurrence/Transformation"
Description: "Definition of the Observation for the type of recurrence/transformation"
* obeys ch-crl-obs-1 and ch-crl-obs-4
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
    ch-crl-icdo3morphologyposttransformation 0..1 and 
    ch-crl-topographypostdiagnosismetastases 0..1

* hasMember[ch-crl-icdo3morphologypretransformation] only Reference(CHCRLObservationICDO3MorphologyPreTransformation)
* hasMember[ch-crl-icdo3morphologypretransformation] ^short = "ICD-O morphology pre-transformation (if 'code = 2 Transformation')"

* hasMember[ch-crl-icdo3morphologyposttransformation] only Reference(CHCRLObservationICDO3MorphologyPostTransformation)
* hasMember[ch-crl-icdo3morphologyposttransformation] ^short = "ICD-O morphology post-transformation (if 'code = 2 Transformation')"

* hasMember[ch-crl-topographypostdiagnosismetastases] only Reference(CHCRLObservationTopographyPostDiagnosisMetastases)
* hasMember[ch-crl-topographypostdiagnosismetastases] ^short = "Topography of post-diagnosis metastases (if 'code = 3 Metastasis')"


Mapping: NICER-A-for-CHCRLObservationTypeRecurrenceTransformation
Id: NICER-A
Title: "NATIONAL CANCER DATA DICTIONARY, V 1.1, Part A: BASIC VARIABLES for Adults, Adolescents, and Children"
Source: CHCRLObservationTypeRecurrenceTransformation
Target: "https://www.nacr.ch/assets/files/uploads/a-datadictionary-basicvariables-v1.1.pdf"
* effectiveDateTime -> "Date of recurrence(s)/transformation(s) (Variable number: 8.2.1)"
* valueCodeableConcept -> "Type of recurrence(s)/transformation(s) (Variable number: 8.1)"


Instance: TypeRecurrenceTransformation-Progression
InstanceOf: CHCRLObservationTypeRecurrenceTransformation
Title: "Type of Recurrence/Transformation - Progression"
Description: "Example for Observation for the type of recurrence/transformation"
Usage: #example
* status = #final
* code = $loinc#97509-4 "Cancer disease progression"
* subject = Reference(FranzMinimum)
* effectiveDateTime = "2018-12-15"
* valueCodeableConcept = $nkrs-typerecurrencetransformation#1 "Progression"
// * hasMember[ch-crl-icdo3morphologypretransformation] -> no value if progression
// * hasMember[ch-crl-icdo3morphologyposttransformation] -> no value if progression
// * hasMember[ch-crl-topographypostdiagnosismetastases] -> no value if progression


Instance: TypeRecurrenceTransformation-Transformation
InstanceOf: CHCRLObservationTypeRecurrenceTransformation
Title: "Type of Recurrence/Transformation - Transformation"
Description: "Example for Observation for the type of recurrence/transformation"
Usage: #example
* status = #final
* code = $loinc#97509-4 "Cancer disease progression"
* subject = Reference(FranzMinimum)
* effectiveDateTime = "2018-12-15"
* valueCodeableConcept = $nkrs-typerecurrencetransformation#2 "Transformation"
* hasMember[ch-crl-icdo3morphologypretransformation] = Reference(ICDO3MorphologyPreTransformation-9950-3)
* hasMember[ch-crl-icdo3morphologyposttransformation] = Reference(ICDO3MorphologyPostTransformation-9861-3)
// * hasMember[ch-crl-topographypostdiagnosismetastases] -> no value if progression


Instance: TypeRecurrenceTransformation-Metastasis
InstanceOf: CHCRLObservationTypeRecurrenceTransformation
Title: "Type of Recurrence/Transformation - Metastasis"
Description: "Example for Observation for the type of recurrence/transformation"
Usage: #example
* status = #final
* code = $loinc#97509-4 "Cancer disease progression"
* subject = Reference(FranzMinimum)
* effectiveDateTime = "2018-12-15"
* valueCodeableConcept = $nkrs-typerecurrencetransformation#3 "Metastasis"
// * hasMember[ch-crl-icdo3morphologypretransformation] -> no value if metastasis
// * hasMember[ch-crl-icdo3morphologyposttransformation] -> no value if metastasis
* hasMember[ch-crl-topographypostdiagnosismetastases] = Reference(TopographyPostDiagnosisMetastases-HEP)


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
// * hasMember[ch-crl-icdo3morphologypretransformation] -> no value if relapse
// * hasMember[ch-crl-icdo3morphologyposttransformation] -> no value if relapse
// * hasMember[ch-crl-topographypostdiagnosismetastases] -> no value if relapse


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


// ------- Wrong examples ----------- //
Instance: TypeRecurrenceTransformation-Progression-WrongExample1
InstanceOf: CHCRLObservationTypeRecurrenceTransformation
Title: "Type of Recurrence/Transformation - Wrong Example 1"
Description: "Example for Observation for the type of recurrence/transformation"
Usage: #example
* status = #final
* code = $loinc#97509-4 "Cancer disease progression"
* subject = Reference(FranzMinimum)
* effectiveDateTime = "2018-12-15"
* valueCodeableConcept = $nkrs-typerecurrencetransformation#1 "Progression"
// ICD-O morphology pre-transformation (if 'code = 2 Transformation') => ch-crl-obs-4
* hasMember[ch-crl-icdo3morphologypretransformation] = Reference(ICDO3MorphologyPreTransformation-9950-3)


Instance: TypeRecurrenceTransformation-Progression-WrongExample2
InstanceOf: CHCRLObservationTypeRecurrenceTransformation
Title: "Type of Recurrence/Transformation - Wrong Example 2"
Description: "Example for Observation for the type of recurrence/transformation"
Usage: #example
* status = #final
* code = $loinc#97509-4 "Cancer disease progression"
* subject = Reference(FranzMinimum)
* effectiveDateTime = "2018-12-15"
* valueCodeableConcept = $nkrs-typerecurrencetransformation#2 "Transformation"
// Topography of post-diagnosis metastases (if 'code = 3 Metastasis') => TBD
* hasMember[ch-crl-topographypostdiagnosismetastases] = Reference(TopographyPostDiagnosisMetastases-HEP)

Profile: CHCRLObservationTopographyMetastasesAtDiagnosis
Parent: Observation
Id: ch-crl-observation-topographymetastasesatdiagnosis
Title: "CH CRL Observation Topography of Metastases at Diagnosis"
Description: "Definition of the Observation for the topography of metastases at diagnosis"
* . ^short = "CH CRL Observation Topography of Metastases at Diagnosis"
* code 1..
* code = $loinc#33733-7 "Sites of distant metastasis"
* subject 1..
* subject only Reference(CHCRLPatient)
* subject ^short = "Patient"
* subject.reference 1..
* effectiveDateTime 1..
* performer only Reference(CHCRLPractitioner or CHCRLOrganizationDepartment)
* performer ^short = "Practitioner if resident physician or Organization Department if hospital"
* performer.reference 1..

* valueCodeableConcept from NkrsTopographyMetastasesAtDiagnosis (required)
* valueCodeableConcept ^short = "The distant site(s) of metastatic involvement at time of diagnosis"
* valueCodeableConcept.coding 1..*
* valueCodeableConcept.coding.system 1..
* valueCodeableConcept.coding.version ^short = "Version if system is ICD-O-3"
* valueCodeableConcept.coding.code 1..
* valueCodeableConcept.coding.display 1..

* dataAbsentReason ^short = "No information on the topography of metastases available, e.g. poly-metastatic disease."
* dataAbsentReason.coding 1..*
* dataAbsentReason.coding.system 1..
* dataAbsentReason.coding.system = "http://terminology.hl7.org/CodeSystem/data-absent-reason" (exactly)
* dataAbsentReason.coding.code 1..
* dataAbsentReason.coding.code = #unknown (exactly)
* dataAbsentReason.coding.display 1..
* dataAbsentReason.coding.display = "Unknown" (exactly)


Mapping: NICER-A-for-CHCRLObservationTopographyMetastasesAtDiagnosis
Id: NICER-A
Title: "NATIONAL CANCER DATA DICTIONARY, V 1.1, Part A: BASIC VARIABLES for Adults, Adolescents, and Children"
Source: CHCRLObservationTopographyMetastasesAtDiagnosis
Target: "https://www.nacr.ch/assets/files/uploads/a-datadictionary-basicvariables-v1.1.pdf"
* -> "Topography of metastases at diagnosis (Variable number: 4.42)"


Instance: TopographyMetastasesAtDiagnosis-C77
InstanceOf: CHCRLObservationTopographyMetastasesAtDiagnosis
Title: "Topography of Metastases at Diagnosis - C77"
Description: "Example for Observation for the topography of metastases at diagnosis"
Usage: #example
* status = #final
* code = $loinc#33733-7 "Sites of distant metastasis"
* subject = Reference(FranzMinimum)
* effectiveDateTime = "2018-12-15"
* valueCodeableConcept = $icd-10-gm#C77 "Secondary and unspecified malignant neoplasm of lymph nodes"

Instance: TopographyMetastasesAtDiagnosis-C42.1
InstanceOf: CHCRLObservationTopographyMetastasesAtDiagnosis
Title: "Topography of Metastases at Diagnosis - C42.1"
Description: "Example for Observation for the topography of metastases at diagnosis"
Usage: #example
* status = #final
* code = $loinc#33733-7 "Sites of distant metastasis"
* subject = Reference(FranzMinimum)
* effectiveDateTime = "2018-12-15"
* valueCodeableConcept.coding.version = "3.2"
* valueCodeableConcept.coding = $icd-o-3#C42.1 "Bone Marrow"

Instance: TopographyMetastasesAtDiagnosis-Other
InstanceOf: CHCRLObservationTopographyMetastasesAtDiagnosis
Title: "Topography of Metastases at Diagnosis - Other"
Description: "Example for Observation for the topography of metastases at diagnosis"
Usage: #example
* status = #final
* code = $loinc#33733-7 "Sites of distant metastasis"
* subject = Reference(FranzMinimum)
* effectiveDateTime = "2018-12-15"
* valueCodeableConcept = $sct#74964007 "Other (qualifier value)"

Instance: TopographyMetastasesAtDiagnosis-Unknown
InstanceOf: CHCRLObservationTopographyMetastasesAtDiagnosis
Title: "Topography of Metastases at Diagnosis - Unknown"
Description: "Example for Observation for the topography of metastases at diagnosis"
Usage: #example
* status = #final
* code = $loinc#33733-7 "Sites of distant metastasis"
* subject = Reference(FranzMinimum)
* effectiveDateTime = "2018-12-15"
* dataAbsentReason = $data-absent-reason#unknown "Unknown"
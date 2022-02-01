Profile: CHCRLObservationTopographyPostDiagnosisMetastases
Parent: Observation
Id: ch-crl-observation-topographypostdiagnosismetastases
Title: "CH CRL Observation Topography of Post-diagnosis Metastases"
Description: "Definition of the Observation for the topography of post-diagnosis metastases"
* obeys ch-crl-obs-1
* . ^short = "CH CRL Observation Topography of Post-diagnosis Metastases"

* code 1..
* code = $nkrs-variables#8.6 "Topography(s) of post-diagnosis metastases"

* subject 1..
* subject only Reference(CHCRLPatient)
* subject ^short = "Patient"
* subject.reference 1..

* effectiveDateTime 1..

* performer only Reference(CHCRLPractitioner or CHCRLOrganizationDepartment)
* performer ^short = "Practitioner if resident physician or Organization Department if hospital"
* performer.reference 1..

* valueCodeableConcept from NkrsTopographyMetastases (preferred)
* valueCodeableConcept ^short = "The distant site(s) of metastatic involvement after disease recurrence"
* valueCodeableConcept.coding 1..*
* valueCodeableConcept.coding.system 1..
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


Mapping: NICER-A-for-CHCRLObservationTopographyPostDiagnosisMetastases
Id: NICER-A
Title: "NATIONAL CANCER DATA DICTIONARY, V 1.1, Part A: BASIC VARIABLES for Adults, Adolescents, and Children"
Source: CHCRLObservationTopographyPostDiagnosisMetastases
Target: "https://www.nacr.ch/assets/files/uploads/a-datadictionary-basicvariables-v1.1.pdf"
* -> "Topography(s) of post-diagnosis metastases (Variable number: 8.6)"


Instance: TopographyPostDiagnosisMetastases-HEP
InstanceOf: CHCRLObservationTopographyPostDiagnosisMetastases
Title: "Topography of Post-diagnosis Metastases - HEP"
Description: "Example for Observation for the topography of post-diagnosis metastases"
Usage: #example
* status = #final
* code = $nkrs-variables#8.6 "Topography(s) of post-diagnosis metastases"
* subject = Reference(FranzMinimum)
* effectiveDateTime = "2018-12-15"
* valueCodeableConcept = $nkrs-topographymetastases#3 "HEP"

Instance: TopographyPostDiagnosisMetastases-Unknown
InstanceOf: CHCRLObservationTopographyPostDiagnosisMetastases
Title: "Topography of Post-diagnosis Metastases - Unknown"
Description: "Example for Observation for the topography of post-diagnosis metastasess"
Usage: #example
* status = #final
* code = $nkrs-variables#8.6 "Topography(s) of post-diagnosis metastases"
* subject = Reference(FranzMinimum)
* effectiveDateTime = "2018-12-15"
* dataAbsentReason = $data-absent-reason#unknown "Unknown"
Profile: CHCRLObservationSentinelLymphNodeAssessment
Parent: Observation
Id: ch-crl-observation-sentinellymphnodeassessment
Title: "CH CRL Observation Sentinel Lymph Node Assessment"
Description: "Definition of the Observation for the sentinel lymph node assessment"
* obeys ch-crl-obs-1
* . ^short = "CH CRL Observation Sentinel Lymph Node Assessment"
* code 1..
* code = $loinc#98278-5 "Protocol used for examination of sentinel lymph nodes"
* subject 1..
* subject only Reference(CHCRLPatient)
* subject ^short = "Patient"
* subject.reference 1..
* effectiveDateTime 1..
* performer only Reference(CHCRLPractitioner or CHCRLOrganizationDepartment)
* performer ^short = "Practitioner if resident physician or Organization Department if hospital"
* performer.reference 1..

* valueCodeableConcept from NkrsSentinelLymphNodeAssessment (preferred)
* valueCodeableConcept ^short = "Whether the sentinel lymph node is excised and the result of the examination"
* valueCodeableConcept.coding 1..*
* valueCodeableConcept.coding.system 1..
* valueCodeableConcept.coding.code 1..
* valueCodeableConcept.coding.display 1..

* dataAbsentReason ^short = "No information in the patient’s reports whether the sentinel lymph node is excised and the result of the examination"
* dataAbsentReason.coding 1..*
* dataAbsentReason.coding.system 1..
* dataAbsentReason.coding.system = "http://terminology.hl7.org/CodeSystem/data-absent-reason" (exactly)
* dataAbsentReason.coding.code 1..
* dataAbsentReason.coding.code = #unknown (exactly)
* dataAbsentReason.coding.display 1..
* dataAbsentReason.coding.display = "Unknown" (exactly)


Mapping: NICER-A-for-CHCRLObservationSentinelLymphNodeAssessment
Id: NICER-A
Title: "NATIONAL CANCER DATA DICTIONARY, V 1.1, Part A: BASIC VARIABLES for Adults, Adolescents, and Children"
Source: CHCRLObservationSentinelLymphNodeAssessment
Target: "https://www.nacr.ch/assets/files/uploads/a-datadictionary-basicvariables-v1.1.pdf"
* -> "Sentinel lymph node assessment (Variable number: 6.5)"


Instance: SentinelLymphNodeAssessment-N0
InstanceOf: CHCRLObservationSentinelLymphNodeAssessment
Title: "Sentinel Lymph Node Assessment - N0"
Description: "Example for Observation for the sentinel lymph node assessment"
Usage: #example
* status = #final
* code = $loinc#98278-5 "Protocol used for examination of sentinel lymph nodes"
* subject = Reference(FranzMinimum)
* effectiveDateTime = "2018-12-15"
* valueCodeableConcept = $nkrs-sentinellymphnodeassessment#0 "N0"

Instance: SentinelLymphNodeAssessment-Unknown
InstanceOf: CHCRLObservationSentinelLymphNodeAssessment
Title: "Sentinel Lymph Node Assessment - Unknown"
Description: "Example for Observation for the sentinel lymph node assessment"
Usage: #example
* status = #final
* code = $loinc#98278-5 "Protocol used for examination of sentinel lymph nodes"
* subject = Reference(FranzMinimum)
* effectiveDateTime = "2018-12-15"
* dataAbsentReason = $data-absent-reason#unknown "Unknown"
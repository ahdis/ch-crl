Profile: CHCRLObservationNumberExaminedSentinelLymphNodes
Parent: Observation
Id: ch-crl-observation-numberexaminedsentinellymphnodes
Title: "CH CRL Observation Number of Examined Sentinel Lymph Nodes"
Description: "Definition of the Observation for the number of examined sentinel lymph nodes"
* obeys ch-crl-obs-1
* . ^short = "CH CRL Observation Number of Examined Sentinel Lymph Nodes"
* code 1..
* code = $loinc#85347-3 "Sentinel lymph nodes examined [#] in Cancer specimen by Light microscopy"
* subject 1..
* subject only Reference(CHCRLPatient)
* subject ^short = "Patient"
* subject.reference 1..
* effectiveDateTime 1..
* performer only Reference(CHCRLPractitioner or CHCRLOrganizationDepartment)
* performer ^short = "Practitioner if resident physician or Organization Department if hospital"
* performer.reference 1..

* valueQuantity ^short = "The total number of sentinel lymph nodes that were excised and examined by the pathologist"
* valueQuantity.value 1..

* dataAbsentReason ^short = "No information whether sentinel lymph nodes were excised or not. OR Sentinel lymph nodes were excised, but no information on the number."
* dataAbsentReason.coding 1..*
* dataAbsentReason.coding.system 1..
* dataAbsentReason.coding.system = "http://terminology.hl7.org/CodeSystem/data-absent-reason" (exactly)
* dataAbsentReason.coding.code 1..
* dataAbsentReason.coding.code = #unknown (exactly)
* dataAbsentReason.coding.display 1..
* dataAbsentReason.coding.display = "Unknown" (exactly)


Mapping: NICER-A-for-CHCRLObservationNumberExaminedSentinelLymphNodes
Id: NICER-A
Title: "NATIONAL CANCER DATA DICTIONARY, V 1.1, Part A: BASIC VARIABLES for Adults, Adolescents, and Children"
Source: CHCRLObservationNumberExaminedSentinelLymphNodes
Target: "https://www.nacr.ch/assets/files/uploads/a-datadictionary-basicvariables-v1.1.pdf"
* -> "Number of examined sentinel lymph nodes (Variable number: 6.6)"


Instance: NumberExaminedSentinelLymphNodes-4
InstanceOf: CHCRLObservationNumberExaminedSentinelLymphNodes
Title: "Number of Examined Sentinel Lymph Nodes - 4"
Description: "Example for Observation for the number of examined sentinel lymph nodes"
Usage: #example
* status = #final
* code = $loinc#85347-3 "Sentinel lymph nodes examined [#] in Cancer specimen by Light microscopy"
* subject = Reference(FranzMinimum)
* effectiveDateTime = "2018-12-15"
* valueQuantity.value = 4

Instance: NumberExaminedSentinelLymphNodes-Unknown
InstanceOf: CHCRLObservationNumberExaminedSentinelLymphNodes
Title: "Number of Examined Sentinel Lymph Nodes - Unknown"
Description: "Example for Observation for the number of examined sentinel lymph nodes"
Usage: #example
* status = #final
* code = $loinc#85347-3 "Sentinel lymph nodes examined [#] in Cancer specimen by Light microscopy"
* subject = Reference(FranzMinimum)
* effectiveDateTime = "2018-12-15"
* dataAbsentReason = $data-absent-reason#unknown "Unknown"
Profile: CHCRLObservationNumberPositiveSentinelLymphNodes
Parent: Observation
Id: ch-crl-observation-numberpositivesentinellymphnodes
Title: "CH CRL Observation Number of Positive Sentinel Lymph Nodes"
Description: "Definition of the Observation for the number of positive sentinel lymph nodes"
* obeys ch-crl-obs-1
* . ^short = "CH CRL Observation Number of Positive Sentinel Lymph Nodes"
* code 1..
* code = $loinc#92832-5 "Sentinel lymph nodes with metastasis [#] in Cancer specimen"
* subject 1..
* subject only Reference(CHCRLPatient)
* subject ^short = "Patient"
* subject.reference 1..
* effectiveDateTime 1..
* performer only Reference(CHCRLPractitioner or CHCRLOrganizationDepartment)
* performer ^short = "Practitioner if resident physician or Organization Department if hospital"
* performer.reference 1..

* valueQuantity ^short = "The number of sentinel lymph nodes examined by the pathologist and found to contain metastases"
* valueQuantity.value 1..

* dataAbsentReason ^short = "No information whether sentinel lymph nodes were invaded or not. OR Sentinel lymph nodes were invaded, but no information on the number."
* dataAbsentReason.coding 1..*
* dataAbsentReason.coding.system 1..
* dataAbsentReason.coding.system = "http://terminology.hl7.org/CodeSystem/data-absent-reason" (exactly)
* dataAbsentReason.coding.code 1..
* dataAbsentReason.coding.code = #unknown (exactly)
* dataAbsentReason.coding.display 1..
* dataAbsentReason.coding.display = "Unknown" (exactly)


Mapping: NICER-A-for-CHCRLObservationNumberPositiveSentinelLymphNodes
Id: NICER-A
Title: "NATIONAL CANCER DATA DICTIONARY, V 1.1, Part A: BASIC VARIABLES for Adults, Adolescents, and Children"
Source: CHCRLObservationNumberPositiveSentinelLymphNodes
Target: "https://www.nacr.ch/assets/files/uploads/a-datadictionary-basicvariables-v1.1.pdf"
* -> "Number of positive sentinel lymph nodes (Variable number: 6.7)"


Instance: NumberPositiveSentinelLymphNodes-6
InstanceOf: CHCRLObservationNumberPositiveSentinelLymphNodes
Title: "Number of Positive Sentinel Lymph Nodes - 6"
Description: "Example for Observation for the number of positive sentinel lymph nodes"
Usage: #example
* status = #final
* code = $loinc#92832-5 "Sentinel lymph nodes with metastasis [#] in Cancer specimen"
* subject = Reference(FranzMinimum)
* effectiveDateTime = "2018-12-15"
* valueQuantity.value = 6

Instance: NumberPositiveSentinelLymphNodes-Unknown
InstanceOf: CHCRLObservationNumberPositiveSentinelLymphNodes
Title: "Number of Positive Sentinel Lymph Nodes - Unknown"
Description: "Example for Observation for the number of positive sentinel lymph nodes"
Usage: #example
* status = #final
* code = $loinc#92832-5 "Sentinel lymph nodes with metastasis [#] in Cancer specimen"
* subject = Reference(FranzMinimum)
* effectiveDateTime = "2018-12-15"
* dataAbsentReason = $data-absent-reason#unknown "Unknown"
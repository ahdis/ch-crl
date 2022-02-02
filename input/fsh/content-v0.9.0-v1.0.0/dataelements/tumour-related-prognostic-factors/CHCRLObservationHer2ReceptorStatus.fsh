Profile: CHCRLObservationHer2ReceptorStatus
Parent: Observation
Id: ch-crl-observation-her2receptorstatus
Title: "CH CRL Observation Her2 Receptor Status"
Description: "Definition of the Observation for the Her2 receptor status"
* obeys ch-crl-obs-1
* . ^short = "CH CRL Observation Her2 Receptor Status"
* code 1..
* code = $loinc#31150-6 "ERBB2 gene duplication [Presence] in Tissue by FISH"
* subject 1..
* subject only Reference(CHCRLPatient)
* subject ^short = "Patient"
* subject.reference 1..
* effectiveDateTime 1..
* performer only Reference(CHCRLPractitioner or CHCRLOrganizationDepartment)
* performer ^short = "Practitioner if resident physician or Organization Department if hospital"
* performer.reference 1..

* valueCodeableConcept obeys nkrs-her2receptorstatus
* valueCodeableConcept from NkrsHer2ReceptorStatus (preferred)
* valueCodeableConcept ^short = "The Her2 (human epidermal growth factor receptor 2) expression status of the tumour."
* valueCodeableConcept.coding 1..*
* valueCodeableConcept.coding.system 1..
* valueCodeableConcept.coding.code 1..
* valueCodeableConcept.coding.display 1..

* dataAbsentReason ^short = "The Her2 expression status of the tumour is not performed or unknown whether performed or not"
* dataAbsentReason.coding obeys ch-crl-obs-2
* dataAbsentReason.coding 1..*
* dataAbsentReason.coding.system 1..
* dataAbsentReason.coding.system = "http://terminology.hl7.org/CodeSystem/data-absent-reason" (exactly)
* dataAbsentReason.coding.code 1..
* dataAbsentReason.coding.code ^short = "If receptor status not performed than 'value=not-performed'. 
If receptor status unknown whether performed or not than 'value=unknown'."
* dataAbsentReason.coding.display 1..


Mapping: NICER-A-for-CHCRLObservationHer2ReceptorStatus
Id: NICER-A
Title: "NATIONAL CANCER DATA DICTIONARY, V 1.1, Part A: BASIC VARIABLES for Adults, Adolescents, and Children"
Source: CHCRLObservationHer2ReceptorStatus
Target: "https://www.nacr.ch/assets/files/uploads/a-datadictionary-basicvariables-v1.1.pdf"
* -> "Her2 receptor status (Variable number: 5.1.3)"


Instance: Her2ReceptorStatus-Overexpressed
InstanceOf: CHCRLObservationHer2ReceptorStatus
Title: "Her2 Receptor Status - Overexpressed"
Description: "Example for Observation for the Her2 receptor status"
Usage: #example
* status = #final
* code = $loinc#31150-6 "ERBB2 gene duplication [Presence] in Tissue by FISH"
* subject = Reference(FranzMinimum)
* effectiveDateTime = "2018-12-15"
* valueCodeableConcept = $nkrs-her2receptorstatus#1 "Her2 overexpressed or gene amplified"

Instance: Her2ReceptorStatus-NotPerformed
InstanceOf: CHCRLObservationHer2ReceptorStatus
Title: "Her2 Receptor Status - Not Performed"
Description: "Example for Observation for the Her2 receptor status"
Usage: #example
* status = #final
* code = $loinc#31150-6 "ERBB2 gene duplication [Presence] in Tissue by FISH"
* subject = Reference(FranzMinimum)
* effectiveDateTime = "2018-12-15"
* dataAbsentReason = $data-absent-reason#not-performed "Not Performed"

Instance: Her2ReceptorStatus-Unknown
InstanceOf: CHCRLObservationHer2ReceptorStatus
Title: "Her2 Receptor Status - Unknown"
Description: "Example for Observation for the Her2 receptor status"
Usage: #example
* status = #final
* code = $loinc#31150-6 "ERBB2 gene duplication [Presence] in Tissue by FISH"
* subject = Reference(FranzMinimum)
* effectiveDateTime = "2018-12-15"
* dataAbsentReason = $data-absent-reason#unknown "Unknown"
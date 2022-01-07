Profile: CHCRLObservationICCC3Code
Parent: Observation
Id: ch-crl-observation-iccc3code
Title: "CH CRL Observation ICCC-3 Code"
Description: "Definition of the Observation for the ICCC-3 code"
* . ^short = "CH CRL Observation ICCC-3 Code"
* code 1..
* code = $nkrs-basicvariables#3.9.2 "ICCC-3 code"
* subject 1..
* subject only Reference(CHCRLPatient)
* subject ^short = "Patient"
* subject.reference 1..
* effectiveDateTime 1..
* performer only Reference(CHCRLPractitioner or CHCRLOrganizationDepartment)
* performer ^short = "Practitioner if resident physician or Organization Department if hospital"
* performer.reference 1..

* valueCodeableConcept from NkrsICCC3Code (required)
* valueCodeableConcept ^short = "The detailed division of the diagnostic group according to the third revision of the 1996 International Classification of Childhood Cancer (ICCC-3)."
* valueCodeableConcept.coding 1..*
* valueCodeableConcept.coding.system 1..
* valueCodeableConcept.coding.code 1..
* valueCodeableConcept.coding.display 1..


Mapping: NICER-A-for-CHCRLObservationICCC3Code
Id: NICER-A
Title: "NATIONAL CANCER DATA DICTIONARY, V 1.1, Part A: BASIC VARIABLES for Adults, Adolescents, and Children"
Source: CHCRLObservationICCC3Code
Target: "https://www.nacr.ch/assets/files/uploads/a-datadictionary-basicvariables-v1.1.pdf"
* -> "ICCC-3 code (Variable number: 3.9.2)"


Instance: ICCC3Code-VIIIa
InstanceOf: CHCRLObservationICCC3Code
Title: "ICCC-3 Code - VIIIa"
Description: "Example for Observation for the ICCC-3 code"
Usage: #example
* status = #final
* code = $nkrs-basicvariables#3.9.2 "ICCC-3 code"
* subject = Reference(FranzMinimum)
* effectiveDateTime = "2018-12-15"
* valueCodeableConcept = $nkrs-nkrsiccc3code#VIIIa "Osteosarcomas"
Profile: CHCRLObservationICCC3MainGroup
Parent: Observation
Id: ch-crl-observation-iccc3maingroup
Title: "CH CRL Observation ICCC-3 Main Group"
Description: "Definition of the Observation for the ICCC-3 main group"
* . ^short = "CH CRL Observation ICCC-3 Main Group"
* code 1..
* code = $nkrs-basicvariables#3.9.1 "ICCC-3 main group"
* subject 1..
* subject only Reference(CHCRLPatient)
* subject ^short = "Patient"
* subject.reference 1..
* effectiveDateTime 1..
* performer only Reference(CHCRLPractitioner or CHCRLOrganizationDepartment)
* performer ^short = "Practitioner if resident physician or Organization Department if hospital"
* performer.reference 1..

* valueCodeableConcept from NkrsICCC3MainGroup (required)
* valueCodeableConcept ^short = "The main diagnostic group according to the third revision of the International Classification of Childhood Cancer (ICCC-3)."
* valueCodeableConcept.coding 1..*
* valueCodeableConcept.coding.system 1..
* valueCodeableConcept.coding.code 1..
* valueCodeableConcept.coding.display 1..


Mapping: NICER-A-for-CHCRLObservationICCC3MainGroup
Id: NICER-A
Title: "NATIONAL CANCER DATA DICTIONARY, V 1.1, Part A: BASIC VARIABLES for Adults, Adolescents, and Children"
Source: CHCRLObservationICCC3MainGroup
Target: "https://www.nacr.ch/assets/files/uploads/a-datadictionary-basicvariables-v1.1.pdf"
* -> "ICCC-3 main group (Variable number: 3.9.1)"


Instance: ICCC3MainGroup-VIII
InstanceOf: CHCRLObservationICCC3MainGroup
Title: "ICCC-3 Main Group - VIII"
Description: "Example for Observation for the ICCC-3 main group"
Usage: #example
* status = #final
* code = $nkrs-basicvariables#3.9.1 "ICCC-3 main group"
* subject = Reference(FranzMinimum)
* effectiveDateTime = "2018-12-15"
* valueCodeableConcept = $nkrs-iccc3maingroup#VIII "Malignant bone tumours"
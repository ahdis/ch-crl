Profile: CHCRLObservationAssociatedInsituTumour
Parent: Observation
Id: ch-crl-observation-associatedinsitutumour
Title: "CH CRL Observation Associated In-situ Tumour"
Description: "Definition of the Observation for the associated in-situ tumour"
* . ^short = "CH CRL Observation Associated In-situ Tumour"
* code 1..
* code = $nkrs-basicvariables#3.6.2 "Associated in situ tumour"
* subject 1..
* subject only Reference(CHCRLPatient)
* subject ^short = "Patient"
* subject.reference 1..
* effectiveDateTime 1..
* performer only Reference(CHCRLPractitioner or CHCRLOrganizationDepartment)
* performer ^short = "Practitioner if resident physician or Organization Department if hospital"
* performer.reference 1..

* valueBoolean ^short = "If no simultaneous presence of in-situ and invasive tumour components, then 'value=false'. 
If simultaneous presence of in-situ and invasive tumour components, then 'value=true'."

* dataAbsentReason ^short = "The simultaneous presence of in-situ and invasive tumour components is not stated / not assessed"
* dataAbsentReason.coding 1..*
* dataAbsentReason.coding.system 1..
* dataAbsentReason.coding.system = "http://terminology.hl7.org/CodeSystem/data-absent-reason" (exactly)
* dataAbsentReason.coding.code 1..
* dataAbsentReason.coding.code = #unknown (exactly)
* dataAbsentReason.coding.display 1..
* dataAbsentReason.coding.display = "Unknown" (exactly)


Mapping: NICER-A-for-CHCRLObservationAssociatedInsituTumour
Id: NICER-A
Title: "NATIONAL CANCER DATA DICTIONARY, V 1.1, Part A: BASIC VARIABLES for Adults, Adolescents, and Children"
Source: CHCRLObservationAssociatedInsituTumour
Target: "https://www.nacr.ch/assets/files/uploads/a-datadictionary-basicvariables-v1.1.pdf"
* -> "Associated in situ tumour (Variable number: 3.6.2)"


Instance: AssociatedInsituTumour-No
InstanceOf: CHCRLObservationAssociatedInsituTumour
Title: "Associated In-situ Tumour - No"
Description: "Example for Observation for the associated in-situ tumour"
Usage: #example
* status = #final
* code = $nkrs-basicvariables#3.6.2 "Associated in situ tumour"
* subject = Reference(FranzMinimum)
* effectiveDateTime = "2018-12-15"
* valueBoolean = false


Instance: AssociatedInsituTumour-Yes
InstanceOf: CHCRLObservationAssociatedInsituTumour
Title: "Associated In-situ Tumour - Yes"
Description: "Example for Observation for the associated in-situ tumour"
Usage: #example
* status = #final
* code = $nkrs-basicvariables#3.6.2 "Associated in situ tumour"
* subject = Reference(FranzMinimum)
* effectiveDateTime = "2018-12-15"
* valueBoolean = true


Instance: AssociatedInsituTumour-Unknown
InstanceOf: CHCRLObservationAssociatedInsituTumour
Title: "Associated In-situ Tumour - Unknown"
Description: "Example for Observation for the associated in-situ tumour"
Usage: #example
* status = #final
* code = $nkrs-basicvariables#3.6.2 "Associated in situ tumour"
* subject = Reference(FranzMinimum)
* effectiveDateTime = "2018-12-15"
* dataAbsentReason = $data-absent-reason#unknown "Unknown"
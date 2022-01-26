Profile: CHCRLObservationHIVAIDS
Parent: Observation
Id: ch-crl-observation-hivaids
Title: "CH CRL Observation HIV/AIDS"
Description: "Definition of the Observation for HIV/AIDS"
* . ^short = "CH CRL Observation HIV/AIDS"
* code 1..
* code = $nkrs-variables#10.3 "HIV/AIDS"
* subject 1..
* subject only Reference(CHCRLPatient)
* subject ^short = "Patient"
* subject.reference 1..
* effectiveDateTime 1..
* performer only Reference(CHCRLPractitioner or CHCRLOrganizationDepartment)
* performer ^short = "Practitioner if resident physician or Organization Department if hospital"
* performer.reference 1..

* valueBoolean 1..
* valueBoolean ^short = "If the HIV/AIDS is not present then 'value=false'. 
If the HIV/AIDS is present then 'value=true'."


Mapping: NICER-B1-for-CHCRLObservationHIVAIDS
Id: NICER-B1
Title: "NATIONAL CANCER DATA DICTIONARY, V 1.1, Part B1: SUPPLEMENTARY VARIABLES for Adults"
Source: CHCRLObservationHIVAIDS
Target: "https://www.nacr.ch/assets/files/uploads/b1-datadictionary-supplementaryvariables-adults-v1.1.pdf"
* -> "HIV/AIDS (Variable number: 10.3)"


Instance: HIVAIDS-No
InstanceOf: CHCRLObservationHIVAIDS
Title: "HIV/AIDS - No"
Description: "Example for Observation for the HIV/AIDS"
Usage: #example
* status = #final
* code = $nkrs-variables#10.3 "HIV/AIDS"
* subject = Reference(FranzMinimum)
* effectiveDateTime = "2018-12-15"
* valueBoolean = false

Instance: HIVAIDS-Yes
InstanceOf: CHCRLObservationHIVAIDS
Title: "HIV/AIDS - Yes"
Description: "Example for Observation for the HIV/AIDS"
Usage: #example
* status = #final
* code = $nkrs-variables#10.3 "HIV/AIDS"
* subject = Reference(FranzMinimum)
* effectiveDateTime = "2018-12-15"
* valueBoolean = true

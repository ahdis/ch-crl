Profile: CHCRLObservationDementia
Parent: Observation
Id: ch-crl-observation-dementia
Title: "CH CRL Observation Dementia"
Description: "Definition of the Observation for the dementia"
* . ^short = "CH CRL Observation Dementia"
* code 1..
* code = $sct#52448006 "Dementia (disorder)"
* subject 1..
* subject only Reference(CHCRLPatient)
* subject ^short = "Patient"
* subject.reference 1..
* effectiveDateTime 1..
* performer only Reference(CHCRLPractitioner or CHCRLOrganizationDepartment)
* performer ^short = "Practitioner if resident physician or Organization Department if hospital"
* performer.reference 1..

* valueBoolean 1..
* valueBoolean ^short = "If dementia is not present then 'value=false'. 
If dementia is present then 'value=true'."


Mapping: NICER-B1-for-CHCRLObservationDementia
Id: NICER-B1
Title: "NATIONAL CANCER DATA DICTIONARY, V 1.1, Part B1: SUPPLEMENTARY VARIABLES for Adults"
Source: CHCRLObservationDementia
Target: "https://www.nacr.ch/assets/files/uploads/b1-datadictionary-supplementaryvariables-adults-v1.1.pdf"
* -> "Dementia (Variable number: 10.10)"


Instance: Dementia-No
InstanceOf: CHCRLObservationDementia
Title: "Dementia - No"
Description: "Example for Observation for the dementia"
Usage: #example
* status = #final
* code = $sct#52448006 "Dementia (disorder)"
* subject = Reference(FranzMinimum)
* effectiveDateTime = "2018-12-15"
* valueBoolean = false

Instance: Dementia-Yes
InstanceOf: CHCRLObservationDementia
Title: "Dementia - Yes"
Description: "Example for Observation for the dementia"
Usage: #example
* status = #final
* code = $sct#52448006 "Dementia (disorder)"
* subject = Reference(FranzMinimum)
* effectiveDateTime = "2018-12-15"
* valueBoolean = true

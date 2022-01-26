Profile: CHCRLObservationCVAOrTIA
Parent: Observation
Id: ch-crl-observation-cvaortia
Title: "CH CRL Observation Cerebrovascular Accident or Transient Ischemic Attack"
Description: "Definition of the Observation for the cerebrovascular accident or transient ischemic attack"
* . ^short = "CH CRL Observation Cerebrovascular Accident or Transient Ischemic Attack"
* code 1..
* code = $nkrs-variables#10.9 "Cerebrovascular Accident or Transient Ischemic Attack"
* subject 1..
* subject only Reference(CHCRLPatient)
* subject ^short = "Patient"
* subject.reference 1..
* effectiveDateTime 1..
* performer only Reference(CHCRLPractitioner or CHCRLOrganizationDepartment)
* performer ^short = "Practitioner if resident physician or Organization Department if hospital"
* performer.reference 1..

* valueBoolean 1..
* valueBoolean ^short = "If a for the cerebrovascular accident or transient ischemic attack is not present then 'value=false'. 
If a for the cerebrovascular accident or transient ischemic attack is present then 'value=true'."


Mapping: NICER-B1-for-CHCRLObservationCVAOrTIA
Id: NICER-B1
Title: "NATIONAL CANCER DATA DICTIONARY, V 1.1, Part B1: SUPPLEMENTARY VARIABLES for Adults"
Source: CHCRLObservationCVAOrTIA
Target: "https://www.nacr.ch/assets/files/uploads/b1-datadictionary-supplementaryvariables-adults-v1.1.pdf"
* -> "Cerebrovascular Accident or Transient Ischemic Attack (Variable number: 10.9)"


Instance: CVAOrTIA-No
InstanceOf: CHCRLObservationCVAOrTIA
Title: "Cerebrovascular Accident or Transient Ischemic Attack - No"
Description: "Example for Observation for the cerebrovascular accident or transient ischemic attack"
Usage: #example
* status = #final
* code = $nkrs-variables#10.9 "Cerebrovascular Accident or Transient Ischemic Attack"
* subject = Reference(FranzMinimum)
* effectiveDateTime = "2018-12-15"
* valueBoolean = false

Instance: CVAOrTIA-Yes
InstanceOf: CHCRLObservationCVAOrTIA
Title: "Cerebrovascular Accident or Transient Ischemic Attack - Yes"
Description: "Example for Observation for the cerebrovascular accident or transient ischemic attack"
Usage: #example
* status = #final
* code = $nkrs-variables#10.9 "Cerebrovascular Accident or Transient Ischemic Attack"
* subject = Reference(FranzMinimum)
* effectiveDateTime = "2018-12-15"
* valueBoolean = true

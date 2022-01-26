Profile: CHCRLObservationCongestiveHeartFailure
Parent: Observation
Id: ch-crl-observation-congestiveheartfailure
Title: "CH CRL Observation Congestive Heart Failure"
Description: "Definition of the Observation for the congestive heart failure"
* . ^short = "CH CRL Observation Congestive Heart Failure"
* code 1..
* code = $sct#42343007 "Congestive heart failure (disorder)"
* subject 1..
* subject only Reference(CHCRLPatient)
* subject ^short = "Patient"
* subject.reference 1..
* effectiveDateTime 1..
* performer only Reference(CHCRLPractitioner or CHCRLOrganizationDepartment)
* performer ^short = "Practitioner if resident physician or Organization Department if hospital"
* performer.reference 1..

* valueBoolean 1..
* valueBoolean ^short = "If a congestive heart failure is not present then 'value=false'. 
If a congestive heart failure is present then 'value=true'."


Mapping: NICER-B1-for-CHCRLObservationCongestiveHeartFailure
Id: NICER-B1
Title: "NATIONAL CANCER DATA DICTIONARY, V 1.1, Part B1: SUPPLEMENTARY VARIABLES for Adults"
Source: CHCRLObservationCongestiveHeartFailure
Target: "https://www.nacr.ch/assets/files/uploads/b1-datadictionary-supplementaryvariables-adults-v1.1.pdf"
* -> "Congestive Heart Failure (Variable number: 10.5)"


Instance: CongestiveHeartFailure-No
InstanceOf: CHCRLObservationCongestiveHeartFailure
Title: "Congestive Heart Failure - No"
Description: "Example for Observation for the Congestive Heart Failure"
Usage: #example
* status = #final
* code = $sct#42343007 "Congestive heart failure (disorder)"
* subject = Reference(FranzMinimum)
* effectiveDateTime = "2018-12-15"
* valueBoolean = false

Instance: CongestiveHeartFailure-Yes
InstanceOf: CHCRLObservationCongestiveHeartFailure
Title: "Congestive Heart Failure - Yes"
Description: "Example for Observation for the Congestive Heart Failure"
Usage: #example
* status = #final
* code = $sct#42343007 "Congestive heart failure (disorder)"
* subject = Reference(FranzMinimum)
* effectiveDateTime = "2018-12-15"
* valueBoolean = true

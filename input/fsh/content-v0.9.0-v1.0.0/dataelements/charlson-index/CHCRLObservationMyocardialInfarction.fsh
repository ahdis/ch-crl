Profile: CHCRLObservationMyocardialInfarction
Parent: Observation
Id: ch-crl-observation-myocardialinfarction
Title: "CH CRL Observation Myocardial Infarction"
Description: "Definition of the Observation for the myocardial infarction"
* . ^short = "CH CRL Observation Myocardial Infarction"
* code 1..
* code = $sct#22298006 "Myocardial infarction (disorder)"
* subject 1..
* subject only Reference(CHCRLPatient)
* subject ^short = "Patient"
* subject.reference 1..
* effectiveDateTime 1..
* performer only Reference(CHCRLPractitioner or CHCRLOrganizationDepartment)
* performer ^short = "Practitioner if resident physician or Organization Department if hospital"
* performer.reference 1..

* valueBoolean 1..
* valueBoolean ^short = "If a myocardial infarction is not present then 'value=false'. 
If a myocardial infarction is present then 'value=true'."


Mapping: NICER-B1-for-CHCRLObservationMyocardialInfarction
Id: NICER-B1
Title: "NATIONAL CANCER DATA DICTIONARY, V 1.1, Part B1: SUPPLEMENTARY VARIABLES for Adults"
Source: CHCRLObservationMyocardialInfarction
Target: "https://www.nacr.ch/assets/files/uploads/b1-datadictionary-supplementaryvariables-adults-v1.1.pdf"
* -> "Myocardial infarction (Variable number: 10.6)"


Instance: MyocardialInfarction-No
InstanceOf: CHCRLObservationMyocardialInfarction
Title: "Myocardial Infarction - No"
Description: "Example for Observation for the myocardial infarction"
Usage: #example
* status = #final
* code = $sct#22298006 "Myocardial infarction (disorder)"
* subject = Reference(FranzMinimum)
* effectiveDateTime = "2018-12-15"
* valueBoolean = false

Instance: MyocardialInfarction-Yes
InstanceOf: CHCRLObservationMyocardialInfarction
Title: "Myocardial Infarction - Yes"
Description: "Example for Observation for the myocardial infarction"
Usage: #example
* status = #final
* code = $sct#22298006 "Myocardial infarction (disorder)"
* subject = Reference(FranzMinimum)
* effectiveDateTime = "2018-12-15"
* valueBoolean = true

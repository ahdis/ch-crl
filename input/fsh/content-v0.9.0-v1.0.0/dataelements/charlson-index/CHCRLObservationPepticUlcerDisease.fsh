Profile: CHCRLObservationPepticUlcerDisease
Parent: Observation
Id: ch-crl-observation-pepticulcerdisease
Title: "CH CRL Observation Peptic Ulcer Disease"
Description: "Definition of the Observation for the peptic ulcer disease"
* . ^short = "CH CRL Observation Peptic Ulcer Disease"
* code 1..
* code = $sct#13200003 "Peptic ulcer (disorder)"
* subject 1..
* subject only Reference(CHCRLPatient)
* subject ^short = "Patient"
* subject.reference 1..
* effectiveDateTime 1..
* performer only Reference(CHCRLPractitioner or CHCRLOrganizationDepartment)
* performer ^short = "Practitioner if resident physician or Organization Department if hospital"
* performer.reference 1..

* valueBoolean 1..
* valueBoolean ^short = "If a peptic ulcer disease is not present then 'value=false'. 
If a peptic ulcer disease is present then 'value=true'."


Mapping: NICER-B1-for-CHCRLObservationPepticUlcerDisease
Id: NICER-B1
Title: "NATIONAL CANCER DATA DICTIONARY, V 1.1, Part B1: SUPPLEMENTARY VARIABLES for Adults"
Source: CHCRLObservationPepticUlcerDisease
Target: "https://www.nacr.ch/assets/files/uploads/b1-datadictionary-supplementaryvariables-adults-v1.1.pdf"
* -> "Peptic Ulcer Disease (Variable number: 10.13)"


Instance: PepticUlcerDisease-No
InstanceOf: CHCRLObservationPepticUlcerDisease
Title: "Peptic Ulcer Disease - No"
Description: "Example for Observation for the peptic ulcer disease"
Usage: #example
* status = #final
* code = $sct#13200003 "Peptic ulcer (disorder)"
* subject = Reference(FranzMinimum)
* effectiveDateTime = "2018-12-15"
* valueBoolean = false

Instance: PepticUlcerDisease-Yes
InstanceOf: CHCRLObservationPepticUlcerDisease
Title: "Peptic Ulcer Disease - Yes"
Description: "Example for Observation for the peptic ulcer disease"
Usage: #example
* status = #final
* code = $sct#13200003 "Peptic ulcer (disorder)"
* subject = Reference(FranzMinimum)
* effectiveDateTime = "2018-12-15"
* valueBoolean = true

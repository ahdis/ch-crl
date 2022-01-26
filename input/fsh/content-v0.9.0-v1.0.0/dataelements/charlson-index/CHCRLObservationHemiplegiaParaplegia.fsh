Profile: CHCRLObservationHemiplegiaParaplegia
Parent: Observation
Id: ch-crl-observation-hemiplegiaparaplegia
Title: "CH CRL Observation Hemiplegia / Paraplegia"
Description: "Definition of the Observation for the hemiplegia / paraplegia"
* . ^short = "CH CRL Observation Hemiplegia / Paraplegia"
* code 1..
* code = $nkrs-variables#10.11 "Hemiplegia / Paraplegia"
* subject 1..
* subject only Reference(CHCRLPatient)
* subject ^short = "Patient"
* subject.reference 1..
* effectiveDateTime 1..
* performer only Reference(CHCRLPractitioner or CHCRLOrganizationDepartment)
* performer ^short = "Practitioner if resident physician or Organization Department if hospital"
* performer.reference 1..

* valueBoolean 1..
* valueBoolean ^short = "If a hemiplegia / paraplegia is not present then 'value=false'. 
If a hemiplegia / paraplegia is present then 'value=true'."


Mapping: NICER-B1-for-CHCRLObservationHemiplegiaParaplegia
Id: NICER-B1
Title: "NATIONAL CANCER DATA DICTIONARY, V 1.1, Part B1: SUPPLEMENTARY VARIABLES for Adults"
Source: CHCRLObservationHemiplegiaParaplegia
Target: "https://www.nacr.ch/assets/files/uploads/b1-datadictionary-supplementaryvariables-adults-v1.1.pdf"
* -> "Hemiplegia / Paraplegia (Variable number: 10.11)"


Instance: HemiplegiaParaplegia-No
InstanceOf: CHCRLObservationHemiplegiaParaplegia
Title: "Hemiplegia / Paraplegia - No"
Description: "Example for Observation for the hemiplegia / paraplegia"
Usage: #example
* status = #final
* code = $nkrs-variables#10.11 "Hemiplegia / Paraplegia"
* subject = Reference(FranzMinimum)
* effectiveDateTime = "2018-12-15"
* valueBoolean = false

Instance: HemiplegiaParaplegia-Yes
InstanceOf: CHCRLObservationHemiplegiaParaplegia
Title: "Hemiplegia / Paraplegia - Yes"
Description: "Example for Observation for the hemiplegia / paraplegia"
Usage: #example
* status = #final
* code = $nkrs-variables#10.11 "Hemiplegia / Paraplegia"
* subject = Reference(FranzMinimum)
* effectiveDateTime = "2018-12-15"
* valueBoolean = true

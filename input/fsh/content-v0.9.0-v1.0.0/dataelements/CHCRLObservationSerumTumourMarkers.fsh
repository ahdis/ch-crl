Profile: CHCRLObservationSerumTumourMarkers
Parent: Observation
Id: ch-crl-observation-serumtumourmarkers
Title: "CH CRL Observation Serum Tumour Markers"
Description: "Definition of the Observation for the serum tumour markers"
* . ^short = "CH CRL Observation Serum Tumour Markers"
* code 1..
* code = $sct#396701002 "Finding of serum tumor marker level (finding)"
* subject 1..
* subject only Reference(CHCRLPatient)
* subject ^short = "Patient"
* subject.reference 1..
* effectiveDateTime 1..
* performer only Reference(CHCRLPractitioner or CHCRLOrganizationDepartment)
* performer ^short = "Practitioner if resident physician or Organization Department if hospital"
* performer.reference 1..

* valueCodeableConcept from NkrsSerumTumourMarkers (required)
* valueCodeableConcept ^short = "The TNM S-categories as combination of levels for AFP, hCG, and LDH."
* valueCodeableConcept.coding 1..*
* valueCodeableConcept.coding.system 1..
* valueCodeableConcept.coding.code 1..
* valueCodeableConcept.coding.display 1..

* dataAbsentReason ^short = "Serum marker studies not available or not performed."
* dataAbsentReason.coding 1..*
* dataAbsentReason.coding.system 1..
* dataAbsentReason.coding.system = "http://terminology.hl7.org/CodeSystem/data-absent-reason" (exactly)
* dataAbsentReason.coding.code 1..
* dataAbsentReason.coding.code ^short = "If serum marker studies not performed than 'value=not-performed'. 
If serum marker studies not available than 'value=unknown'."
* dataAbsentReason.coding.display 1..

* hasMember ..*
* hasMember only Reference(Observation)
* hasMember ^slicing.discriminator.type = #profile
* hasMember ^slicing.discriminator.path = "resolve()"
* hasMember ^slicing.ordered = false
* hasMember ^slicing.rules = #open
* hasMember contains
    ch-crl-alphaFetoprotein 0..1 and
    ch-crl-hCG 0..1 and
    ch-crl-LDH 0..1
* hasMember[ch-crl-alphaFetoprotein] only Reference(CHCRLObservationAlphaFetoprotein)
* hasMember[ch-crl-alphaFetoprotein] ^short = "α-fetoprotein"
* hasMember[ch-crl-hCG] only Reference(CHCRLObservationHCG)
* hasMember[ch-crl-hCG] ^short = "hCG"
* hasMember[ch-crl-LDH] only Reference(CHCRLObservationLDH)
* hasMember[ch-crl-LDH] ^short = "LDH"


Mapping: NICER-A-for-CHCRLObservationSerumTumourMarkers
Id: NICER-A
Title: "NATIONAL CANCER DATA DICTIONARY, V 1.1, Part A: BASIC VARIABLES for Adults, Adolescents, and Children"
Source: CHCRLObservationSerumTumourMarkers
Target: "https://www.nacr.ch/assets/files/uploads/a-datadictionary-basicvariables-v1.1.pdf"
* -> "Serum tumour markers (Variable number: 5.5.4)"


Instance: SerumTumourMarkers-S3
InstanceOf: CHCRLObservationSerumTumourMarkers
Title: "Serum Tumour Markers - S3"
Description: "Example for Observation for the serum tumour markers"
Usage: #example
* status = #final
* code = $sct#396701002 "Finding of serum tumor marker level (finding)"
* subject = Reference(FranzMinimum)
* effectiveDateTime = "2018-12-15"
* valueCodeableConcept = $nkrs-serumtumourmarkers#3 "S3"
* hasMember[ch-crl-alphaFetoprotein] = Reference(AlphaFetoprotein-AFP1)
* hasMember[ch-crl-hCG] = Reference(HCG-hCG2)
* hasMember[ch-crl-LDH] = Reference(LDH-LDH3)

Instance: SerumTumourMarkers-Unknown
InstanceOf: CHCRLObservationSerumTumourMarkers
Title: "Serum Tumour Markers - Unknown"
Description: "Example for Observation for the serum tumour markers"
Usage: #example
* status = #final
* code = $sct#396701002 "Finding of serum tumor marker level (finding)"
* subject = Reference(FranzMinimum)
* effectiveDateTime = "2018-12-15"
* dataAbsentReason = $data-absent-reason#unknown "Unknown"

Instance: SerumTumourMarkers-NotPerformed
InstanceOf: CHCRLObservationSerumTumourMarkers
Title: "Serum Tumour Markers - Not Performed"
Description: "Example for Observation for the serum tumour markers"
Usage: #example
* status = #final
* code = $sct#396701002 "Finding of serum tumor marker level (finding)"
* subject = Reference(FranzMinimum)
* effectiveDateTime = "2018-12-15"
* dataAbsentReason = $data-absent-reason#not-performed "Not Performed"
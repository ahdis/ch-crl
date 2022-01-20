Profile: CHCRLObservationAlphaFetoprotein
Parent: Observation
Id: ch-crl-observation-alphafetoprotein
Title: "CH CRL Observation α-fetoprotein"
Description: "Definition of the Observation for the α-fetoprotein"
* obeys ch-crl-obs-1
* . ^short = "CH CRL Observation α-fetoprotein"
* code 1..
* code = $loinc#53962-7 "Alpha-1-fetoprotein.tumor marker [Mass/volume] in Serum or Plasma"
* subject 1..
* subject only Reference(CHCRLPatient)
* subject ^short = "Patient"
* subject.reference 1..
* effectiveDateTime 1..
* performer only Reference(CHCRLPractitioner or CHCRLOrganizationDepartment)
* performer ^short = "Practitioner if resident physician or Organization Department if hospital"
* performer.reference 1..

* valueCodeableConcept from NkrsAlphaFetoprotein (required)
* valueCodeableConcept ^short = "The serum level of the tumour marker α-fetoprotein (AFP)."
* valueCodeableConcept.coding 1..*
* valueCodeableConcept.coding.system 1..
* valueCodeableConcept.coding.code 1..
* valueCodeableConcept.coding.display 1..

* dataAbsentReason ^short = "AFP not available or not performed"
* dataAbsentReason.coding obeys ch-crl-obs-2
* dataAbsentReason.coding 1..*
* dataAbsentReason.coding.system 1..
* dataAbsentReason.coding.system = "http://terminology.hl7.org/CodeSystem/data-absent-reason" (exactly)
* dataAbsentReason.coding.code 1..
* dataAbsentReason.coding.code ^short = "If AFP not performed than 'value=not-performed'. 
If AFP not available than 'value=unknown'."
* dataAbsentReason.coding.display 1..


Mapping: NICER-A-for-CHCRLObservationAlphaFetoprotein
Id: NICER-A
Title: "NATIONAL CANCER DATA DICTIONARY, V 1.1, Part A: BASIC VARIABLES for Adults, Adolescents, and Children"
Source: CHCRLObservationAlphaFetoprotein
Target: "https://www.nacr.ch/assets/files/uploads/a-datadictionary-basicvariables-v1.1.pdf"
* -> "α-fetoprotein (Variable number: 5.5.1)"


Instance: AlphaFetoprotein-AFP1
InstanceOf: CHCRLObservationAlphaFetoprotein
Title: "α-fetoprotein - AFP1"
Description: "Example for Observation for the α-fetoprotein"
Usage: #example
* status = #final
* code = $loinc#53962-7 "Alpha-1-fetoprotein.tumor marker [Mass/volume] in Serum or Plasma"
* subject = Reference(FranzMinimum)
* effectiveDateTime = "2018-12-15"
* valueCodeableConcept = $nkrs-alphafetoprotein#1 "AFP1"

Instance: AlphaFetoprotein-Unknown
InstanceOf: CHCRLObservationAlphaFetoprotein
Title: "α-fetoprotein - Unknown"
Description: "Example for Observation for the α-fetoprotein"
Usage: #example
* status = #final
* code = $loinc#53962-7 "Alpha-1-fetoprotein.tumor marker [Mass/volume] in Serum or Plasma"
* subject = Reference(FranzMinimum)
* effectiveDateTime = "2018-12-15"
* dataAbsentReason = $data-absent-reason#unknown "Unknown"

Instance: AlphaFetoprotein-NotPerformed
InstanceOf: CHCRLObservationAlphaFetoprotein
Title: "α-fetoprotein - Not Performed"
Description: "Example for Observation for the α-fetoprotein"
Usage: #example
* status = #final
* code = $loinc#53962-7 "Alpha-1-fetoprotein.tumor marker [Mass/volume] in Serum or Plasma"
* subject = Reference(FranzMinimum)
* effectiveDateTime = "2018-12-15"
* dataAbsentReason = $data-absent-reason#not-performed "Not Performed"
Profile: CHCRLObservationLDH
Parent: Observation
Id: ch-crl-observation-ldh
Title: "CH CRL Observation LDH"
Description: "Definition of the Observation for the LDH"
* . ^short = "CH CRL Observation LDH"
* code 1..
* code = $loinc#75639-5 "Lactate dehydrogenase in body fluid/Lactate dehydrogenase in serum"
* subject 1..
* subject only Reference(CHCRLPatient)
* subject ^short = "Patient"
* subject.reference 1..
* effectiveDateTime 1..
* performer only Reference(CHCRLPractitioner or CHCRLOrganizationDepartment)
* performer ^short = "Practitioner if resident physician or Organization Department if hospital"
* performer.reference 1..

* valueCodeableConcept from NkrsLDH (required)
* valueCodeableConcept ^short = "The levels of serum tumour marker lactate dehydrogenase (LDH)."
* valueCodeableConcept.coding 1..*
* valueCodeableConcept.coding.system 1..
* valueCodeableConcept.coding.code 1..
* valueCodeableConcept.coding.display 1..

* dataAbsentReason ^short = "LDH not available or not performed"
* dataAbsentReason.coding 1..*
* dataAbsentReason.coding.system 1..
* dataAbsentReason.coding.system = "http://terminology.hl7.org/CodeSystem/data-absent-reason" (exactly)
* dataAbsentReason.coding.code 1..
* dataAbsentReason.coding.code ^short = "If LDH not performed than 'value=not-performed'. 
If LDH not available than 'value=unknown'."
* dataAbsentReason.coding.display 1..


Mapping: NICER-A-for-CHCRLObservationLDH
Id: NICER-A
Title: "NATIONAL CANCER DATA DICTIONARY, V 1.1, Part A: BASIC VARIABLES for Adults, Adolescents, and Children"
Source: CHCRLObservationLDH
Target: "https://www.nacr.ch/assets/files/uploads/a-datadictionary-basicvariables-v1.1.pdf"
* -> "LDH (Variable number: 5.5.3)"


Instance: LDH-LDH3
InstanceOf: CHCRLObservationLDH
Title: "LDH - LDH3"
Description: "Example for Observation for the LDH"
Usage: #example
* status = #final
* code = $loinc#75639-5 "Lactate dehydrogenase in body fluid/Lactate dehydrogenase in serum"
* subject = Reference(FranzMinimum)
* effectiveDateTime = "2018-12-15"
* valueCodeableConcept = $nkrs-ldh#3 "LDH3"

Instance: LDH-Unknown
InstanceOf: CHCRLObservationLDH
Title: "LDH - Unknown"
Description: "Example for Observation for the LDH"
Usage: #example
* status = #final
* code = $loinc#75639-5 "Lactate dehydrogenase in body fluid/Lactate dehydrogenase in serum"
* subject = Reference(FranzMinimum)
* effectiveDateTime = "2018-12-15"
* dataAbsentReason = $data-absent-reason#unknown "Unknown"

Instance: LDH-NotPerformed
InstanceOf: CHCRLObservationLDH
Title: "LDH - Not Performed"
Description: "Example for Observation for the LDH"
Usage: #example
* status = #final
* code = $loinc#75639-5 "Lactate dehydrogenase in body fluid/Lactate dehydrogenase in serum"
* subject = Reference(FranzMinimum)
* effectiveDateTime = "2018-12-15"
* dataAbsentReason = $data-absent-reason#not-performed "Not Performed"
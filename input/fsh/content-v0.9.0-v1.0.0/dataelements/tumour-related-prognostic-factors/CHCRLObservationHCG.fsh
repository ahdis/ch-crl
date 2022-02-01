Profile: CHCRLObservationHCG
Parent: Observation
Id: ch-crl-observation-hcg
Title: "CH CRL Observation β-hCG"
Description: "Definition of the Observation for the β-hCG"
* obeys ch-crl-obs-1
* . ^short = "CH CRL Observation β-hCG"
* code 1..
* code = $loinc#53957-7 "Choriogonadotropin.tumor marker [Mass/volume] in Serum or Plasma"
* subject 1..
* subject only Reference(CHCRLPatient)
* subject ^short = "Patient"
* subject.reference 1..
* effectiveDateTime 1..
* performer only Reference(CHCRLPractitioner or CHCRLOrganizationDepartment)
* performer ^short = "Practitioner if resident physician or Organization Department if hospital"
* performer.reference 1..

* valueCodeableConcept from NkrsHCG (preferred)
* valueCodeableConcept ^short = "The level of serum tumour marker human chorionic gonadotropin (β-hCG)."
* valueCodeableConcept.coding 1..*
* valueCodeableConcept.coding.system 1..
* valueCodeableConcept.coding.code 1..
* valueCodeableConcept.coding.display 1..

* dataAbsentReason ^short = "hCG not available or not performed"
* dataAbsentReason.coding obeys ch-crl-obs-2
* dataAbsentReason.coding 1..*
* dataAbsentReason.coding.system 1..
* dataAbsentReason.coding.system = "http://terminology.hl7.org/CodeSystem/data-absent-reason" (exactly)
* dataAbsentReason.coding.code 1..
* dataAbsentReason.coding.code ^short = "If hCG not performed than 'value=not-performed'. 
If hCG not available than 'value=unknown'."
* dataAbsentReason.coding.display 1..


Mapping: NICER-A-for-CHCRLObservationHCG
Id: NICER-A
Title: "NATIONAL CANCER DATA DICTIONARY, V 1.1, Part A: BASIC VARIABLES for Adults, Adolescents, and Children"
Source: CHCRLObservationHCG
Target: "https://www.nacr.ch/assets/files/uploads/a-datadictionary-basicvariables-v1.1.pdf"
* -> "β-hCG (Variable number: 5.5.2)"


Instance: HCG-hCG2
InstanceOf: CHCRLObservationHCG
Title: "β-hCG - hCG2"
Description: "Example for Observation for the β-hCG"
Usage: #example
* status = #final
* code = $loinc#53957-7 "Choriogonadotropin.tumor marker [Mass/volume] in Serum or Plasma"
* subject = Reference(FranzMinimum)
* effectiveDateTime = "2018-12-15"
* valueCodeableConcept = $nkrs-hcg#2 "hCG2"

Instance: HCG-Unknown
InstanceOf: CHCRLObservationHCG
Title: "β-hCG - Unknown"
Description: "Example for Observation for the β-hCG"
Usage: #example
* status = #final
* code = $loinc#53957-7 "Choriogonadotropin.tumor marker [Mass/volume] in Serum or Plasma"
* subject = Reference(FranzMinimum)
* effectiveDateTime = "2018-12-15"
* dataAbsentReason = $data-absent-reason#unknown "Unknown"

Instance: HCG-NotPerformed
InstanceOf: CHCRLObservationHCG
Title: "β-hCG - Not Performed"
Description: "Example for Observation for the β-hCG"
Usage: #example
* status = #final
* code = $loinc#53957-7 "Choriogonadotropin.tumor marker [Mass/volume] in Serum or Plasma"
* subject = Reference(FranzMinimum)
* effectiveDateTime = "2018-12-15"
* dataAbsentReason = $data-absent-reason#not-performed "Not Performed"

/*
Instance: HCG-WrongExample
InstanceOf: CHCRLObservationHCG
Title: "β-hCG - Wrong Example"
Description: "Example for Observation"
Usage: #example
* status = #final
* code = $loinc#53957-7 "Choriogonadotropin.tumor marker [Mass/volume] in Serum or Plasma"
* subject = Reference(FranzMinimum)
* effectiveDateTime = "2018-12-15"
* dataAbsentReason = $data-absent-reason#error "Error"
*/

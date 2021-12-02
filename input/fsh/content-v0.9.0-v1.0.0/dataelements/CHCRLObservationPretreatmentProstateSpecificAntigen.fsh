Profile: CHCRLObservationPretreatmentProstateSpecificAntigen
Parent: Observation
Id: ch-crl-observation-pretreatmentprostatespecificantigen
Title: "CH CRL Observation Pretreatment Prostate Specific Antigen"
Description: "Definition of the Observation for the pretreatment prostate specific antigen (PSA)"
* . ^short = "CH CRL Observation Pretreatment Prostate Specific Antigen (PSA)"
* code 1..
* code = $loinc#19201-3 "Prostate Specific Ag Free [Units/volume] in Serum or Plasma"
* subject 1..
* subject only Reference(CHCRLPatient)
* subject ^short = "Patient"
* subject.reference 1..
* effectiveDateTime 1..
* performer only Reference(CHCRLPractitioner or CHCRLOrganizationDepartment)
* performer ^short = "Practitioner if resident physician or Organization Department if hospital"
* performer.reference 1..

* valueQuantity ^short = "Prostate Specific Antigen (PSA) is serine protease produced and secreted by prostate gland."
* valueQuantity.value 1..
* valueQuantity.unit = "nanogram per millliiter"
* valueQuantity.unit 1..
* valueQuantity.system = $ucum
* valueQuantity.system 1..
* valueQuantity.code = #ng/ml
* valueQuantity.code 1..

* dataAbsentReason ^short = "The test is not performed or the test result is unknown"
* dataAbsentReason.coding 1..*
* dataAbsentReason.coding.system 1..
* dataAbsentReason.coding.system = "http://terminology.hl7.org/CodeSystem/data-absent-reason" (exactly)
* dataAbsentReason.coding.code 1..
* dataAbsentReason.coding.code ^short = "If test not performed than 'value=not-performed'. 
If test result unknown than 'value=unknown'."
* dataAbsentReason.coding.display 1..


Mapping: NICER-A-for-CHCRLObservationPretreatmentProstateSpecificAntigen
Id: NICER-A
Title: "NATIONAL CANCER DATA DICTIONARY, V 1.1, Part A: BASIC VARIABLES for Adults, Adolescents, and Children"
Source: CHCRLObservationPretreatmentProstateSpecificAntigen
Target: "https://www.nacr.ch/assets/files/uploads/a-datadictionary-basicvariables-v1.1.pdf"
* -> "Pretreatment Prostate Specific Antigen (PSA) (Variable number: 5.2.1)"


Instance: PretreatmentProstateSpecificAntigen-80ngml
InstanceOf: CHCRLObservationPretreatmentProstateSpecificAntigen
Title: "Pretreatment Prostate Specific Antigen - 80ng/ml"
Description: "Example for Observation for the pretreatment prostate specific antigen (PSA)"
Usage: #example
* status = #final
* code = $loinc#19201-3 "Prostate Specific Ag Free [Units/volume] in Serum or Plasma"
* subject = Reference(FranzMinimum)
* effectiveDateTime = "2018-12-15"
* valueQuantity = 80 'ng/ml' "nanogram per millliiter"

Instance: PretreatmentProstateSpecificAntigen-Unknown
InstanceOf: CHCRLObservationPretreatmentProstateSpecificAntigen
Title: "Pretreatment Prostate Specific Antigen - Unknown"
Description: "Example for Observation for the pretreatment prostate specific antigen (PSA)"
Usage: #example
* status = #final
* code = $loinc#19201-3 "Prostate Specific Ag Free [Units/volume] in Serum or Plasma"
* subject = Reference(FranzMinimum)
* effectiveDateTime = "2018-12-15"
* dataAbsentReason = $data-absent-reason#unknown "Unknown"
Profile: CHCRLObservationOestrogenReceptorStatus
Parent: Observation
Id: ch-crl-observation-oestrogenreceptorstatus
Title: "CH CRL Observation Oestrogen Receptor Status"
Description: "Definition of the Observation for the oestrogen receptor status"
* obeys ch-crl-obs-1
* . ^short = "CH CRL Observation Oestrogen Receptor Status"
* code 1..
* code = $loinc#85329-1 "Cells.estrogen receptor/100 cells in Breast cancer specimen by Immune stain"
* subject 1..
* subject only Reference(CHCRLPatient)
* subject ^short = "Patient"
* subject.reference 1..
* effectiveDateTime 1..
* performer only Reference(CHCRLPractitioner or CHCRLOrganizationDepartment)
* performer ^short = "Practitioner if resident physician or Organization Department if hospital"
* performer.reference 1..

* value[x] only Quantity or boolean

* valueQuantity ^short = "The oestrogen receptor expression status of the tumour. Quantitative information, percentage value (%)."
* valueQuantity.value 1..
* valueQuantity.unit = "percent"
* valueQuantity.unit 1..
* valueQuantity.system = $ucum
* valueQuantity.system 1..
* valueQuantity.code = #%
* valueQuantity.code 1..

* valueBoolean ^short = "The oestrogen receptor expression status of the tumour. 
Qualitative information, if receptor status negative then 'value=false', if receptor status positive then 'value=true'."

* dataAbsentReason ^short = "The oestrogen receptor expression status of the tumour is not performed or unknown"
* dataAbsentReason.coding obeys ch-crl-obs-2
* dataAbsentReason.coding 1..*
* dataAbsentReason.coding.system 1..
* dataAbsentReason.coding.system = "http://terminology.hl7.org/CodeSystem/data-absent-reason" (exactly)
* dataAbsentReason.coding.code 1..
* dataAbsentReason.coding.code ^short = "If receptor status not performed than 'value=not-performed'. 
If receptor status unknown (no information available) than 'value=unknown'."
* dataAbsentReason.coding.display 1..


Mapping: NICER-A-for-CHCRLObservationOestrogenReceptorStatus
Id: NICER-A
Title: "NATIONAL CANCER DATA DICTIONARY, V 1.1, Part A: BASIC VARIABLES for Adults, Adolescents, and Children"
Source: CHCRLObservationOestrogenReceptorStatus
Target: "https://www.nacr.ch/assets/files/uploads/a-datadictionary-basicvariables-v1.1.pdf"
* -> "Oestrogen receptor status (Variable number: 5.1.1)"


Instance: OestrogenReceptorStatus-5percent
InstanceOf: CHCRLObservationOestrogenReceptorStatus
Title: "Oestrogen Receptor Status - 5 %"
Description: "Example for Observation for the oestrogen receptor status"
Usage: #example
* status = #final
* code = $loinc#85329-1 "Cells.estrogen receptor/100 cells in Breast cancer specimen by Immune stain"
* subject = Reference(FranzMinimum)
* effectiveDateTime = "2018-12-15"
* valueQuantity = 5 '%' "percent"

Instance: OestrogenReceptorStatus-Positive
InstanceOf: CHCRLObservationOestrogenReceptorStatus
Title: "Oestrogen Receptor Status - Positive"
Description: "Example for Observation for the oestrogen receptor status"
Usage: #example
* status = #final
* code = $loinc#85329-1 "Cells.estrogen receptor/100 cells in Breast cancer specimen by Immune stain"
* subject = Reference(FranzMinimum)
* effectiveDateTime = "2018-12-15"
* valueBoolean = true

Instance: OestrogenReceptorStatus-NotPerformed
InstanceOf: CHCRLObservationOestrogenReceptorStatus
Title: "Oestrogen Receptor Status - Not performed"
Description: "Example for Observation for the oestrogen receptor status"
Usage: #example
* status = #final
* code = $loinc#85329-1 "Cells.estrogen receptor/100 cells in Breast cancer specimen by Immune stain"
* subject = Reference(FranzMinimum)
* effectiveDateTime = "2018-12-15"
* dataAbsentReason = $data-absent-reason#not-performed "Not Performed"

Instance: OestrogenReceptorStatus-Unknown
InstanceOf: CHCRLObservationOestrogenReceptorStatus
Title: "Oestrogen Receptor Status - Unknown"
Description: "Example for Observation for the oestrogen receptor status"
Usage: #example
* status = #final
* code = $loinc#85329-1 "Cells.estrogen receptor/100 cells in Breast cancer specimen by Immune stain"
* subject = Reference(FranzMinimum)
* effectiveDateTime = "2018-12-15"
* dataAbsentReason = $data-absent-reason#unknown "Unknown"
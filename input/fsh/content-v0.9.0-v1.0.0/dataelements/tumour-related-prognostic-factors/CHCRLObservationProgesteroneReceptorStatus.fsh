Profile: CHCRLObservationProgesteroneReceptorStatus
Parent: Observation
Id: ch-crl-observation-progesteronereceptorstatus
Title: "CH CRL Observation Progesterone Receptor Status"
Description: "Definition of the Observation for the progesterone receptor status"
* obeys ch-crl-obs-1
* . ^short = "CH CRL Observation Progesterone Receptor Status"
* code 1..
* code = $loinc#85325-9 "Cells.progesterone receptor/100 cells in Breast cancer specimen by Immune stain"
* subject 1..
* subject only Reference(CHCRLPatient)
* subject ^short = "Patient"
* subject.reference 1..
* effectiveDateTime 1..
* performer only Reference(CHCRLPractitioner or CHCRLOrganizationDepartment)
* performer ^short = "Practitioner if resident physician or Organization Department if hospital"
* performer.reference 1..

* value[x] only Quantity or boolean

* valueQuantity ^short = "The progesterone receptor expression status of the tumour. Quantitative information, percentage value (%)."
* valueQuantity.value 1..
* valueQuantity.unit = "percent"
* valueQuantity.unit 1..
* valueQuantity.system = $ucum
* valueQuantity.system 1..
* valueQuantity.code = #%
* valueQuantity.code 1..

* valueBoolean ^short = "The progesterone receptor expression status of the tumour. 
Qualitative information, if receptor status negative then 'value=false', if receptor status positive then 'value=true'."

* dataAbsentReason ^short = "The progesterone receptor expression status of the tumour is not performed or unknown"
* dataAbsentReason.coding obeys ch-crl-obs-2
* dataAbsentReason.coding 1..*
* dataAbsentReason.coding.system 1..
* dataAbsentReason.coding.system = "http://terminology.hl7.org/CodeSystem/data-absent-reason" (exactly)
* dataAbsentReason.coding.code 1..
* dataAbsentReason.coding.code ^short = "If receptor status not performed than 'value=not-performed'. 
If receptor status unknown (no information available) than 'value=unknown'."
* dataAbsentReason.coding.display 1..


Mapping: NICER-A-for-CHCRLObservationProgesteroneReceptorStatus
Id: NICER-A
Title: "NATIONAL CANCER DATA DICTIONARY, V 1.1, Part A: BASIC VARIABLES for Adults, Adolescents, and Children"
Source: CHCRLObservationProgesteroneReceptorStatus
Target: "https://www.nacr.ch/assets/files/uploads/a-datadictionary-basicvariables-v1.1.pdf"
* -> "Progesterone receptor status (Variable number: 5.1.2)"


Instance: ProgesteroneReceptorStatus-3percent
InstanceOf: CHCRLObservationProgesteroneReceptorStatus
Title: "Progesterone Receptor Status - 3 %"
Description: "Example for Observation for the progesterone receptor status"
Usage: #example
* status = #final
* code = $loinc#85325-9 "Cells.progesterone receptor/100 cells in Breast cancer specimen by Immune stain"
* subject = Reference(FranzMinimum)
* effectiveDateTime = "2018-12-15"
* valueQuantity = 3 '%' "percent"

Instance: ProgesteroneReceptorStatus-Negative
InstanceOf: CHCRLObservationProgesteroneReceptorStatus
Title: "Progesterone Receptor Status - Negative"
Description: "Example for Observation for the progesterone receptor status"
Usage: #example
* status = #final
* code = $loinc#85325-9 "Cells.progesterone receptor/100 cells in Breast cancer specimen by Immune stain"
* subject = Reference(FranzMinimum)
* effectiveDateTime = "2018-12-15"
* valueBoolean = false

Instance: ProgesteroneReceptorStatus-NotPerformed
InstanceOf: CHCRLObservationProgesteroneReceptorStatus
Title: "Progesterone Receptor Status - Not Performed"
Description: "Example for Observation for the progesterone receptor status"
Usage: #example
* status = #final
* code = $loinc#85325-9 "Cells.progesterone receptor/100 cells in Breast cancer specimen by Immune stain"
* subject = Reference(FranzMinimum)
* effectiveDateTime = "2018-12-15"
* dataAbsentReason = $data-absent-reason#not-performed "Not Performed"

Instance: ProgesteroneReceptorStatus-Unknown
InstanceOf: CHCRLObservationProgesteroneReceptorStatus
Title: "Progesterone Receptor Status - Unknown"
Description: "Example for Observation for the progesterone receptor status"
Usage: #example
* status = #final
* code = $loinc#85325-9 "Cells.progesterone receptor/100 cells in Breast cancer specimen by Immune stain"
* subject = Reference(FranzMinimum)
* effectiveDateTime = "2018-12-15"
* dataAbsentReason = $data-absent-reason#unknown "Unknown"
Profile: CHCRLObservationResectionMarginInsituTumour
Parent: Observation
Id: ch-crl-observation-resectionmargininsitutumour
Title: "CH CRL Observation Resection Margin In-situ Tumour"
Description: "Definition of the Observation for the resection margin in-situ tumour"
* . ^short = "CH CRL Observation Resection Margin In-situ Tumour"
* code 1..
* code = $nkrs-basicvariables#6.4 "Resection margin in-situ tumour" 
* subject 1..
* subject only Reference(CHCRLPatient)
* subject ^short = "Patient"
* subject.reference 1..
* effectiveDateTime 1..
* performer only Reference(CHCRLPractitioner or CHCRLOrganizationDepartment)
* performer ^short = "Practitioner if resident physician or Organization Department if hospital"
* performer.reference 1..

* valueQuantity ^short = "The minimal width of the normal tissue between the tumour and the surgical margin of the resected tumour on primary site 
(microscopic distance between the outermost tumour cells and the cut edge of the specimen). Measurement in millimeter."
* valueQuantity.value 1..
* valueQuantity.unit = "millimeter"
* valueQuantity.unit 1..
* valueQuantity.system = $ucum
* valueQuantity.system 1..
* valueQuantity.code = #mm
* valueQuantity.code 1..

* dataAbsentReason ^short = "The minimal width of the normal tissue between the tumour and the surgical margin of the resected tumour on primary site 
is not applicable or unknown"
* dataAbsentReason.coding 1..*
* dataAbsentReason.coding.system 1..
* dataAbsentReason.coding.system = "http://terminology.hl7.org/CodeSystem/data-absent-reason" (exactly)
* dataAbsentReason.coding.code 1..
* dataAbsentReason.coding.code ^short = "If not applicable than 'value=not-applicable'. If not stated / not assessed than 'value=unknown'."
* dataAbsentReason.coding.display 1..


Mapping: NICER-A-for-CHCRLObservationResectionMarginInsituTumour
Id: NICER-A
Title: "NATIONAL CANCER DATA DICTIONARY, V 1.1, Part A: BASIC VARIABLES for Adults, Adolescents, and Children"
Source: CHCRLObservationResectionMarginInsituTumour
Target: "https://www.nacr.ch/assets/files/uploads/a-datadictionary-basicvariables-v1.1.pdf"
* -> "Resection margin in-situ tumour (Variable number: 6.4)"


Instance: ResectionMarginInsituTumour-2.0mm
InstanceOf: CHCRLObservationResectionMarginInsituTumour
Title: "Resection Margin In-situ Tumour - 2.0 mm"
Description: "Example for Observation for the resection margin in-situ tumour"
Usage: #example
* status = #final
* code = $nkrs-basicvariables#6.4 "Resection margin in-situ tumour" 
* subject = Reference(FranzMinimum)
* effectiveDateTime = "2018-12-15"
* valueQuantity = 2.0 'mm' "millimeter"

Instance: ResectionMarginInsituTumour-Unknown
InstanceOf: CHCRLObservationResectionMarginInsituTumour
Title: "Resection Margin In-situ Tumour - Unknown"
Description: "Example for Observation for the resection margin in-situ tumour"
Usage: #example
* status = #final
* code = $nkrs-basicvariables#6.4 "Resection margin in-situ tumour" 
* subject = Reference(FranzMinimum)
* effectiveDateTime = "2018-12-15"
* dataAbsentReason = $data-absent-reason#unknown "Unknown"

Instance: ResectionMarginInsituTumour-NotApplicable
InstanceOf: CHCRLObservationResectionMarginInsituTumour
Title: "Resection Margin In-situ Tumour - Not Applicable"
Description: "Example for Observation for the resection margin in-situ tumour"
Usage: #example
* status = #final
* code = $nkrs-basicvariables#6.4 "Resection margin in-situ tumour" 
* subject = Reference(FranzMinimum)
* effectiveDateTime = "2018-12-15"
* dataAbsentReason = $data-absent-reason#not-applicable "Not Applicable"
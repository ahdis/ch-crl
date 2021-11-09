Profile: CHCRLObservationResectionMarginInvasiveTumour
Parent: Observation
Id: ch-crl-observation-resectionmargininvasivetumour
Title: "CH CRL Observation Resection Margin Invasive Tumour"
Description: "Definition of the Observation for the resection margin invasive tumour"
* . ^short = "CH CRL Observation Resection Margin Invasive Tumour"
* code 1..
* code = $loinc#33737-8 "Distance of tumor from closest margin"
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


Mapping: NICER-A-for-CHCRLObservationResectionMarginInvasiveTumour
Id: NICER-A
Title: "NATIONAL CANCER DATA DICTIONARY, V 1.1, Part A: BASIC VARIABLES for Adults, Adolescents, and Children"
Source: CHCRLObservationResectionMarginInvasiveTumour
Target: "https://www.nacr.ch/assets/files/uploads/a-datadictionary-basicvariables-v1.1.pdf"
* -> "Resection margin invasive tumour (Variable number: 6.3)"


Instance: ResectionMarginInvasiveTumour-1.5mm
InstanceOf: CHCRLObservationResectionMarginInvasiveTumour
Title: "Resection Margin Invasive Tumour - 1.5 mm"
Description: "Example for Observation for the resection margin invasive tumour"
Usage: #example
* status = #final
* code = $loinc#33737-8 "Distance of tumor from closest margin"
* subject = Reference(FranzMinimum)
* effectiveDateTime = "2018-12-15"
* valueQuantity = 1.5 'mm' "millimeter"

Instance: ResectionMarginInvasiveTumour-Unknown
InstanceOf: CHCRLObservationResectionMarginInvasiveTumour
Title: "Resection Margin Invasive Tumour - Unknown"
Description: "Example for Observation for the resection margin invasive tumour"
Usage: #example
* status = #final
* code = $loinc#33737-8 "Distance of tumor from closest margin"
* subject = Reference(FranzMinimum)
* effectiveDateTime = "2018-12-15"
* dataAbsentReason = $data-absent-reason#unknown "Unknown"

Instance: ResectionMarginInvasiveTumour-NotApplicable
InstanceOf: CHCRLObservationResectionMarginInvasiveTumour
Title: "Resection Margin Invasive Tumour - Not Applicable"
Description: "Example for Observation for the resection margin invasive tumour"
Usage: #example
* status = #final
* code = $loinc#33737-8 "Distance of tumor from closest margin"
* subject = Reference(FranzMinimum)
* effectiveDateTime = "2018-12-15"
* dataAbsentReason = $data-absent-reason#not-applicable "Not Applicable"
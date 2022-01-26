Profile: CHCRLObservationClinicalTumourSize
Parent: Observation
Id: ch-crl-observation-clinicaltumoursize
Title: "CH CRL Observation Clinical Tumour Size"
Description: "Definition of the Observation for the clinical tumour size"
* obeys ch-crl-obs-1
* . ^short = "CH CRL Observation Clinical Tumour Size"
* code 1..
* code = $nkrs-variables#4.39 "Clinical tumour size"
* subject 1..
* subject only Reference(CHCRLPatient)
* subject ^short = "Patient"
* subject.reference 1..
* effectiveDateTime 1..
* performer only Reference(CHCRLPractitioner or CHCRLOrganizationDepartment)
* performer ^short = "Practitioner if resident physician or Organization Department if hospital"
* performer.reference 1..

* valueQuantity ^short = "The largest preoperative dimension or diameter of the tumour, in mm"
* valueQuantity.value 1..
* valueQuantity.unit = "millimeter"
* valueQuantity.unit 1..
* valueQuantity.system = $ucum
* valueQuantity.system 1..
* valueQuantity.code = #mm
* valueQuantity.code 1..

* dataAbsentReason ^short = "The tumour size is not stated / not assessed"
* dataAbsentReason.coding 1..*
* dataAbsentReason.coding.system 1..
* dataAbsentReason.coding.system = "http://terminology.hl7.org/CodeSystem/data-absent-reason" (exactly)
* dataAbsentReason.coding.code 1..
* dataAbsentReason.coding.code = #unknown (exactly)
* dataAbsentReason.coding.display 1..
* dataAbsentReason.coding.display = "Unknown" (exactly)


Mapping: NICER-A-for-CHCRLObservationClinicalTumourSize
Id: NICER-A
Title: "NATIONAL CANCER DATA DICTIONARY, V 1.1, Part A: BASIC VARIABLES for Adults, Adolescents, and Children"
Source: CHCRLObservationClinicalTumourSize
Target: "https://www.nacr.ch/assets/files/uploads/a-datadictionary-basicvariables-v1.1.pdf"
* -> "Clinical tumour size (Variable number: 4.39)"


Instance: ClinicalTumourSize-11mm
InstanceOf: CHCRLObservationClinicalTumourSize
Title: "Clinical Tumour Size - 11 mm"
Description: "Example for Observation for the clinical tumour size"
Usage: #example
* status = #final
* code = $nkrs-variables#4.39 "Clinical tumour size"
* subject = Reference(FranzMinimum)
* effectiveDateTime = "2018-12-15"
* valueQuantity = 11 'mm' "millimeter"

Instance: ClinicalTumourSize-Unknown
InstanceOf: CHCRLObservationClinicalTumourSize
Title: "Clinical Tumour Size - Unknown"
Description: "Example for Observation for the clinical tumour size"
Usage: #example
* status = #final
* code = $nkrs-variables#4.39 "Clinical tumour size"
* subject = Reference(FranzMinimum)
* effectiveDateTime = "2018-12-15"
* dataAbsentReason = $data-absent-reason#unknown "Unknown"
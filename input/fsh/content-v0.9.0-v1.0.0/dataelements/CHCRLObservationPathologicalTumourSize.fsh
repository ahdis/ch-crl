Profile: CHCRLObservationPathologicalTumourSize
Parent: Observation
Id: ch-crl-observation-pathologicaltumoursize
Title: "CH CRL Observation Pathological Tumour Size"
Description: "Definition of the Observation for the pathological tumour size"
* . ^short = "CH CRL Observation Pathological Tumour Size"
* code 1..
* code = $sct#396944008 "Tumor size after sectioning (observable entity)" // TBD
* subject 1..
* subject only Reference(CHCRLPatient)
* subject ^short = "Patient"
* subject.reference 1..
* effectiveDateTime 1..
* performer only Reference(CHCRLPractitioner or CHCRLOrganizationDepartment)
* performer ^short = "Practitioner if resident physician or Organization Department if hospital"
* performer.reference 1..

* valueQuantity ^short = "The largest postoperative dimension or diameter of the tumour, in mm"
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


Mapping: NICER-A-for-CHCRLObservationPathologicalTumourSize
Id: NICER-A
Title: "NATIONAL CANCER DATA DICTIONARY, V 1.1, Part A: BASIC VARIABLES for Adults, Adolescents, and Children"
Source: CHCRLObservationPathologicalTumourSize
Target: "https://www.nacr.ch/assets/files/uploads/a-datadictionary-basicvariables-v1.1.pdf"
* -> "Pathological tumour size (Variable number: 4.40)"


Instance: PathologicalTumourSize-11mm
InstanceOf: CHCRLObservationPathologicalTumourSize
Title: "Pathological Tumour Size - 11 mm"
Description: "Example for Observation for the pathological tumour size"
Usage: #example
* status = #final
* code = $sct#396944008 "Tumor size after sectioning (observable entity)" // TBD
* subject = Reference(FranzMinimum)
* effectiveDateTime = "2018-12-15"
* valueQuantity = 11 'mm' "millimeter"

Instance: PathologicalTumourSize-Unknown
InstanceOf: CHCRLObservationPathologicalTumourSize
Title: "Pathological Tumour Size - Unknown"
Description: "Example for Observation for the pathological tumour size"
Usage: #example
* status = #final
* code = $sct#396944008 "Tumor size after sectioning (observable entity)" // TBD
* subject = Reference(FranzMinimum)
* effectiveDateTime = "2018-12-15"
* dataAbsentReason = $data-absent-reason#unknown "Unknown"
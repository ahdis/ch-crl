Profile: CHCRLObservationBreslowThickness
Parent: Observation
Id: ch-crl-observation-breslowthickness
Title: "CH CRL Observation Breslow Thickness"
Description: "Definition of the Observation for the breslow thickness"
* . ^short = "CH CRL Observation Breslow Thickness"
* code 1..
* code = $loinc#92839-0 "Breslow thickness [Length] in Skin melanoma"
* subject 1..
* subject only Reference(CHCRLPatient)
* subject ^short = "Patient"
* subject.reference 1..
* effectiveDateTime 1..
* performer only Reference(CHCRLPractitioner or CHCRLOrganizationDepartment)
* performer ^short = "Practitioner if resident physician or Organization Department if hospital"
* performer.reference 1..

* valueQuantity ^short = "The distance from stratum granulosum to the deepest tumour cell, measured in mm"
* valueQuantity.value 1..
* valueQuantity.unit = "millimeter"
* valueQuantity.unit 1..
* valueQuantity.system = $ucum
* valueQuantity.system 1..
* valueQuantity.code = #mm
* valueQuantity.code 1..

* dataAbsentReason ^short = "The distance from stratum granulosum to the deepest tumour cell is not stated / not assessed"
* dataAbsentReason.coding 1..*
* dataAbsentReason.coding.system 1..
* dataAbsentReason.coding.system = "http://terminology.hl7.org/CodeSystem/data-absent-reason" (exactly)
* dataAbsentReason.coding.code 1..
* dataAbsentReason.coding.code = #unknown (exactly)
* dataAbsentReason.coding.display 1..
* dataAbsentReason.coding.display = "Unknown" (exactly)


Mapping: NICER-A-for-CHCRLObservationBreslowThickness
Id: NICER-A
Title: "NATIONAL CANCER DATA DICTIONARY, V 1.1, Part A: BASIC VARIABLES for Adults, Adolescents, and Children"
Source: CHCRLObservationBreslowThickness
Target: "https://www.nacr.ch/assets/files/uploads/a-datadictionary-basicvariables-v1.1.pdf"
* -> "Breslow thickness (Variable number: 5.3.1)"


Instance: BreslowThickness-2.0mm
InstanceOf: CHCRLObservationBreslowThickness
Title: "Breslow Thickness - 2.0 mm"
Description: "Example for Observation for the breslow thickness"
Usage: #example
* status = #final
* code = $loinc#92839-0 "Breslow thickness [Length] in Skin melanoma"
* subject = Reference(FranzMinimum)
* effectiveDateTime = "2018-12-15"
* valueQuantity = 2.0 'mm' "millimeter"

Instance: BreslowThickness-Unknown
InstanceOf: CHCRLObservationBreslowThickness
Title: "Breslow Thickness - Unknown"
Description: "Example for Observation for the breslow thickness"
Usage: #example
* status = #final
* code = $loinc#92839-0 "Breslow thickness [Length] in Skin melanoma"
* subject = Reference(FranzMinimum)
* effectiveDateTime = "2018-12-15"
* dataAbsentReason = $data-absent-reason#unknown "Unknown"
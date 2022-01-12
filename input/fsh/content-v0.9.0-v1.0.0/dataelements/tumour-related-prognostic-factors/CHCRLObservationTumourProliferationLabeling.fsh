Profile: CHCRLObservationTumourProliferationLabeling
Parent: Observation
Id: ch-crl-observation-tumourproliferationlabeling
Title: "CH CRL Observation Tumour Proliferation Labeling"
Description: "Definition of the Observation for the tumour proliferation labeling"
* . ^short = "CH CRL Observation Tumour Proliferation Labeling"
* code 1..
* code = $sct#1495041000004108 "Neoplastic proliferation (qualifier value)"
* subject 1..
* subject only Reference(CHCRLPatient)
* subject ^short = "Patient"
* subject.reference 1..
* effectiveDateTime 1..
* performer only Reference(CHCRLPractitioner or CHCRLOrganizationDepartment)
* performer ^short = "Practitioner if resident physician or Organization Department if hospital"
* performer.reference 1..

* valueQuantity 0..1
* valueQuantity ^short = "The expression of the immunohistochemical marker of proliferation, the Ki-67 antigen."
* valueQuantity.value 1..
* valueQuantity.unit = "percent"
* valueQuantity.unit 1..
* valueQuantity.system = $ucum
* valueQuantity.system 1..
* valueQuantity.code = #%
* valueQuantity.code 1..

* dataAbsentReason ^short = "The expression of the immunohistochemical marker of proliferation, the Ki-67 antigen, is not stated / not assessed"
* dataAbsentReason.coding 1..*
* dataAbsentReason.coding.system 1..
* dataAbsentReason.coding.system = "http://terminology.hl7.org/CodeSystem/data-absent-reason" (exactly)
* dataAbsentReason.coding.code 1..
* dataAbsentReason.coding.code = #unknown (exactly)
* dataAbsentReason.coding.display 1..
* dataAbsentReason.coding.display = "Unknown" (exactly)


Mapping: NICER-A-for-CHCRLObservationTumourProliferationLabeling
Id: NICER-A
Title: "NATIONAL CANCER DATA DICTIONARY, V 1.1, Part A: BASIC VARIABLES for Adults, Adolescents, and Children"
Source: CHCRLObservationTumourProliferationLabeling
Target: "https://www.nacr.ch/assets/files/uploads/a-datadictionary-basicvariables-v1.1.pdf"
* -> "Tumour proliferation labeling (Variable number: 5.1.4)"


Instance: TumourProliferationLabeling-3percent
InstanceOf: CHCRLObservationTumourProliferationLabeling
Title: "Tumour Proliferation Labeling - 3 %"
Description: "Example for Observation for the tumour proliferation labeling"
Usage: #example
* status = #final
* code = $sct#1495041000004108 "Neoplastic proliferation (qualifier value)"
* subject = Reference(FranzMinimum)
* effectiveDateTime = "2018-12-15"
* valueQuantity = 3 '%' "percent"


Instance: TumourProliferationLabeling-Unknown
InstanceOf: CHCRLObservationTumourProliferationLabeling
Title: "Tumour Proliferation Labeling - Unknown"
Description: "Example for Observation for the tumour proliferation labeling"
Usage: #example
* status = #final
* code = $sct#1495041000004108 "Neoplastic proliferation (qualifier value)"
* subject = Reference(FranzMinimum)
* effectiveDateTime = "2018-12-15"
* dataAbsentReason = $data-absent-reason#unknown "Unknown"
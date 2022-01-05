Profile: CHCRLObservationTopographyMetastasesAtDiagnosis
Parent: Observation
Id: ch-crl-observation-topographymetastasesatdiagnosis
Title: "CH CRL Observation Topography of Metastases at Diagnosis"
Description: "Definition of the Observation for the topography of metastases at diagnosis"
* . ^short = "CH CRL Observation Topography of Metastases at Diagnosis"
* code 1..
* code = $loinc#33733-7 "Sites of distant metastasis"
* subject 1..
* subject only Reference(CHCRLPatient)
* subject ^short = "Patient"
* subject.reference 1..
* effectiveDateTime 1..
* performer only Reference(CHCRLPractitioner or CHCRLOrganizationDepartment)
* performer ^short = "Practitioner if resident physician or Organization Department if hospital"
* performer.reference 1..

* valueCodeableConcept from NkrsTopographyMetastases (required)
* valueCodeableConcept ^short = "The distant site(s) of metastatic involvement at time of diagnosis"
* valueCodeableConcept.coding 1..*
* valueCodeableConcept.coding.system 1..
* valueCodeableConcept.coding.code 1..
* valueCodeableConcept.coding.display 1..

* dataAbsentReason ^short = "No information on the topography of metastases available, e.g. poly-metastatic disease."
* dataAbsentReason.coding 1..*
* dataAbsentReason.coding.system 1..
* dataAbsentReason.coding.system = "http://terminology.hl7.org/CodeSystem/data-absent-reason" (exactly)
* dataAbsentReason.coding.code 1..
* dataAbsentReason.coding.code = #unknown (exactly)
* dataAbsentReason.coding.display 1..
* dataAbsentReason.coding.display = "Unknown" (exactly)


Mapping: NICER-A-for-CHCRLObservationTopographyMetastasesAtDiagnosis
Id: NICER-A
Title: "NATIONAL CANCER DATA DICTIONARY, V 1.1, Part A: BASIC VARIABLES for Adults, Adolescents, and Children"
Source: CHCRLObservationTopographyMetastasesAtDiagnosis
Target: "https://www.nacr.ch/assets/files/uploads/a-datadictionary-basicvariables-v1.1.pdf"
* -> "Topography of metastases at diagnosis (Variable number: 4.42)"


Instance: TopographyMetastasesAtDiagnosis-LYM
InstanceOf: CHCRLObservationTopographyMetastasesAtDiagnosis
Title: "Topography of Metastases at Diagnosis - LYM"
Description: "Example for Observation for the topography of metastases at diagnosis"
Usage: #example
* status = #final
* code = $loinc#33733-7 "Sites of distant metastasis"
* subject = Reference(FranzMinimum)
* effectiveDateTime = "2018-12-15"
* valueCodeableConcept = $nkrs-topographymetastases#5 "LYM"

Instance: TopographyMetastasesAtDiagnosis-MAR
InstanceOf: CHCRLObservationTopographyMetastasesAtDiagnosis
Title: "Topography of Metastases at Diagnosis - MAR"
Description: "Example for Observation for the topography of metastases at diagnosis"
Usage: #example
* status = #final
* code = $loinc#33733-7 "Sites of distant metastasis"
* subject = Reference(FranzMinimum)
* effectiveDateTime = "2018-12-15"
* valueCodeableConcept.coding = $nkrs-topographymetastases#6 "MAR"

Instance: TopographyMetastasesAtDiagnosis-OTH
InstanceOf: CHCRLObservationTopographyMetastasesAtDiagnosis
Title: "Topography of Metastases at Diagnosis - OTH"
Description: "Example for Observation for the topography of metastases at diagnosis"
Usage: #example
* status = #final
* code = $loinc#33733-7 "Sites of distant metastasis"
* subject = Reference(FranzMinimum)
* effectiveDateTime = "2018-12-15"
* valueCodeableConcept = $nkrs-topographymetastases#11 "OTH"

Instance: TopographyMetastasesAtDiagnosis-Unknown
InstanceOf: CHCRLObservationTopographyMetastasesAtDiagnosis
Title: "Topography of Metastases at Diagnosis - Unknown"
Description: "Example for Observation for the topography of metastases at diagnosis"
Usage: #example
* status = #final
* code = $loinc#33733-7 "Sites of distant metastasis"
* subject = Reference(FranzMinimum)
* effectiveDateTime = "2018-12-15"
* dataAbsentReason = $data-absent-reason#unknown "Unknown"
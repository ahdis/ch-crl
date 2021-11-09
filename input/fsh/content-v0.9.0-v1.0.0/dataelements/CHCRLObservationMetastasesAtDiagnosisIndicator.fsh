Profile: CHCRLObservationMetastasesAtDiagnosisIndicator
Parent: Observation
Id: ch-crl-observation-metastasesatdiagnosisindicator
Title: "CH CRL Observation Metastases at Diagnosis Indicator"
Description: "Definition of the Observation for the metastases at diagnosis indicator"
* . ^short = "CH CRL Observation Metastases at Diagnosis Indicator"
* code 1..
* code = $sct#260874000 "Metastases status (attribute)" // TBD
* subject 1..
* subject only Reference(CHCRLPatient)
* subject ^short = "Patient"
* subject.reference 1..
* effectiveDateTime 1..
* performer only Reference(CHCRLPractitioner or CHCRLOrganizationDepartment)
* performer ^short = "Practitioner if resident physician or Organization Department if hospital"
* performer.reference 1..

* valueBoolean ^short = "If no metastases were present at the time of diagnosis, then 'value=false'. 
If metastases were present at the time of diagnosis, then 'value=true'."

* dataAbsentReason ^short = "The presence of metastases at time of diagnosis is not stated / not assessed"
* dataAbsentReason.coding 1..*
* dataAbsentReason.coding.system 1..
* dataAbsentReason.coding.system = "http://terminology.hl7.org/CodeSystem/data-absent-reason" (exactly)
* dataAbsentReason.coding.code 1..
* dataAbsentReason.coding.code = #unknown (exactly)
* dataAbsentReason.coding.display 1..
* dataAbsentReason.coding.display = "Unknown" (exactly)


Mapping: NICER-A-for-CHCRLObservationMetastasesAtDiagnosisIndicator
Id: NICER-A
Title: "NATIONAL CANCER DATA DICTIONARY, V 1.1, Part A: BASIC VARIABLES for Adults, Adolescents, and Children"
Source: CHCRLObservationMetastasesAtDiagnosisIndicator
Target: "https://www.nacr.ch/assets/files/uploads/a-datadictionary-basicvariables-v1.1.pdf"
* -> "Metastases at diagnosis indicator (Variable number: 4.41)"


Instance: MetastasesAtDiagnosisIndicator-No
InstanceOf: CHCRLObservationMetastasesAtDiagnosisIndicator
Title: "Metastases at Diagnosis Indicator - No"
Description: "Example for Observation for the metastases at diagnosis indicator"
Usage: #example
* status = #final
* code = $sct#260874000 "Metastases status (attribute)" // TBD
* subject = Reference(FranzMinimum)
* effectiveDateTime = "2018-12-15"
* valueBoolean = false


Instance: MetastasesAtDiagnosisIndicator-Yes
InstanceOf: CHCRLObservationMetastasesAtDiagnosisIndicator
Title: "Metastases at Diagnosis Indicator - Yes"
Description: "Example for Observation for the metastases at diagnosis indicator"
Usage: #example
* status = #final
* code = $sct#260874000 "Metastases status (attribute)" // TBD
* subject = Reference(FranzMinimum)
* effectiveDateTime = "2018-12-15"
* valueBoolean = true


Instance: MetastasesAtDiagnosisIndicator-Unknown
InstanceOf: CHCRLObservationMetastasesAtDiagnosisIndicator
Title: "Metastases at Diagnosis Indicator - Unknown"
Description: "Example for Observation for the metastases at diagnosis indicator"
Usage: #example
* status = #final
* code = $sct#260874000 "Metastases status (attribute)" // TBD
* subject = Reference(FranzMinimum)
* effectiveDateTime = "2018-12-15"
* dataAbsentReason = $data-absent-reason#unknown "Unknown"
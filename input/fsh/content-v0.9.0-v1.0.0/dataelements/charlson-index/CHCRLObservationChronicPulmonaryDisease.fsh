Profile: CHCRLObservationChronicPulmonaryDisease
Parent: Observation
Id: ch-crl-observation-chronicpulmonarydisease
Title: "CH CRL Observation Chronic Pulmonary Disease"
Description: "Definition of the Observation for the chronic pulmonary disease"
* . ^short = "CH CRL Observation Chronic Pulmonary Disease"
* code 1..
* code = $sct#413839001 "Chronic lung disease (disorder)"
* subject 1..
* subject only Reference(CHCRLPatient)
* subject ^short = "Patient"
* subject.reference 1..
* effectiveDateTime 1..
* performer only Reference(CHCRLPractitioner or CHCRLOrganizationDepartment)
* performer ^short = "Practitioner if resident physician or Organization Department if hospital"
* performer.reference 1..

* valueBoolean 1..
* valueBoolean ^short = "If a chronic pulmonary disease is not present then 'value=false'. 
If a chronic pulmonary disease is present then 'value=true'."


Mapping: NICER-B1-for-CHCRLObservationChronicPulmonaryDisease
Id: NICER-B1
Title: "NATIONAL CANCER DATA DICTIONARY, V 1.1, Part B1: SUPPLEMENTARY VARIABLES for Adults"
Source: CHCRLObservationChronicPulmonaryDisease
Target: "https://www.nacr.ch/assets/files/uploads/b1-datadictionary-supplementaryvariables-adults-v1.1.pdf"
* -> "Chronic Pulmonary Disease (Variable number: 10.7)"


Instance: ChronicPulmonaryDisease-No
InstanceOf: CHCRLObservationChronicPulmonaryDisease
Title: "Chronic Pulmonary Disease - No"
Description: "Example for Observation for the chronic pulmonary disease"
Usage: #example
* status = #final
* code = $sct#413839001 "Chronic lung disease (disorder)"
* subject = Reference(FranzMinimum)
* effectiveDateTime = "2018-12-15"
* valueBoolean = false

Instance: ChronicPulmonaryDisease-Yes
InstanceOf: CHCRLObservationChronicPulmonaryDisease
Title: "Chronic Pulmonary Disease - Yes"
Description: "Example for Observation for the chronic pulmonary disease"
Usage: #example
* status = #final
* code = $sct#413839001 "Chronic lung disease (disorder)"
* subject = Reference(FranzMinimum)
* effectiveDateTime = "2018-12-15"
* valueBoolean = true

Profile: CHCRLObservationModerateToSevereChronicKidneyDisease
Parent: Observation
Id: ch-crl-observation-moderatetoseverechronickidneydisease
Title: "CH CRL Observation Moderate to Severe Chronic Kidney Disease"
Description: "Definition of the Observation for the moderate to severe chronic kidney disease"
* . ^short = "CH CRL Observation Moderate to Severe Chronic Kidney Disease"
* code 1..
* code = $sct#709044004 "Chronic kidney disease (disorder)"
* subject 1..
* subject only Reference(CHCRLPatient)
* subject ^short = "Patient"
* subject.reference 1..
* effectiveDateTime 1..
* performer only Reference(CHCRLPractitioner or CHCRLOrganizationDepartment)
* performer ^short = "Practitioner if resident physician or Organization Department if hospital"
* performer.reference 1..

* valueBoolean 1..
* valueBoolean ^short = "If a moderate to severe chronic kidney disease is not present then 'value=false'. 
If a moderate to severe chronic kidney disease is present then 'value=true'."


Mapping: NICER-B1-for-CHCRLObservationModerateToSevereChronicKidneyDisease
Id: NICER-B1
Title: "NATIONAL CANCER DATA DICTIONARY, V 1.1, Part B1: SUPPLEMENTARY VARIABLES for Adults"
Source: CHCRLObservationModerateToSevereChronicKidneyDisease
Target: "https://www.nacr.ch/assets/files/uploads/b1-datadictionary-supplementaryvariables-adults-v1.1.pdf"
* -> "Moderate to Severe Chronic Kidney Disease (Variable number: 10.4)"


Instance: ModerateToSevereChronicKidneyDisease-No
InstanceOf: CHCRLObservationModerateToSevereChronicKidneyDisease
Title: "Moderate to Severe Chronic Kidney Disease - No"
Description: "Example for Observation for the moderate to severe chronic kidney disease"
Usage: #example
* status = #final
* code = $sct#709044004 "Chronic kidney disease (disorder)"
* subject = Reference(FranzMinimum)
* effectiveDateTime = "2018-12-15"
* valueBoolean = false

Instance: ModerateToSevereChronicKidneyDisease-Yes
InstanceOf: CHCRLObservationModerateToSevereChronicKidneyDisease
Title: "Moderate to Severe Chronic Kidney Disease - Yes"
Description: "Example for Observation for the moderate to severe chronic kidney disease"
Usage: #example
* status = #final
* code = $sct#709044004 "Chronic kidney disease (disorder)"
* subject = Reference(FranzMinimum)
* effectiveDateTime = "2018-12-15"
* valueBoolean = true

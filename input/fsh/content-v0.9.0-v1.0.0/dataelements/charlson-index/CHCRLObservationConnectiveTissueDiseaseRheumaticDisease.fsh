Profile: CHCRLObservationConnectiveTissueDiseaseRheumaticDisease
Parent: Observation
Id: ch-crl-observation-connectivetissuediseaserheumaticdisease
Title: "CH CRL Observation Connective Tissue Disease - Rheumatic Disease"
Description: "Definition of the Observation for the connective tissue disease - rheumatic disease"
* . ^short = "CH CRL Observation Connective Tissue Disease - Rheumatic Disease"
* code 1..
* code = $nkrs-variables#10.12 "Connective Tissue Disease - Rheumatic disease"
* subject 1..
* subject only Reference(CHCRLPatient)
* subject ^short = "Patient"
* subject.reference 1..
* effectiveDateTime 1..
* performer only Reference(CHCRLPractitioner or CHCRLOrganizationDepartment)
* performer ^short = "Practitioner if resident physician or Organization Department if hospital"
* performer.reference 1..

* valueBoolean 1..
* valueBoolean ^short = "If a connective tissue disease - rheumatic disease is not present then 'value=false'. 
If a connective tissue disease - rheumatic disease is present then 'value=true'."


Mapping: NICER-B1-for-CHCRLObservationConnectiveTissueDiseaseRheumaticDisease
Id: NICER-B1
Title: "NATIONAL CANCER DATA DICTIONARY, V 1.1, Part B1: SUPPLEMENTARY VARIABLES for Adults"
Source: CHCRLObservationConnectiveTissueDiseaseRheumaticDisease
Target: "https://www.nacr.ch/assets/files/uploads/b1-datadictionary-supplementaryvariables-adults-v1.1.pdf"
* -> "Connective Tissue Disease - Rheumatic disease (Variable number: 10.12)"


Instance: ConnectiveTissueDiseaseRheumaticDisease-No
InstanceOf: CHCRLObservationConnectiveTissueDiseaseRheumaticDisease
Title: "Connective Tissue Disease - Rheumatic Disease - No"
Description: "Example for Observation for the connective tissue disease - rheumatic disease"
Usage: #example
* status = #final
* code = $nkrs-variables#10.12 "Connective Tissue Disease - Rheumatic disease"
* subject = Reference(FranzMinimum)
* effectiveDateTime = "2018-12-15"
* valueBoolean = false

Instance: ConnectiveTissueDiseaseRheumaticDisease-Yes
InstanceOf: CHCRLObservationConnectiveTissueDiseaseRheumaticDisease
Title: "Connective Tissue Disease - Rheumatic Disease - Yes"
Description: "Example for Observation for the connective tissue disease - rheumatic disease"
Usage: #example
* status = #final
* code = $nkrs-variables#10.12 "Connective Tissue Disease - Rheumatic disease"
* subject = Reference(FranzMinimum)
* effectiveDateTime = "2018-12-15"
* valueBoolean = true

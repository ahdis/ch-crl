Profile: CHCRLObservationLiverDisease
Parent: Observation
Id: ch-crl-observation-liverdisease
Title: "CH CRL Observation Liver Disease"
Description: "Definition of the Observation for the liver disease"
* . ^short = "CH CRL Observation Liver Disease"
* code 1..
* code = $sct#235856003 "Disorder of liver (disorder)"
* subject 1..
* subject only Reference(CHCRLPatient)
* subject ^short = "Patient"
* subject.reference 1..
* effectiveDateTime 1..
* performer only Reference(CHCRLPractitioner or CHCRLOrganizationDepartment)
* performer ^short = "Practitioner if resident physician or Organization Department if hospital"
* performer.reference 1..

* valueCodeableConcept 1..
* valueCodeableConcept from NkrsLiverDisease (required)
* valueCodeableConcept ^short = "The presence and severity of liver disease at the time of diagnosis as pre-existing medical condition."
* valueCodeableConcept.coding 1..*
* valueCodeableConcept.coding.system 1..
* valueCodeableConcept.coding.code 1..
* valueCodeableConcept.coding.display 1..


Mapping: NICER-B1-for-CHCRLObservationLiverDisease
Id: NICER-B1
Title: "NATIONAL CANCER DATA DICTIONARY, V 1.1, Part B1: SUPPLEMENTARY VARIABLES for Adults"
Source: CHCRLObservationLiverDisease
Target: "https://www.nacr.ch/assets/files/uploads/b1-datadictionary-supplementaryvariables-adults-v1.1.pdf"
* -> "Liver Disease (Variable number: 10.2)"


Instance: LiverDisease-No
InstanceOf: CHCRLObservationLiverDisease
Title: "Liver Disease - No"
Description: "Example for Observation for the Liver Disease"
Usage: #example
* status = #final
* code = $sct#235856003 "Disorder of liver (disorder)"
* subject = Reference(FranzMinimum)
* effectiveDateTime = "2018-12-15"
* valueCodeableConcept = $nkrs-liverdisease#0 "No (score 0)"

Instance: LiverDisease-Mild
InstanceOf: CHCRLObservationLiverDisease
Title: "Liver Disease - Mild"
Description: "Example for Observation for the Liver Disease"
Usage: #example
* status = #final
* code = $sct#235856003 "Disorder of liver (disorder)"
* subject = Reference(FranzMinimum)
* effectiveDateTime = "2018-12-15"
* valueCodeableConcept = $nkrs-liverdisease#1 "Mild (score 1)"

Instance: LiverDisease-ModerateToSevere
InstanceOf: CHCRLObservationLiverDisease
Title: "Liver Disease - Moderate to severe"
Description: "Example for Observation for the Liver Disease"
Usage: #example
* status = #final
* code = $sct#235856003 "Disorder of liver (disorder)"
* subject = Reference(FranzMinimum)
* effectiveDateTime = "2018-12-15"
* valueCodeableConcept = $nkrs-liverdisease#2 "Moderate to severe (score 3)"

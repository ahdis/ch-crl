Profile: CHCRLObservationPeripheralVascularDisease
Parent: Observation
Id: ch-crl-observation-peripheralvasculardisease
Title: "CH CRL Observation Peripheral Vascular Disease"
Description: "Definition of the Observation for the peripheral vascular disease"
* . ^short = "CH CRL Observation Peripheral Vascular Disease"
* code 1..
* code = $sct#400047006	"Peripheral vascular disease (disorder)"
* subject 1..
* subject only Reference(CHCRLPatient)
* subject ^short = "Patient"
* subject.reference 1..
* effectiveDateTime 1..
* performer only Reference(CHCRLPractitioner or CHCRLOrganizationDepartment)
* performer ^short = "Practitioner if resident physician or Organization Department if hospital"
* performer.reference 1..

* valueBoolean 1..
* valueBoolean ^short = "If a peripheral vascular disease is not present then 'value=false'. 
If a peripheral vascular disease is present then 'value=true'."


Mapping: NICER-B1-for-CHCRLObservationPeripheralVascularDisease
Id: NICER-B1
Title: "NATIONAL CANCER DATA DICTIONARY, V 1.1, Part B1: SUPPLEMENTARY VARIABLES for Adults"
Source: CHCRLObservationPeripheralVascularDisease
Target: "https://www.nacr.ch/assets/files/uploads/b1-datadictionary-supplementaryvariables-adults-v1.1.pdf"
* -> "Peripheral Vascular Disease (Variable number: 10.8)"


Instance: PeripheralVascularDisease-No
InstanceOf: CHCRLObservationPeripheralVascularDisease
Title: "Peripheral Vascular Disease - No"
Description: "Example for Observation for the peripheral vascular disease"
Usage: #example
* status = #final
* code = $sct#400047006	"Peripheral vascular disease (disorder)"
* subject = Reference(FranzMinimum)
* effectiveDateTime = "2018-12-15"
* valueBoolean = false

Instance: PeripheralVascularDisease-Yes
InstanceOf: CHCRLObservationPeripheralVascularDisease
Title: "Peripheral Vascular Disease - Yes"
Description: "Example for Observation for the peripheral vascular disease"
Usage: #example
* status = #final
* code = $sct#400047006	"Peripheral vascular disease (disorder)"
* subject = Reference(FranzMinimum)
* effectiveDateTime = "2018-12-15"
* valueBoolean = true

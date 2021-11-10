Profile: CHCRLObservationResidualInsituTumour
Parent: Observation
Id: ch-crl-observation-residualinsitutumour
Title: "CH CRL Observation Residual In-situ Tumour"
Description: "Definition of the Observation for the residual in-situ tumour"
* . ^short = "CH CRL Observation Residual In-situ Tumour"
* code 1..
* code = $loinc#84892-9 "Residual tumor classification [Type] in Cancer specimen"
* subject 1..
* subject only Reference(CHCRLPatient)
* subject ^short = "Patient"
* subject.reference 1..
* effectiveDateTime 1..
* performer only Reference(CHCRLPractitioner or CHCRLOrganizationDepartment)
* performer ^short = "Practitioner if resident physician or Organization Department if hospital"
* performer.reference 1..

* valueCodeableConcept from NkrsResidualInsituTumour (required)
* valueCodeableConcept ^short = "The in-situ tumour status after treatment. The status takes distant metastases into account."
* valueCodeableConcept.coding 1..*
* valueCodeableConcept.coding.system 1..
* valueCodeableConcept.coding.code 1..
* valueCodeableConcept.coding.display 1..

* dataAbsentReason ^short = "No information on the presence or absence of residual tumour"
* dataAbsentReason.coding 1..*
* dataAbsentReason.coding.system 1..
* dataAbsentReason.coding.system = "http://terminology.hl7.org/CodeSystem/data-absent-reason" (exactly)
* dataAbsentReason.coding.code 1..
* dataAbsentReason.coding.code = #unknown (exactly)
* dataAbsentReason.coding.display 1..
* dataAbsentReason.coding.display = "Unknown" (exactly)


Mapping: NICER-A-for-CHCRLObservationResidualInsituTumour
Id: NICER-A
Title: "NATIONAL CANCER DATA DICTIONARY, V 1.1, Part A: BASIC VARIABLES for Adults, Adolescents, and Children"
Source: CHCRLObservationResidualInsituTumour
Target: "https://www.nacr.ch/assets/files/uploads/a-datadictionary-basicvariables-v1.1.pdf"
* -> "Residual in-situ tumour (Variable number: 6.2)"


Instance: ResidualInsituTumour-RX
InstanceOf: CHCRLObservationResidualInsituTumour
Title: "Residual In-situ Tumour - RX"
Description: "Example for Observation for the residual in-situ tumour"
Usage: #example
* status = #final
* code = $loinc#84892-9 "Residual tumor classification [Type] in Cancer specimen"
* subject = Reference(FranzMinimum)
* effectiveDateTime = "2018-12-15"
* valueCodeableConcept = $nkrs-residualinsitutumour#8 "RX"

Instance: ResidualInsituTumour-Unknown
InstanceOf: CHCRLObservationResidualInsituTumour
Title: "Residual In-situ Tumour - Unknown"
Description: "Example for Observation for the residual in-situ tumour"
Usage: #example
* status = #final
* code = $loinc#84892-9 "Residual tumor classification [Type] in Cancer specimen"
* subject = Reference(FranzMinimum)
* effectiveDateTime = "2018-12-15"
* dataAbsentReason = $data-absent-reason#unknown "Unknown"
Profile: CHCRLObservationDSSplus
Parent: Observation
Id: ch-crl-observation-dssplus
Title: "CH CRL Observation DSSplus"
Description: "Definition of the Observation for the DSSplus"
* obeys ch-crl-obs-1
* . ^short = "CH CRL Observation DSSplus"
* code 1..
* code = $nkrs-variables#4.30 "DSSplus"
* subject 1..
* subject only Reference(CHCRLPatient)
* subject ^short = "Patient"
* subject.reference 1..
* effectiveDateTime 1..
* performer only Reference(CHCRLPractitioner or CHCRLOrganizationDepartment)
* performer ^short = "Practitioner if resident physician or Organization Department if hospital"
* performer.reference 1..

* valueCodeableConcept obeys nkrs-dssplus
* valueCodeableConcept from NkrsDSSplus (preferred)
* valueCodeableConcept ^short = "The DSSplus (Durie-Salmon Plus staging system) is the revised Durie-Salmon staging system 
for multiple myeloma classification, based on MRI findings, FDG PET/CT findings, or both."
* valueCodeableConcept.coding 1..*
* valueCodeableConcept.coding.system 1..
* valueCodeableConcept.coding.code 1..
* valueCodeableConcept.coding.display 1..

* dataAbsentReason ^short = "The DSSplus (Durie-Salmon Plus staging system) is not stated / not assessed"
* dataAbsentReason.coding 1..*
* dataAbsentReason.coding.system 1..
* dataAbsentReason.coding.system = "http://terminology.hl7.org/CodeSystem/data-absent-reason" (exactly)
* dataAbsentReason.coding.code 1..
* dataAbsentReason.coding.code = #unknown (exactly)
* dataAbsentReason.coding.display 1..
* dataAbsentReason.coding.display = "Unknown" (exactly)


Mapping: NICER-A-for-CHCRLObservationDSSplus
Id: NICER-A
Title: "NATIONAL CANCER DATA DICTIONARY, V 1.1, Part A: BASIC VARIABLES for Adults, Adolescents, and Children"
Source: CHCRLObservationDSSplus
Target: "https://www.nacr.ch/assets/files/uploads/a-datadictionary-basicvariables-v1.1.pdf"
* -> "DSSplus (Variable number: 4.30)"


Instance: DSSplus-IB
InstanceOf: CHCRLObservationDSSplus
Title: "DSSplus - IB"
Description: "Example for Observation for the DSSplus"
Usage: #example
* status = #final
* code = $nkrs-variables#4.30 "DSSplus"
* subject = Reference(FranzMinimum)
* effectiveDateTime = "2018-12-15"
* valueCodeableConcept = $nkrs-dssplus#IB "Stage IB"


Instance: DSSplus-Unknown
InstanceOf: CHCRLObservationDSSplus
Title: "DSSplus - Unknown"
Description: "Example for Observation for the DSSplus"
Usage: #example
* status = #final
* code = $nkrs-variables#4.30 "DSSplus"
* subject = Reference(FranzMinimum)
* effectiveDateTime = "2018-12-15"
* dataAbsentReason = $data-absent-reason#unknown "Unknown"
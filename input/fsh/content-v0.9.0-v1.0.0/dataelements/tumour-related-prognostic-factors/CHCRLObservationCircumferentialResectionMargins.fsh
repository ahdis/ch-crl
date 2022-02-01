Profile: CHCRLObservationCircumferentialResectionMargins
Parent: Observation
Id: ch-crl-observation-circumferentialresectionmargins
Title: "CH CRL Observation Circumferential Resection Margins"
Description: "Definition of the Observation for the circumferential resection margins"
* obeys ch-crl-obs-1
* . ^short = "CH CRL Observation Circumferential Resection Margins"
* code 1..
* code = $loinc#81184-4 "Distance of tumor from circumferential resection margin [Length] by Microscopy"
* subject 1..
* subject only Reference(CHCRLPatient)
* subject ^short = "Patient"
* subject.reference 1..
* effectiveDateTime 1..
* performer only Reference(CHCRLPractitioner or CHCRLOrganizationDepartment)
* performer ^short = "Practitioner if resident physician or Organization Department if hospital"
* performer.reference 1..

* valueCodeableConcept from NkrsCircumferentialResectionMargins (preferred)
* valueCodeableConcept ^short = "The circumferential resection margin (CRM)"
* valueCodeableConcept.coding 1..*
* valueCodeableConcept.coding.system 1..
* valueCodeableConcept.coding.code 1..
* valueCodeableConcept.coding.display 1..

* dataAbsentReason ^short = "The circumferential resection margin (CRM) is not stated / not assessed"
* dataAbsentReason.coding 1..*
* dataAbsentReason.coding.system 1..
* dataAbsentReason.coding.system = "http://terminology.hl7.org/CodeSystem/data-absent-reason" (exactly)
* dataAbsentReason.coding.code 1..
* dataAbsentReason.coding.code = #unknown (exactly)
* dataAbsentReason.coding.display 1..
* dataAbsentReason.coding.display = "Unknown" (exactly)


Mapping: NICER-A-for-CHCRLObservationCircumferentialResectionMargins
Id: NICER-A
Title: "NATIONAL CANCER DATA DICTIONARY, V 1.1, Part A: BASIC VARIABLES for Adults, Adolescents, and Children"
Source: CHCRLObservationCircumferentialResectionMargins
Target: "https://www.nacr.ch/assets/files/uploads/a-datadictionary-basicvariables-v1.1.pdf"
* -> "Circumferential resection margins (Variable number: 5.4.1)"


Instance: CircumferentialResectionMargins-0mm
InstanceOf: CHCRLObservationCircumferentialResectionMargins
Title: "Circumferential Resection Margins - 0mm"
Description: "Example for Observation for the circumferential resection margins"
Usage: #example
* status = #final
* code = $loinc#81184-4 "Distance of tumor from circumferential resection margin [Length] by Microscopy"
* subject = Reference(FranzMinimum)
* effectiveDateTime = "2018-12-15"
* valueCodeableConcept = $nkrs-circumferentialresectionmargins#1 "0 mm"

Instance: CircumferentialResectionMargins-Unknown
InstanceOf: CHCRLObservationCircumferentialResectionMargins
Title: "Circumferential Resection Margins - Unknown"
Description: "Example for Observation for the circumferential resection margins"
Usage: #example
* status = #final
* code = $loinc#81184-4 "Distance of tumor from circumferential resection margin [Length] by Microscopy"
* subject = Reference(FranzMinimum)
* effectiveDateTime = "2018-12-15"
* dataAbsentReason = $data-absent-reason#unknown "Unknown"
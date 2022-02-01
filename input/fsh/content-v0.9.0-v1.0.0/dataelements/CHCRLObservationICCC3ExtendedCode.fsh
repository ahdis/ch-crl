Profile: CHCRLObservationICCC3ExtendedCode
Parent: Observation
Id: ch-crl-observation-iccc3extendedcode
Title: "CH CRL Observation ICCC-3 Extended Code"
Description: "Definition of the Observation for the ICCC-3 extended code"
* obeys ch-crl-obs-1
* . ^short = "CH CRL Observation ICCC-3 Extended Code"
* code 1..
* code = $nkrs-variables#3.9.3 "ICCC-3 extended code"
* subject 1..
* subject only Reference(CHCRLPatient)
* subject ^short = "Patient"
* subject.reference 1..
* effectiveDateTime 1..
* performer only Reference(CHCRLPractitioner or CHCRLOrganizationDepartment)
* performer ^short = "Practitioner if resident physician or Organization Department if hospital"
* performer.reference 1..

* valueCodeableConcept from NkrsICCC3ExtendedCode (preferred)
* valueCodeableConcept ^short = "The detailed division of the diagnostic group according to the third revision of the 1996 International Classification of Childhood Cancer (ICCC-3)."
* valueCodeableConcept.coding 1..*
* valueCodeableConcept.coding.system 1..
* valueCodeableConcept.coding.code 1..
* valueCodeableConcept.coding.display 1..

* dataAbsentReason ^short = "The ICCC-3 extended code is not applicable"
* dataAbsentReason.coding 1..*
* dataAbsentReason.coding.system 1..
* dataAbsentReason.coding.system = "http://terminology.hl7.org/CodeSystem/data-absent-reason" (exactly)
* dataAbsentReason.coding.code 1..
* dataAbsentReason.coding.code = #not-applicable (exactly)
* dataAbsentReason.coding.display 1..
* dataAbsentReason.coding.display = "Not Applicable" (exactly)


Mapping: NICER-A-for-CHCRLObservationICCC3ExtendedCode
Id: NICER-A
Title: "NATIONAL CANCER DATA DICTIONARY, V 1.1, Part A: BASIC VARIABLES for Adults, Adolescents, and Children"
Source: CHCRLObservationICCC3ExtendedCode
Target: "https://www.nacr.ch/assets/files/uploads/a-datadictionary-basicvariables-v1.1.pdf"
* -> "ICCC-3 extended code (Variable number: 3.9.3)"


Instance: ICCC3ExtendedCode-Ia-4
InstanceOf: CHCRLObservationICCC3ExtendedCode
Title: "ICCC-3 Extended Code - Ia.4"
Description: "Example for Observation for the ICCC-3 extended code"
Usage: #example
* status = #final
* code = $nkrs-variables#3.9.3 "ICCC-3 extended code"
* subject = Reference(FranzMinimum)
* effectiveDateTime = "2018-12-15"
* valueCodeableConcept = $nkrs-iccc3extendedcode#Ia.4 "Lymphoid leukaemia, NOS"

Instance: ICCC3ExtendedCode-NotApplicable
InstanceOf: CHCRLObservationICCC3ExtendedCode
Title: "ICCC-3 Extended Code - Not Applicable"
Description: "Example for Observation for the ICCC-3 extended code"
Usage: #example
* status = #final
* code = $nkrs-variables#3.9.3 "ICCC-3 extended code"
* subject = Reference(FranzMinimum)
* effectiveDateTime = "2018-12-15"
* dataAbsentReason = $data-absent-reason#not-applicable "Not Applicable"
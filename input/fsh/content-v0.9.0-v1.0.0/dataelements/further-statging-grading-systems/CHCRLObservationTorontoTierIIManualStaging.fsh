Profile: CHCRLObservationTorontoTierIIManualStaging
Parent: Observation
Id: ch-crl-observation-torontotierIImanualstaging
Title: "CH CRL Observation Toronto Tier II (Manual) Staging"
Description: "Definition of the Observation for the Toronto Tier II (manual) staging"
* obeys ch-crl-obs-1
* . ^short = "CH CRL Observation Toronto Tier II (Manual) Staging"
* code 1..
* code = $nkrs-variables#4.33.2 "Toronto Tier II (manual) staging"

* subject 1..
* subject only Reference(CHCRLPatient)
* subject ^short = "Patient"
* subject.reference 1..
* effectiveDateTime 1..
* performer only Reference(CHCRLPractitioner or CHCRLOrganizationDepartment)
* performer ^short = "Practitioner if resident physician or Organization Department if hospital"
* performer.reference 1..

* valueCodeableConcept from NkrsTorontoTierIIManualStaging (preferred)
* valueCodeableConcept ^short = "The Toronto Paediatric Cancer Stage Guidelines recommend the malignancy-specific staging system 
most suitable for use by population registries for 16 of the most common childhood malignancies."
* valueCodeableConcept.coding 1..*
* valueCodeableConcept.coding.system 1..
* valueCodeableConcept.coding.code 1..
* valueCodeableConcept.coding.display 1..

* dataAbsentReason ^short = "Toronto Tier II (manual) staging is not stated / not assessed"
* dataAbsentReason.coding 1..*
* dataAbsentReason.coding.system 1..
* dataAbsentReason.coding.system = "http://terminology.hl7.org/CodeSystem/data-absent-reason" (exactly)
* dataAbsentReason.coding.code 1..
* dataAbsentReason.coding.code = #unknown (exactly)
* dataAbsentReason.coding.display 1..
* dataAbsentReason.coding.display = "Unknown" (exactly)


Mapping: NICER-A-for-CHCRLObservationTorontoTierIIManualStaging
Id: NICER-A
Title: "NATIONAL CANCER DATA DICTIONARY, V 1.1, Part A: BASIC VARIABLES for Adults, Adolescents, and Children"
Source: CHCRLObservationTorontoTierIIManualStaging
Target: "https://www.nacr.ch/assets/files/uploads/a-datadictionary-basicvariables-v1.1.pdf"
* -> "Toronto Tier II (manual) staging (Variable number: 4.33.2)"


Instance: TorontoTierIIManualStaging-M3
InstanceOf: CHCRLObservationTorontoTierIIManualStaging
Title: "Toronto Tier II (Manual) Staging - II"
Description: "Example for Observation for the Toronto Tier II (manual) staging"
Usage: #example
* status = #final
* code = $nkrs-variables#4.33.2 "Toronto Tier II (manual) staging"
* subject = Reference(FranzMinimum)
* effectiveDateTime = "2018-12-15"
* valueCodeableConcept = $nkrs-torontotierIImanualstaging#M3 "M3"


Instance: TorontoTierIIManualStaging-Unknown
InstanceOf: CHCRLObservationTorontoTierIIManualStaging
Title: "Toronto Tier II (Manual) Staging - Unknown"
Description: "Example for Observation for the Toronto Tier II (manual) staging"
Usage: #example
* status = #final
* code = $nkrs-variables#4.33.2 "Toronto Tier II (manual) staging"
* subject = Reference(FranzMinimum)
* effectiveDateTime = "2018-12-15"
* dataAbsentReason = $data-absent-reason#unknown "Unknown"



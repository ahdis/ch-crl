Profile: CHCRLObservationmSuffixOfpT
Parent: Observation
Id: ch-crl-observation-msuffixofpt
Title: "CH CRL Observation m-Suffix of pT Profile"
Description: "Observation for the m-Suffix of pT"
* . ^short = "CH CRL Observation m-Suffix of pT"
* code 1..
* code = $loinc#42030-7 "Multiple tumors reported as single primary Cancer"
* subject 1..
* subject only Reference(CHCRLPatient)
* subject ^short = "Patient"
* subject.reference 1..
* effectiveDateTime 1..
* effectiveDateTime only dateTime
* performer only Reference(CHCRLPractitioner or CHCRLOrganizationDepartment)
* performer ^short = "Practitioner if resident physician or Organization Department if hospital"
* performer.reference 1..

// Slices for value[x]
* value[x] ^slicing.discriminator.type = #type
* value[x] ^slicing.discriminator.path = "$this"
* value[x] ^slicing.rules = #closed

// Slice valueQuantity
* valueQuantity 0..1
* valueQuantity only Quantity
* valueQuantity ^short = "The presence of multiple primary tumours at a single site as number (min = 2)"
// TBD Workaround: Minimumkardinalität weggelassen
// * valueQuantity.value 1..

// Slice valueCodeableConcept
* valueCodeableConcept 0..1
* valueCodeableConcept only CodeableConcept
* valueCodeableConcept ^short = "Unspecified multiplicity"
// TBD Workaround: Minimumkardinalität weggelassen
// * valueCodeableConcept.coding 1.. 
* valueCodeableConcept.coding.system 1..
* valueCodeableConcept.coding.system = "http://fhir.ch/ig/ch-crl/CodeSystem/nkrs-msuffixofpt" (exactly)
* valueCodeableConcept.coding.code 1..
* valueCodeableConcept.coding.code = #m (exactly)
* valueCodeableConcept.coding.display 1..
* valueCodeableConcept.coding.display = "Unspecified multiplicity" (exactly)

* dataAbsentReason ^short = "The presence of multiple primary tumours at a single site is not stated / not assessed"
* dataAbsentReason.coding 1..
* dataAbsentReason.coding.system 1..
* dataAbsentReason.coding.system = "http://terminology.hl7.org/CodeSystem/data-absent-reason" (exactly)
* dataAbsentReason.coding.code 1..
* dataAbsentReason.coding.code = #unknown (exactly)
* dataAbsentReason.coding.display 1..
* dataAbsentReason.coding.display = "Unknown" (exactly)
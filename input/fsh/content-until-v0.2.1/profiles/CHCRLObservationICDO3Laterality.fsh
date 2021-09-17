Profile: CHCRLObservationICDO3Laterality
Parent: Observation
Id: ch-crl-observation-icdo3laterality
Title: "CH CRL Observation ICD-O-3 Laterality Profile"
Description: "Observation for the ICD-O-3 laterality code"
* ^version = "0.3.0"
* ^status = #draft
* ^date = "2019-11-08"
* ^publisher = "Bundesamt für Gesundheit BAG"
* ^contact.name = "Bundesamt für Gesundheit BAG"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.bag.admin.ch/"
* ^jurisdiction = urn:iso:std:iso:3166#CH
* ^copyright = "CC-BY-SA-4.0"
* . ^short = "CH CRL Observation ICD-O-3 Laterality"
* code 1..
* code = $loinc#63930-2 "Laterality [PhenX]"
* subject 1..
* subject only Reference(CHCRLPatient)
* subject ^short = "Patient"
* subject.reference 1..
* effectiveDateTime 1..
* effectiveDateTime only dateTime
* performer only Reference(CHCRLPractitioner or CHCRLOrganizationDepartment)
* performer ^short = "Practitioner if resident physician or Organization Department if hospital"
* performer.reference 1..
* valueCodeableConcept only CodeableConcept
* valueCodeableConcept from NkrsIcdO3Laterality (required)
* valueCodeableConcept ^short = "ICD-O-3 code of the side of a paired organ or side of the body on which the reportable cancer originated"
* valueCodeableConcept.coding 1..*
* valueCodeableConcept.coding.system 1..
* valueCodeableConcept.coding.code 1..
* valueCodeableConcept.coding.display 1..
* dataAbsentReason ^short = "The laterality of the reportable cancer is not applicable or unknown"
* dataAbsentReason.coding 1..*
* dataAbsentReason.coding.system 1..
* dataAbsentReason.coding.system = "http://terminology.hl7.org/CodeSystem/data-absent-reason" (exactly)
* dataAbsentReason.coding.code 1..
* dataAbsentReason.coding.code ^short = "If it is a midline tumor or an unpaired organ than 'value=not-applicable'.                          If it is unknown wheter, for a paired organ, the reportable cancer was unilateral or bilateral than 'value=unknown'."
* dataAbsentReason.coding.display 1..
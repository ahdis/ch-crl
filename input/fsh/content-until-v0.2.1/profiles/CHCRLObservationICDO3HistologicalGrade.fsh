Profile: CHCRLObservationICDO3HistologicalGrade
Parent: Observation
Id: ch-crl-observation-icdo3histologicalgrade
Title: "CH CRL Observation ICD-O-3 Histological Grade Profile"
Description: "Observation for the ICD-O-3 histological grade code"
* ^version = "0.3.0"
* ^status = #draft
* ^date = "2019-11-08"
* ^publisher = "Bundesamt für Gesundheit BAG"
* ^contact.name = "Bundesamt für Gesundheit BAG"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.bag.admin.ch/"
* ^jurisdiction = urn:iso:std:iso:3166#CH
* ^copyright = "CC-BY-SA-4.0"
* . ^short = "CH CRL Observation ICD-O-3 Histological Grade"
* code 1..
* code = $loinc#33732-9 "Histology grade [Identifier] in Cancer specimen"
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
* valueCodeableConcept from NkrsIcdO3HistologicalGrade (required)
* valueCodeableConcept ^short = "ICD-O-3 code of the neoplasm’s resemblance to normal (parent) tissue"
* valueCodeableConcept.coding 1..*
* valueCodeableConcept.coding.system 1..
* valueCodeableConcept.coding.code 1..
* valueCodeableConcept.coding.display 1..
* dataAbsentReason ^short = "Grade or differentiation not determined, not stated, or not applicable. Unknown primary."
* dataAbsentReason.coding 1..*
* dataAbsentReason.coding.system 1..
* dataAbsentReason.coding.system = "http://terminology.hl7.org/CodeSystem/data-absent-reason" (exactly)
* dataAbsentReason.coding.code 1..
* dataAbsentReason.coding.code = #unknown (exactly)
* dataAbsentReason.coding.display 1..
* dataAbsentReason.coding.display = "Unknown" (exactly)
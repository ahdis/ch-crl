Profile: CHCRLObservationNumberExaminedRegionalLymphNodes
Parent: Observation
Id: ch-crl-observation-numberexaminedregionallymphnodes
Title: "CH CRL Observation Number of Examined Regional Lymph Nodes Profile"
Description: "Observation for the number of examined regional lymph nodes"
* ^version = "0.3.0"
* ^status = #draft
* ^date = "2019-11-08"
* ^publisher = "Bundesamt für Gesundheit BAG"
* ^contact.name = "Bundesamt für Gesundheit BAG"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.bag.admin.ch/"
* ^jurisdiction = urn:iso:std:iso:3166#CH
* ^copyright = "CC-BY-SA-4.0"
* . ^short = "CH CRL Observation Number of Examined Regional Lymph Nodes"
* code 1..
* code = $loinc#21894-1 "Regional lymph nodes examined [#] Specimen"
* subject 1..
* subject only Reference(CHCRLPatient)
* subject ^short = "Patient"
* subject.reference 1..
* effectiveDateTime 1..
* effectiveDateTime only dateTime
* performer only Reference(CHCRLPractitioner or CHCRLOrganizationDepartment)
* performer ^short = "Practitioner if resident physician or Organization Department if hospital"
* performer.reference 1..
* valueQuantity only Quantity
* valueQuantity ^short = "The total number of regional lymph nodes that were excised and examined by the pathologist"
* valueQuantity.value 1..
* dataAbsentReason ^short = "No information whether regional lymph nodes were examined or not. OR Regional lymph nodes were examined, but no information on the number."
* dataAbsentReason.coding 1..*
* dataAbsentReason.coding.system 1..
* dataAbsentReason.coding.system = "http://terminology.hl7.org/CodeSystem/data-absent-reason" (exactly)
* dataAbsentReason.coding.code 1..
* dataAbsentReason.coding.code = #unknown (exactly)
* dataAbsentReason.coding.display 1..
* dataAbsentReason.coding.display = "Unknown" (exactly)
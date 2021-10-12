Profile: CHCRLObservationaPrefixOfpTNM
Parent: Observation
Id: ch-crl-observation-aprefixofptnm
Title: "CH CRL Observation a-Prefix of pTNM Profile"
Description: "Observation for the a-Prefix of pTNM"
* ^version = "0.3.0"
* ^status = #draft
* ^date = "2019-11-08"
* ^publisher = "Bundesamt für Gesundheit BAG"
* ^contact.name = "Bundesamt für Gesundheit BAG"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.bag.admin.ch/"
* ^jurisdiction = urn:iso:std:iso:3166#CH
* ^copyright = "CC-BY-SA-4.0"
* . ^short = "CH CRL Observation a-Prefix of pTNM"
* code 1..
* code = $loinc#85699-7 "Autopsy was performed"
* subject 1..
* subject only Reference(CHCRLPatient)
* subject ^short = "Patient"
* subject.reference 1..
* effectiveDateTime 1..
* effectiveDateTime only dateTime
* performer only Reference(CHCRLPractitioner or CHCRLOrganizationDepartment)
* performer ^short = "Practitioner if resident physician or Organization Department if hospital"
* performer.reference 1..
* valueBoolean only boolean
* valueBoolean ^short = "If pTNM classification is not determined at autopsy then 'value=false'. If pTNM classification is first determined at autopsy then 'value=true'."
* dataAbsentReason ^short = "No information whether pTNM is determined at autopsy or not."
* dataAbsentReason.coding 1..*
* dataAbsentReason.coding.system 1..
* dataAbsentReason.coding.system = "http://terminology.hl7.org/CodeSystem/data-absent-reason" (exactly)
* dataAbsentReason.coding.code 1..
* dataAbsentReason.coding.code = #unknown (exactly)
* dataAbsentReason.coding.display 1..
* dataAbsentReason.coding.display = "Unknown" (exactly)
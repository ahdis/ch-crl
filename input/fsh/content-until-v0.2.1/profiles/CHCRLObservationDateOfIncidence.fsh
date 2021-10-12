Profile: CHCRLObservationDateOfIncidence
Parent: Observation
Id: ch-crl-observation-dateofincidence
Title: "CH CRL Observation Date of Incidence Profile"
Description: "Observation for the date of incidence"
* ^version = "0.3.0"
* ^status = #draft
* ^date = "2019-11-08"
* ^publisher = "Bundesamt für Gesundheit BAG"
* ^contact.name = "Bundesamt für Gesundheit BAG"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.bag.admin.ch/"
* ^jurisdiction = urn:iso:std:iso:3166#CH
* ^copyright = "CC-BY-SA-4.0"
* . ^short = "CH CRL Observation Date of Incidence"
* code 1..
* code = $loinc#63931-0 "Date of diagnosis"
* subject 1..
* subject only Reference(CHCRLPatient)
* subject ^short = "Patient"
* subject.reference 1..
* effectiveDateTime 1..
* effectiveDateTime only dateTime
* effectiveDateTime ^short = "Clinically relevant time/time-period for observation"
* performer only Reference(CHCRLPractitioner or CHCRLOrganizationDepartment)
* performer ^short = "Practitioner if resident physician or Organization Department if hospital"
* performer.reference 1..
* valueDateTime 1..
* valueDateTime only dateTime
* valueDateTime ^short = "The definite date of diagnosis"
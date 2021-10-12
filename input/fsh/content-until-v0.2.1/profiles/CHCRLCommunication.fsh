Profile: CHCRLCommunication
Parent: Communication
Id: ch-crl-communication
Title: "CH CRL Communication Profile"
Description: "Communication for the date of informing the patient about the cancer registration"
* ^version = "0.3.0"
* ^status = #draft
* ^date = "2019-11-08"
* ^publisher = "Bundesamt für Gesundheit BAG"
* ^contact.name = "Bundesamt für Gesundheit BAG"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.bag.admin.ch/"
* ^jurisdiction = urn:iso:std:iso:3166#CH
* ^copyright = "CC-BY-SA-4.0"
* . ^short = "CH CRL Communication"
* subject 1..
* subject only Reference(CHCRLPatient)
* subject ^short = "Patient"
* subject.reference 1..
* topic 1..
* topic ^short = "Date of informing the patient about the cancer registration"
* topic.coding 1..1
* topic.coding.display 1..
* topic.coding.display ^short = "Date (format: YYYY-MM-DD)"
* sent 1..
* sent ^short = "When sent to the cancer registry"
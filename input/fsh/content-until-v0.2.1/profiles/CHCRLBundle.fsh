Profile: CHCRLBundle
Parent: CHCoreDocument
Id: ch-crl-bundle
Title: "CH CRL Bundle Profile"
Description: "Definition of the bundle for reporting to the cancer registry"
* ^version = "0.3.0"
* ^status = #draft
* ^date = "2019-11-08"
* ^publisher = "Bundesamt für Gesundheit BAG"
* ^contact.name = "Bundesamt für Gesundheit BAG"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.bag.admin.ch/"
* ^jurisdiction = urn:iso:std:iso:3166#CH
* ^copyright = "CC-BY-SA-4.0"
* . ^short = "CH CRL Bundle"
* identifier 1..
* identifier.system 1..
* identifier.value 1..
* type = #document (exactly)
* entry ^slicing.discriminator.type = #profile
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #open
* entry[Composition] 1..1
* entry[Composition] ^short = "Composition for reporting to the cancer registry"
* entry[Composition].resource 1..
* entry[Composition].resource only CHCRLComposition
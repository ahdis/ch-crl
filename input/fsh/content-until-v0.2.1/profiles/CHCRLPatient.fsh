Profile: CHCRLPatient
Parent: CHCorePatient
Id: ch-crl-patient
Title: "CH CRL Patient Profile"
Description: "Definition of the patient for reporting to the cancer registry"
* ^version = "0.3.0"
* ^status = #draft
* ^date = "2019-11-08"
* ^publisher = "Bundesamt für Gesundheit BAG"
* ^contact.name = "Bundesamt für Gesundheit BAG"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.bag.admin.ch/"
* ^jurisdiction = urn:iso:std:iso:3166#CH
* ^copyright = "CC-BY-SA-4.0"
* . ^short = "CH CRL Patient"
* identifier ^slicing.discriminator.type = #pattern
* identifier ^slicing.discriminator.path = "$this"
* identifier ^slicing.rules = #open
* identifier[EPR-SPID] ..0
* identifier[AHVN13] 1..
* identifier[AHVN13] ^short = "AHVN13 / NAVS13"
* name.family 1..
* name.given 1..
* gender 1..1
* gender ^short = "male | female"
* birthDate 1..1
* birthDate ^short = "Format: YYYY-MM-DD"
* deceased[x] 1..
* address 1..1
* address ^short = "Residential address ('Wohnsitz')"
* address.postalCode 1..
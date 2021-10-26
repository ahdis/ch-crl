Profile: CHCRLPatient
Parent: CHCorePatient
Id: ch-crl-patient
Title: "CH CRL Patient Profile"
Description: "Definition of the patient for reporting to the cancer registry"
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
* deceased[x] 1.. MS
* address 1..1
* address ^short = "Residential address ('Wohnsitz')"
* address.postalCode 1..
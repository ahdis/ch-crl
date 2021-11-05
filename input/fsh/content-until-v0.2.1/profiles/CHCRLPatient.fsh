Profile: CHCRLPatient
Parent: CHCorePatient
Id: ch-crl-patient
Title: "CH CRL Patient"
Description: "Definition of the Patient for reporting to the cancer registry"
* . ^short = "CH CRL Patient"
* identifier ^slicing.discriminator.type = #pattern
* identifier ^slicing.discriminator.path = "$this"
* identifier ^slicing.rules = #open
* identifier[EPR-SPID] ..0
* identifier[AHVN13] 1.. MS
* identifier[AHVN13] ^short = "AHVN13 / NAVS13"
* name 1..
* name.family 1.. MS
* name.given 1.. MS
* gender 1..1 MS
* gender ^short = "male | female"
* birthDate 1..1 MS
* birthDate ^short = "Format: YYYY-MM-DD"
* deceased[x] 1.. MS
* address 1..1
* address ^short = "Residential address ('Wohnsitz')"
* address.postalCode 1..
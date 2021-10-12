Profile: CHCRLPractitioner
Parent: CHCorePractitioner
Id: ch-crl-practitioner
Title: "CH CRL Practitioner Profile"
Description: "Definition of the practitioner (resident physician) for reporting to the cancer registry"
* . ^short = "CH CRL Practitioner"
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier[GLN] ^short = "GLN (Global Location Number)"
* identifier[GLN].system = "urn:oid:2.51.1.3" (exactly)
* identifier[GLN].system ^short = "OID of the GLN"
* identifier[GLN].value ^short = "GLN of the practitioner (13 digits starting with 7601 for Swiss accredited practitioners)"
* name 1..
* name.family 1..
* name.given 1..
* telecom ^slicing.discriminator.type = #value
* telecom ^slicing.discriminator.path = "system"
* telecom ^slicing.rules = #open
* telecom contains
    phone 1..* and
    email 1..*
* telecom[phone] ^short = "Phone number"
* telecom[phone].system 1..
* telecom[phone].system = #phone (exactly)
* telecom[phone].value 1..
* telecom[email] ^short = "Email address"
* telecom[email].system 1..
* telecom[email].system = #email (exactly)
* telecom[email].value 1..
* address 1..
* address.line 1..
* address.city 1..
* address.postalCode 1..
* gender 1..1
* gender ^short = "male | female"
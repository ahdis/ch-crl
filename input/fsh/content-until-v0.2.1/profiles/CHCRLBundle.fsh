Profile: CHCRLBundle
Parent: CHCoreDocument
Id: ch-crl-bundle
Title: "CH CRL Bundle Profile"
Description: "Definition of the bundle for reporting to the cancer registry"
* . ^short = "CH CRL Bundle"
* identifier 1..
* identifier.system 1..
* identifier.value 1..
* type = #document (exactly)
* timestamp MS
* entry ^slicing.discriminator.type = #profile
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #open
* entry[Composition] 1..1
* entry[Composition] ^short = "Composition for reporting to the cancer registry"
* entry[Composition].resource 1..
* entry[Composition].resource only CHCRLComposition
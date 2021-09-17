Instance: SpitalMinimum
InstanceOf: CHCRLOrganization
Title: "SpitalMinimum"
Description: "Example for Organization"
Usage: #example
* identifier.system = "urn:oid:2.16.756.5.45"
* identifier.value = "76010130"
* active = true
* type = $organization-type#prov "Healthcare Provider"
* name = "Spital Minium"
* telecom[0].system = #phone
* telecom[=].value = "031 512 75 98"
* telecom[+].system = #email
* telecom[=].value = "spital@minimum.ch"
* address.line = "Bergstrasse 10"
* address.city = "Zürich"
* address.postalCode = "8001"
* contact.extension.url = "http://fhir.ch/ig/ch-crl/StructureDefinition/ch-crl-organization-contact-functionofcontactperson"
* contact.extension.valueString = "Doctor"
* contact.name.family = "Muster"
* contact.name.given = "Hans"
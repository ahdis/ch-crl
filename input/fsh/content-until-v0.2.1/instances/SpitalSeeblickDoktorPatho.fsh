Instance: SpitalSeeblickDoktorPatho
InstanceOf: CHCRLOrganization
Title: "Spital Seeblick Doktor Patho"
Description: "Example for Organization"
Usage: #example
* identifier.system = "urn:oid:2.16.756.5.45"
* identifier.value = "76010088"
* active = true
* type = $organization-type#prov "Healthcare Provider"
* name = "Spital Seeblick"
* telecom[0].system = #phone
* telecom[=].value = "031 409 88 60"
* telecom[+].system = #email
* telecom[=].value = "spital@spital.ch"
* address.line = "Seeblick 14"
* address.city = "Zürich"
* address.state = "ZH"
* address.postalCode = "8005"
* contact.extension.url = "http://fhir.ch/ig/ch-crl/StructureDefinition/ch-crl-organization-contact-functionofcontactperson"
* contact.extension.valueString = "Pathologe"
* contact.name.family = "Patho"
* contact.name.given = "Doktor"
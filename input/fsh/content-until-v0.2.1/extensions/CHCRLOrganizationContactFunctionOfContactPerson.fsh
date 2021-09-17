Extension: CHCRLOrganizationContactFunctionOfContactPerson
Id: ch-crl-organization-contact-functionofcontactperson
Title: "CH CRL Function of Contact Person Extension"
Description: "Extension to define the function of contact person of an organization"
* ^version = "0.3.0"
* ^status = #draft
* ^date = "2019-11-08"
* ^publisher = "Bundesamt für Gesundheit BAG"
* ^contact.name = "Bundesamt für Gesundheit BAG"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.bag.admin.ch/"
* ^jurisdiction = urn:iso:std:iso:3166#CH
* ^copyright = "CC-BY-SA-4.0"
* ^context.type = #element
* ^context.expression = "Organization.contact"
* . ^short = "CH CRL Function of Contact Person"
* url only uri
* valueString 1..1
* valueString only string
* valueString ^short = "Function of contact person, e.g. assistant physician, medical assistant"
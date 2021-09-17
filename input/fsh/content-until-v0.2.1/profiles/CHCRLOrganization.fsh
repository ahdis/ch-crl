Profile: CHCRLOrganization
Parent: CHCoreOrganization
Id: ch-crl-organization
Title: "CH CRL Organization Profile"
Description: "Organization of which the organization department forms a part"
* ^version = "0.3.0"
* ^status = #draft
* ^date = "2019-11-08"
* ^publisher = "Bundesamt für Gesundheit BAG"
* ^contact.name = "Bundesamt für Gesundheit BAG"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.bag.admin.ch/"
* ^jurisdiction = urn:iso:std:iso:3166#CH
* ^copyright = "CC-BY-SA-4.0"
* . ^short = "CH CRL Organization"
* identifier ^slicing.discriminator.type = #pattern
* identifier ^slicing.discriminator.path = "$this"
* identifier ^slicing.rules = #open
* identifier[BER] ^short = "BER (Business and Enterprise Register)"
* identifier[BER] ^patternIdentifier.system = "urn:oid:2.16.756.5.45"
* identifier[BER].value 1..
* identifier[BER].value ^short = "BER of the organization"
* type 1..*
* type from OrganizationType (extensible)
* type ^short = "Kind of organization"
* type ^binding.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* type ^binding.extension.valueString = "OrganizationType"
* type.coding 1..
* type.coding.system 1..
* type.coding.code 1..
* type.coding.display 1..
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
* contact 1..*
* contact.extension ^slicing.discriminator.type = #value
* contact.extension ^slicing.discriminator.path = "url"
* contact.extension ^slicing.rules = #open
* contact.extension contains CHCRLOrganizationContactFunctionOfContactPerson named functionOfContactPerson 1..1
* contact.name 1..
* contact.name only CHCoreHumanName
* contact.name.family 1..
* contact.name.given 1..
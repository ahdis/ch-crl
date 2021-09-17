Profile: CHCRLOrganizationDepartment
Parent: CHCoreOrganization
Id: ch-crl-organization-department
Title: "CH CRL Organization Department Profile"
Description: "Definition of the organization department (hospital) for reporting to the cancer registry"
* ^version = "0.3.0"
* ^status = #draft
* ^date = "2019-11-08"
* ^publisher = "Bundesamt für Gesundheit BAG"
* ^contact.name = "Bundesamt für Gesundheit BAG"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.bag.admin.ch/"
* ^jurisdiction = urn:iso:std:iso:3166#CH
* ^copyright = "CC-BY-SA-4.0"
* . ^short = "CH CRL Organization Department"
* type 1..*
* type from $DocumentEntry.practiceSettingCode (preferred)
* type ^short = "Kind of department"
* type ^binding.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* type ^binding.extension.valueString = "OrganizationType"
* type.coding 1..
* type.coding.system 1..
* type.coding.code 1..
* type.coding.display 1..
* partOf 1..1
* partOf only Reference(CHCRLOrganization)
* partOf ^short = "The organization of which this department forms a part"
* partOf.reference 1..
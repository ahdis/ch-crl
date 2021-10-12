Extension: CHCRLOrganizationContactFunctionOfContactPerson
Id: ch-crl-organization-contact-functionofcontactperson
Title: "CH CRL Function of Contact Person Extension"
Description: "Extension to define the function of contact person of an organization"
* ^context.type = #element
* ^context.expression = "Organization.contact"
* . ^short = "CH CRL Function of Contact Person"
* url only uri
* valueString 1..1
* valueString only string
* valueString ^short = "Function of contact person, e.g. assistant physician, medical assistant"
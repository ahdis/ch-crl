Profile: CHCRLOrganizationDepartment
Parent: CHCoreOrganization
Id: ch-crl-organization-department
Title: "CH CRL Organization Department Profile"
Description: "Definition of the organization department (hospital) for reporting to the cancer registry"
* . ^short = "CH CRL Organization Department"
* type 1..*
* type from $DocumentEntry.practiceSettingCode (preferred)
* type.coding 1..
* type.coding.system 1..
* type.coding.code 1..
* type.coding.display 1..
* partOf 1..1
* partOf only Reference(CHCRLOrganization)
* partOf ^short = "The organization of which this department forms a part"
* partOf.reference 1..
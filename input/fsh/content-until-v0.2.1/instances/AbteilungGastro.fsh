Instance: AbteilungGastro
InstanceOf: CHCRLOrganizationDepartment
Title: "AbteilungGastro"
Description: "Example for Organization"
Usage: #example
* identifier.system = "urn:oid:2.16.756.5.45"
* identifier.value = "76010088"
* active = true
* type = $sct#394584008 "Gastroenterology"
* name = "Abteilung Gastroenterologie"
* telecom.system = #email
* telecom.value = "gastro@spital.ch"
* address.line = "Bergstrasse 11"
* address.city = "Zürich"
* address.postalCode = "8002"
* partOf = Reference(SpitalSeeblickDoktorGastro)
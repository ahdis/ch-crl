Instance: AbteilungPatho
InstanceOf: CHCRLOrganizationDepartment
Title: "AbteilungPatho"
Description: "Example for Organization"
Usage: #example
* identifier.system = "urn:oid:2.16.756.5.45"
* identifier.value = "76010088"
* active = true
* type = $sct#394595002 "Pathology"
* name = "Pathologisches Institut"
* telecom.system = #email
* telecom.value = "patho@spital.ch"
* address.line = "Bergstrasse 11"
* address.city = "Zürich"
* address.postalCode = "8002"
* partOf = Reference(SpitalSeeblickDoktorPatho)
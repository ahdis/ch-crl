Instance: AbteilungMinimum
InstanceOf: CHCRLOrganizationDepartment
Title: "Abteilung Minimum"
Description: "Example for Organization"
Usage: #example
* identifier.system = "urn:oid:2.16.756.5.45"
* identifier.value = "76010130"
* active = true
* type = $sct#394592004 "Clinical oncology"
* name = "Abteilung Minium"
* telecom.system = #email
* telecom.value = "abteilung@minimum.ch"
* address.line = "Bergstrasse 10"
* address.city = "Zürich"
* address.postalCode = "8001"
* partOf = Reference(SpitalMinimum)
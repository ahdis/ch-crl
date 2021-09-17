Instance: AbteilungOnko
InstanceOf: CHCRLOrganizationDepartment
Title: "AbteilungOnko"
Description: "Example for Organization"
Usage: #example
* identifier.system = "urn:oid:2.16.756.5.45"
* identifier.value = "76010088"
* active = true
* type = $sct#394592004 "Clinical oncology"
* name = "Abteilung Onkologie"
* telecom.system = #email
* telecom.value = "onko@spital.ch"
* address.line = "Bergstrasse 11"
* address.city = "Zürich"
* address.postalCode = "8002"
* partOf = Reference(SpitalSeeblickHansEgli)
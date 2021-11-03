Mapping: KRV-for-CHCRLOrganization
Id: KRV
Title: "Krebsregistrierungsverordnung"
Source: CHCRLOrganization
Target: "https://www.fedlex.admin.ch/eli/cc/2018/290/de"
* name -> "Name der Institution (Art. 7 Abs. 2 Bst. a)"
* telecom[phone] -> "Telefonnummer (Art. 7 Abs. 2 Bst. c)"
* telecom[email] -> "E-Mail-Adresse (Art. 7 Abs. 2 Bst. d)"
* address -> "Adresse (Art. 7 Abs. 2 Bst. d)"
* contact.extension[functionOfContactPerson] -> "Funktion der zuständigen Ansprechperson (Art. 7 Abs. 2 Bst. b)"
* contact.name.family -> "Name der zuständigen Ansprechperson (Art. 7 Abs. 2 Bst. b)"
* contact.name.given -> "Vorname der zuständigen Ansprechperson (Art. 7 Abs. 2 Bst. b)"
CodeSystem: NkrsIcdO3Laterality
Id: nkrs-icdo3laterality
Title: "NKRS - ICD-O-3 Laterality"
Description: "Laterality describes the side of a paired organ or side of the body on which the reportable cancer originated.           **Laterality (Variable number: 3.8)** in          \\'NATIONAL CANCER DATA DICTIONARY, V 1.1, Part A, BASIC VARIABLES for Adults, Adolescents, and Children\\' see           [Nationale Krebsregistrierungsstelle](https://www.nkrs.ch) > Partner im Gesundheitswesen >         [Information, Grundlagen und Datenstruktur zum KRG](https://www.nicer.org/assets/files/krebsregistrierung/datadictionary_e-g-f-i.zip)."
* ^version = "0.3.0"
* ^status = #draft
* ^date = "2019-11-08"
* ^publisher = "Bundesamt für Gesundheit BAG"
* ^contact.name = "Bundesamt für Gesundheit BAG"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.bag.admin.ch/"
* ^jurisdiction = urn:iso:std:iso:3166#CH
* ^copyright = "CC-BY-SA-4.0"
* ^caseSensitive = true
* ^valueSet = "http://fhir.ch/ig/ch-crl/ValueSet/nkrs-icdo3laterality"
* ^content = #complete
* #1 "Right"
* #2 "Left"
* #3 "Unilateral, NOS" "Unilateral, but unknown whether right or left."
* #4 "Bilateral" "Origin of primary tumour is on both sides of a paired organ (when tumours of the same morphology are diagnosed simultaneously in both sides of a paired organ). Bilateral cancers are very rare, e.g. bilateral retinoblastoma, bilateral Wilms tumour of the kidney, or both ovaries involved simultaneously."
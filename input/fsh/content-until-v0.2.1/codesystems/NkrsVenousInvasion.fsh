CodeSystem: NkrsVenousInvasion
Id: nkrs-venousinvasion
Title: "NKRS - Venous Invasion"
Description: "The data item indicates the presence or absence of tumour cells in the walls of venous blood vessels, as noted microscopically by the pathologist.           **Venous invasion (Variable number: 4.15)** in          \\'NATIONAL CANCER DATA DICTIONARY, V 1.1, Part A, BASIC VARIABLES for Adults, Adolescents, and Children\\' see           [Nationale Krebsregistrierungsstelle](https://www.nkrs.ch) > Partner im Gesundheitswesen >         [Information, Grundlagen und Datenstruktur zum KRG](https://www.nicer.org/assets/files/krebsregistrierung/datadictionary_e-g-f-i.zip)."
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
* ^valueSet = "http://fhir.ch/ig/ch-crl/ValueSet/nkrs-venousinvasion"
* ^content = #complete
* #0 "V0" "No venous invasion."
* #1 "V1" "Microscopic venous invasion."
* #2 "V2" "Macroscopic venous invasion."
* #8 "VX" "Venous invasion cannot be assessed."
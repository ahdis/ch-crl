CodeSystem: NkrsCircumferentialResectionMargins
Id: nkrs-circumferentialresectionmargins
Title: "NKRS - Circumferential Resection Margins"
Description: "The circumferential resection margin (CRM) is a surgically created plane produced during the removal of the rectum from its surroundings. 

**Circumferential resection margins (Variable number: 5.4.1)** 
in \\'NATIONAL CANCER DATA DICTIONARY, V 1.1, Part A, BASIC VARIABLES for Adults, Adolescents, and Children (23.12.2019)\\'
([EN](https://www.nacr.ch/assets/files/uploads/a-datadictionary-basicvariables-v1.1.pdf), 
[DE](https://www.nkrs.ch/assets/files/uploads/a-datenstruktur-variablen-der-basisdaten-v1.1.pdf), 
[FR](https://www.onec.ch/assets/files/uploads/a-dict-des-donnees-variables-de-base-v1.1.pdf), 
[IT](https://www.snrt.ch/assets/files/uploads/a-dati-oncologici-variabili-di-base-v1.1.pdf))"
* ^caseSensitive = true
* ^valueSet = "http://fhir.ch/ig/ch-crl/ValueSet/nkrs-circumferentialresectionmargins"
* ^content = #complete

* #1 "0 mm" "Positive, R1"
* #2 "<1 mm" "Negative, R0 'close'"
* #3 "≥1 mm" "Negative, R0 'wide'"


ValueSet: NkrsCircumferentialResectionMargins
Id: nkrs-circumferentialresectionmargins
Title: "NKRS - Circumferential Resection Margins"
Description: "The circumferential resection margin (CRM) is a surgically created plane produced during the removal of the rectum from its surroundings."
* include codes from system NkrsCircumferentialResectionMargins
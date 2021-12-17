CodeSystem: NkrsFirstTreatmentComplexCode
Id: nkrs-firsttreatmentcomplexcode
Title: "NKRS - First treatment complex code"
Description: "The data item records the CHOP code, or NACR-assigned CHOP-like code for treatments where no CHOP code exists, 
for each treatment as part of the first treatment complex. CHOP is Swiss classification of surgical operations and other 
diagnostic and treatment procedures and interventions. 
**First treatment complex code (Variable number: 7.4)** 
in \\'NATIONAL CANCER DATA DICTIONARY, V 1.1, Part A, BASIC VARIABLES for Adults, Adolescents, and Children (23.12.2019)\\'
([EN](https://www.nacr.ch/assets/files/uploads/a-datadictionary-basicvariables-v1.1.pdf), 
[DE](https://www.nkrs.ch/assets/files/uploads/a-datenstruktur-variablen-der-basisdaten-v1.1.pdf), 
[FR](https://www.onec.ch/assets/files/uploads/a-dict-des-donnees-variables-de-base-v1.1.pdf), 
[IT](https://www.snrt.ch/assets/files/uploads/a-dati-oncologici-variabili-di-base-v1.1.pdf))"
* ^caseSensitive = true
* ^valueSet = "http://fhir.ch/ig/ch-crl/ValueSet/nkrs-firsttreatmentcomplexcode"
* ^content = #complete

* #Z99.25.29 "Intraoperative Applikation von Chemotherapeutikum, sonstige"



ValueSet: NkrsFirstTreatmentComplexCode
Id: nkrs-firsttreatmentcomplexcode
Title: "NKRS - First treatment complex code"
Description: "The data item records the CHOP code, or NACR-assigned CHOP-like code for treatments where no CHOP code exists, 
for each treatment as part of the first treatment complex. CHOP is Swiss classification of surgical operations and other 
diagnostic and treatment procedures and interventions."
* include codes from system NkrsFirstTreatmentComplexCode
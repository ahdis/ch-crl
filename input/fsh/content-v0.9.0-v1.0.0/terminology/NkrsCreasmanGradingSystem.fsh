CodeSystem: NkrsCreasmanGradingSystem
Id: nkrs-creasmangradingsystem
Title: "NKRS - Creasman Grading System"
Description: "This data item records histopathological grade for uterine or endometrial cancer. 

**Creasman grading system (Variable number: 4.34)** 
in \\'NATIONAL CANCER DATA DICTIONARY, V 1.1, Part A, BASIC VARIABLES for Adults, Adolescents, and Children (23.12.2019)\\'
([EN](https://www.nacr.ch/assets/files/uploads/a-datadictionary-basicvariables-v1.1.pdf), 
[DE](https://www.nkrs.ch/assets/files/uploads/a-datenstruktur-variablen-der-basisdaten-v1.1.pdf), 
[FR](https://www.onec.ch/assets/files/uploads/a-dict-des-donnees-variables-de-base-v1.1.pdf), 
[IT](https://www.snrt.ch/assets/files/uploads/a-dati-oncologici-variabili-di-base-v1.1.pdf))"
* ^caseSensitive = true
* ^valueSet = "http://fhir.ch/ig/ch-crl/ValueSet/nkrs-creasmangradingsystem"
* ^content = #complete

* #1 "G1" "≤5% of a nonsquamous or nonmorular solid growth pattern"
* #2 "G2" "6−50% of a nonsquamous or nonmorular solid growth pattern"
* #3 "G3" ">50% of a nonsquamous or nonmorular solid growth pattern"


ValueSet: NkrsCreasmanGradingSystem
Id: nkrs-creasmangradingsystem
Title: "NKRS - Creasman Grading System"
Description: "This data item records histopathological grade for uterine or endometrial cancer."
* include codes from system NkrsCreasmanGradingSystem
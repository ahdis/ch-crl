CodeSystem: NkrsHer2ReceptorStatus
Id: nkrs-her2receptorstatus
Title: "NKRS - Her2 Receptor Status"
Description: "The data item records the Her2 (human epidermal growth factor receptor 2) expression status of the tumour. 

**Her2 receptor status (Variable number: 5.1.3)** 
in \\'NATIONAL CANCER DATA DICTIONARY, V 1.1, Part A, BASIC VARIABLES for Adults, Adolescents, and Children (23.12.2019)\\'
([EN](https://www.nacr.ch/assets/files/uploads/a-datadictionary-basicvariables-v1.1.pdf), 
[DE](https://www.nkrs.ch/assets/files/uploads/a-datenstruktur-variablen-der-basisdaten-v1.1.pdf), 
[FR](https://www.onec.ch/assets/files/uploads/a-dict-des-donnees-variables-de-base-v1.1.pdf), 
[IT](https://www.snrt.ch/assets/files/uploads/a-dati-oncologici-variabili-di-base-v1.1.pdf))"
* ^caseSensitive = true
* ^valueSet = "http://fhir.ch/ig/ch-crl/ValueSet/nkrs-her2receptorstatus"
* ^content = #complete

* #1 "Her2 overexpressed or gene amplified"
* #2 "Her2 not overexpressed or gene not amplified"



ValueSet: NkrsHer2ReceptorStatus
Id: nkrs-her2receptorstatus
Title: "NKRS - Her2 Receptor Status"
Description: "The data item records the Her2 (human epidermal growth factor receptor 2) expression status of the tumour."
* include codes from system NkrsHer2ReceptorStatus
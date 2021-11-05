CodeSystem: NkrsSentinelLymphNodeAssessment
Id: nkrs-sentinellymphnodeassessment
Title: "NKRS - Sentinel Lymph Node Assessment"
Description: "The data item indicates whether the sentinel lymph node is excised and the result of the examination. 
The sentinel lymph node is the first lymph node to receive lymphatic drainage from a primary tumour. 
**Sentinel lymph node assessment (Variable number: 6.5)** 
in \\'NATIONAL CANCER DATA DICTIONARY, V 1.1, Part A, BASIC VARIABLES for Adults, Adolescents, and Children (23.12.2019)\\'
([EN](https://www.nacr.ch/assets/files/uploads/a-datadictionary-basicvariables-v1.1.pdf), 
[DE](https://www.nkrs.ch/assets/files/uploads/a-datenstruktur-variablen-der-basisdaten-v1.1.pdf), 
[FR](https://www.onec.ch/assets/files/uploads/a-dict-des-donnees-variables-de-base-v1.1.pdf), 
[IT](https://www.snrt.ch/assets/files/uploads/a-dati-oncologici-variabili-di-base-v1.1.pdf))"
* ^caseSensitive = true
* ^valueSet = "http://fhir.ch/ig/ch-crl/ValueSet/nkrs-sentinellymphnodeassessment"
* ^content = #complete

* #0 "N0" "Sentinel lymph node not involved."
* #1 "N1" "Sentinel lymph node involved."
* #8 "NX" "Sentinel lymph node cannot be assessed."


ValueSet: NkrsSentinelLymphNodeAssessment
Id: nkrs-sentinellymphnodeassessment
Title: "NKRS - Sentinel Lymph Node Assessment"
Description: "The data item indicates whether the sentinel lymph node is excised and the result of the examination. 
The sentinel lymph node is the first lymph node to receive lymphatic drainage from a primary tumour."
* include codes from system NkrsSentinelLymphNodeAssessment
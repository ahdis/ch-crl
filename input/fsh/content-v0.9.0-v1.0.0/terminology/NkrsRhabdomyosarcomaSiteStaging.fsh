CodeSystem: NkrsRhabdomyosarcomaSiteStaging
Id: nkrs-rhabdomyosarcomasitestaging
Title: "NKRS - Rhabdomyosarcoma Site Staging"
Description: "Rhabdomyosarcoma staging is based on the classic TNM staging taking into account 
favourable/non favourable tumour sites. It is used in paediatric oncology. 
**Rhabdomyosarcoma site staging (Variable number: 4.28)** 
in \\'NATIONAL CANCER DATA DICTIONARY, V 1.1, Part A, BASIC VARIABLES for Adults, Adolescents, and Children (23.12.2019)\\'
([EN](https://www.nacr.ch/assets/files/uploads/a-datadictionary-basicvariables-v1.1.pdf), 
[DE](https://www.nkrs.ch/assets/files/uploads/a-datenstruktur-variablen-der-basisdaten-v1.1.pdf), 
[FR](https://www.onec.ch/assets/files/uploads/a-dict-des-donnees-variables-de-base-v1.1.pdf), 
[IT](https://www.snrt.ch/assets/files/uploads/a-dati-oncologici-variabili-di-base-v1.1.pdf))"
* ^caseSensitive = true
* ^valueSet = "http://fhir.ch/ig/ch-crl/ValueSet/nkrs-rhabdomyosarcomasitestaging"
* ^content = #complete

* #I "Stage I" "Any T Any N M0 Favourable Site"
* #II "Stage II" "T1a, T2a N0 M0 Unfavourable Site"
* #III "Stage III" "T1a, T2a N1 M0 Unfavourable Site / T1b, T2b Any N M0 Unfavourable Site"
* #IV "Stage IV" "Any T Any N M1 Any Site"

// 99 Unknown Not stated / Not assessed. -> dataAbsentReason


ValueSet: NkrsRhabdomyosarcomaSiteStaging
Id: nkrs-rhabdomyosarcomasitestaging
Title: "NKRS - Rhabdomyosarcoma Site Staging"
Description: "Rhabdomyosarcoma staging is based on the classic TNM staging taking into account 
favourable/non favourable tumour sites. It is used in paediatric oncology."
* include codes from system NkrsRhabdomyosarcomaSiteStaging
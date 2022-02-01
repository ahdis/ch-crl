CodeSystem: NkrsTopographyMetastases
Id: nkrs-topographymetastases
Title: "NKRS - Topography of Metastases"
Description: "The data item identifies the distant site(s) of metastatic involvement at time of diagnosis or after disease recurrence. 

**Sentinel lymph node assessment (Variable number: 6.5) / Topography(s) of post-diagnosis metastases (Variable number: 8.6)** 
in \\'NATIONAL CANCER DATA DICTIONARY, V 1.1, Part A, BASIC VARIABLES for Adults, Adolescents, and Children (23.12.2019)\\'
([EN](https://www.nacr.ch/assets/files/uploads/a-datadictionary-basicvariables-v1.1.pdf), 
[DE](https://www.nkrs.ch/assets/files/uploads/a-datenstruktur-variablen-der-basisdaten-v1.1.pdf), 
[FR](https://www.onec.ch/assets/files/uploads/a-dict-des-donnees-variables-de-base-v1.1.pdf), 
[IT](https://www.snrt.ch/assets/files/uploads/a-dati-oncologici-variabili-di-base-v1.1.pdf))"
* ^caseSensitive = true
* ^valueSet = "http://fhir.ch/ig/ch-crl/ValueSet/nkrs-topographymetastases"
* ^content = #complete

* #1 "PUL" "Pulmonary (C34)."
* #2 "OSS" "Osseous (C40, 41)."
* #3 "HEP" "Hepatic (C22)."
* #4 "BRA" "Brain (C71)."
* #5 "LYM" "Lymph nodes (C77)."
* #6 "MAR" "Bone marrow (C42.1)."
* #7 "PLE" "Pleura (C38.4)."
* #8 "PER" "Peritoneum (C48.1, 2)."
* #9 "ADR" "Adrenals (C74)."
* #10 "SKI" "Skin (C44)."
* #11 "OTH" "Others."


ValueSet: NkrsTopographyMetastases
Id: nkrs-topographymetastases
Title: "NKRS - Topography of Metastases"
Description: "The data item identifies the distant site(s) of metastatic involvement at time of diagnosis or after disease recurrence."
* include codes from system NkrsTopographyMetastases
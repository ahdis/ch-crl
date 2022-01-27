CodeSystem: NkrsPRETEXTStaging
Id: nkrs-pretextstaging
Title: "NKRS - PRETEXT Staging"
Description: "The PRETEXT (PRE-Treatment EXTent of tumor) staging system is used for malignant primary liver tumours 
of childhood before any therapy. The PRETEXT hepatoblastoma staging is based on Couinaud’s system of segmentation of the liver. 
**PRETEXT staging (Variable number: 4.25)** 
in \\'NATIONAL CANCER DATA DICTIONARY, V 1.1, Part A, BASIC VARIABLES for Adults, Adolescents, and Children (23.12.2019)\\'
([EN](https://www.nacr.ch/assets/files/uploads/a-datadictionary-basicvariables-v1.1.pdf), 
[DE](https://www.nkrs.ch/assets/files/uploads/a-datenstruktur-variablen-der-basisdaten-v1.1.pdf), 
[FR](https://www.onec.ch/assets/files/uploads/a-dict-des-donnees-variables-de-base-v1.1.pdf), 
[IT](https://www.snrt.ch/assets/files/uploads/a-dati-oncologici-variabili-di-base-v1.1.pdf))"
* ^caseSensitive = true
* ^valueSet = "http://fhir.ch/ig/ch-crl/ValueSet/nkrs-pretextstaging"
* ^content = #complete

* #I "PRETEXT I" "One section is involved and three adjoining sections are free."
* #II "PRETEXT II" "One or two sections are involved, but two adjoining sections are free."
* #III "PRETEXT III" "Two or three sections are involved, and no two adjoining sections are free"
* #IV "PRETEXT IV" "All four sections are involved"

// 99 Unknown Not stated / Not assessed.



ValueSet: NkrsPRETEXTStaging
Id: nkrs-pretextstaging
Title: "NKRS - PRETEXT Staging"
Description: "The PRETEXT (PRE-Treatment EXTent of tumor) staging system is used for malignant primary liver tumours 
of childhood before any therapy. The PRETEXT hepatoblastoma staging is based on Couinaud’s system of segmentation of the liver."
* include codes from system NkrsPRETEXTStaging
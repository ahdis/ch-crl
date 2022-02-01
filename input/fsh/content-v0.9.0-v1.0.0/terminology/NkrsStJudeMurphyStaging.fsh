CodeSystem: NkrsStJudeMurphyStaging
Id: nkrs-stjudemurphystaging
Title: "NKRS - St. Jude / Murphy Staging"
Description: "The data item records the International Staging System (ISS) for multiple myeloma. 

**St. Jude / Murphy staging (Variable number: 4.32)** 
in \\'NATIONAL CANCER DATA DICTIONARY, V 1.1, Part A, BASIC VARIABLES for Adults, Adolescents, and Children (23.12.2019)\\'
([EN](https://www.nacr.ch/assets/files/uploads/a-datadictionary-basicvariables-v1.1.pdf), 
[DE](https://www.nkrs.ch/assets/files/uploads/a-datenstruktur-variablen-der-basisdaten-v1.1.pdf), 
[FR](https://www.onec.ch/assets/files/uploads/a-dict-des-donnees-variables-de-base-v1.1.pdf), 
[IT](https://www.snrt.ch/assets/files/uploads/a-dati-oncologici-variabili-di-base-v1.1.pdf))"
* ^caseSensitive = true
* ^valueSet = "http://fhir.ch/ig/ch-crl/ValueSet/nkrs-stjudemurphystaging"
* ^content = #complete

* #I "Stage I" "Involvement of a single tumour mass or nodal area, excluding the mediastinum and abdomen"
* #II "Stage II" "Involvement of a single tumour mass with regional node(s) or two or more tumours and/or nodal regions on the same side of the diaphragm, or a completely resected primary gastrointestinal tract tumour with or without regional nodal involvement"
* #III "Stage III" "Tumour masses and/or regional nodes on opposite sides of the diaphragm or primary intrathoracic tumour (mediastinal, pleural or thymic) or extensive primary intra abdominal disease or paraspinal tumour or epidural tumour"
* #IV "Stage IV" "Involvement of bone marrow and/or central nervous system."



ValueSet: NkrsStJudeMurphyStaging
Id: nkrs-stjudemurphystaging
Title: "NKRS - St. Jude / Murphy Staging"
Description: "The data item records the International Staging System (ISS) for multiple myeloma."
* include codes from system NkrsStJudeMurphyStaging
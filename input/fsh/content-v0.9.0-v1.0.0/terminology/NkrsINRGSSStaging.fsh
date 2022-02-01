CodeSystem: NkrsINRGSSStaging
Id: nkrs-inrgssstaging
Title: "NKRS - INRGSS Staging"
Description: "This data item records the paediatric stage classification of the 
International Neuroblastoma Risk Group Staging System (INRGSS). 

**INRGSS staging (Variable number: 4.22)** 
in \\'NATIONAL CANCER DATA DICTIONARY, V 1.1, Part A, BASIC VARIABLES for Adults, Adolescents, and Children (23.12.2019)\\'
([EN](https://www.nacr.ch/assets/files/uploads/a-datadictionary-basicvariables-v1.1.pdf), 
[DE](https://www.nkrs.ch/assets/files/uploads/a-datenstruktur-variablen-der-basisdaten-v1.1.pdf), 
[FR](https://www.onec.ch/assets/files/uploads/a-dict-des-donnees-variables-de-base-v1.1.pdf), 
[IT](https://www.snrt.ch/assets/files/uploads/a-dati-oncologici-variabili-di-base-v1.1.pdf))"
* ^caseSensitive = true
* ^valueSet = "http://fhir.ch/ig/ch-crl/ValueSet/nkrs-inrgssstaging"
* ^content = #complete

* #L1 "Stage L1" "Localized tumour not involving vital structures as defined by the list of image-defined risk factors and confined to one body compartment."
* #L2 "Stage L2" "Locoregional tumor with presence of one or more image-defined risk factors."
* #M "Stage M" "Distant metastatic disease (except stage MS)."
* #MS "Stage MS" "Metastatic disease in children younger than 18 months with metastases confined to skin, liver, and/or bone marrow."



ValueSet: NkrsINRGSSStaging
Id: nkrs-inrgssstaging
Title: "NKRS - INRGSS Staging"
Description: "This data item records the paediatric stage classification of the 
International Neuroblastoma Risk Group Staging System (INRGSS)."
* include codes from system NkrsINRGSSStaging
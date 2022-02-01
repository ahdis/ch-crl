CodeSystem: NkrsIRSSStaging
Id: nkrs-irssstaging
Title: "NKRS - IRSS Staging"
Description: "The paediatric International Retinoblastoma Staging System is based on extent 
of disease and the presence of overt extra-ocular extension after enucleation. 

**IRSS staging (Variable number: 4.23)** 
in \\'NATIONAL CANCER DATA DICTIONARY, V 1.1, Part A, BASIC VARIABLES for Adults, Adolescents, and Children (23.12.2019)\\'
([EN](https://www.nacr.ch/assets/files/uploads/a-datadictionary-basicvariables-v1.1.pdf), 
[DE](https://www.nkrs.ch/assets/files/uploads/a-datenstruktur-variablen-der-basisdaten-v1.1.pdf), 
[FR](https://www.onec.ch/assets/files/uploads/a-dict-des-donnees-variables-de-base-v1.1.pdf), 
[IT](https://www.snrt.ch/assets/files/uploads/a-dati-oncologici-variabili-di-base-v1.1.pdf))"
* ^caseSensitive = true
* ^valueSet = "http://fhir.ch/ig/ch-crl/ValueSet/nkrs-irssstaging"
* ^content = #complete

* #0 "Stage 0" "Patients treated conservatively. The tumour is confined to the globe. Enucleation has not been performed."
* #pI "pStage I" "Eye enucleated, completely resected histologically"
* #pII "pStage II" "Eye enucleated, microscopic residual tumour"
* #pIIIa "pStage IIIa" "Regional extension: overt orbital disease"
* #pIIIb "pStage IIIb" "Regional extension: preauricular or cervical lymph node extension"
* #cIVa.1 "cStage IVa.1" "Haematogenous metastasis (without CNS involvement): single lesion"
* #cIVa.2 "cStage IVa.2" "Haematogenous metastasis (without CNS involvement): multiple lesions"
* #cIVb.1 "cStage IVb.1" "CNS extension (with or without any other site of regional or metastatic disease: prechiasmatic lesion"
* #cIVb.2 "cStage IVb.2" "CNS extension (with or without any other site of regional or metastatic disease: CNS mass"
* #cIVb.3 "cStage IVb.3" "CNS extension (with or without any other site of regional or metastatic disease: leptomeningeal and cerebrospinal fluid disease"



ValueSet: NkrsIRSSStaging
Id: nkrs-irssstaging
Title: "NKRS - IRSS Staging"
Description: "The paediatric International Retinoblastoma Staging System is based on extent 
of disease and the presence of overt extra-ocular extension after enucleation."
* include codes from system NkrsIRSSStaging
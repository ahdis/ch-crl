CodeSystem: NkrsDSSplus
Id: nkrs-dssplus
Title: "NKRS - DSSplus"
Description: "The DSSplus (Durie-Salmon Plus staging system) is the revised Durie-Salmon staging system for multiple myeloma 
classification, based on MRI findings, FDG PET/CT findings, or both. 

**DSSplus (Variable number: 4.30)** 
in \\'NATIONAL CANCER DATA DICTIONARY, V 1.1, Part A, BASIC VARIABLES for Adults, Adolescents, and Children (23.12.2019)\\'
([EN](https://www.nacr.ch/assets/files/uploads/a-datadictionary-basicvariables-v1.1.pdf), 
[DE](https://www.nkrs.ch/assets/files/uploads/a-datenstruktur-variablen-der-basisdaten-v1.1.pdf), 
[FR](https://www.onec.ch/assets/files/uploads/a-dict-des-donnees-variables-de-base-v1.1.pdf), 
[IT](https://www.snrt.ch/assets/files/uploads/a-dati-oncologici-variabili-di-base-v1.1.pdf))"
* ^caseSensitive = true
* ^valueSet = "http://fhir.ch/ig/ch-crl/ValueSet/nkrs-dssplus"
* ^content = #complete

* #IA "Stage IA" "Smoldering or indolent. Can have single plasmocytoma or limited disease at imaging; Normal renal function (serum creatinine level < 2.0 mg/dL)."
* #IB "Stage IB" "< 5 focal lesions, mild diffuse disease; Abnormal renal function (serum creatinine level ≥ 2.0 mg/dL)."
* #IIA "Stage IIA" "5–20 focal lesions; moderate diffuse disease; Normal renal function (serum creatinine level < 2.0 mg/dL)."
* #IIB "Stage IIB" "5–20 focal lesions; moderate diffuse disease; Abnormal renal function (serum creatinine level ≥ 2.0 mg/dL)."
* #IIIA "Stage IIIA" "> 20 focal lesions; moderate diffuse disease; normal renal function (serum creatinine level < 2.0 mg/dL)."
* #IIIB "Stage IIIB" "> 20 focal lesions; moderate diffuse disease; Abnormal renal function (serum creatinine level ≥ 2.0 mg/dL)."



ValueSet: NkrsDSSplus
Id: nkrs-dssplus
Title: "NKRS - DSSplus"
Description: "The DSSplus (Durie-Salmon Plus staging system) is the revised Durie-Salmon staging system for multiple myeloma 
classification, based on MRI findings, FDG PET/CT findings, or both."
* include codes from system NkrsDSSplus
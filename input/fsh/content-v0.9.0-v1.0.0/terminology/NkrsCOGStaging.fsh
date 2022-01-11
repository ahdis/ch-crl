CodeSystem: NkrsCOGStaging
Id: nkrs-cogstaging
Title: "NKRS - COG Staging"
Description: "This data item records staging of Wilms’ tumour for pediatric patients acc. to pre-chemotherapy staging 
system developed by the National Wilms’ Tumor Study Group (NWTSG). Based exclusively on the anatomic extent of the 
tumour, without consideration of genetic, biologic, or molecular markers. 
**COG staging (Variable number: 4.19)** 
in \\'NATIONAL CANCER DATA DICTIONARY, V 1.1, Part A, BASIC VARIABLES for Adults, Adolescents, and Children (23.12.2019)\\'
([EN](https://www.nacr.ch/assets/files/uploads/a-datadictionary-basicvariables-v1.1.pdf), 
[DE](https://www.nkrs.ch/assets/files/uploads/a-datenstruktur-variablen-der-basisdaten-v1.1.pdf), 
[FR](https://www.onec.ch/assets/files/uploads/a-dict-des-donnees-variables-de-base-v1.1.pdf), 
[IT](https://www.snrt.ch/assets/files/uploads/a-dati-oncologici-variabili-di-base-v1.1.pdf))"
* ^caseSensitive = true
* ^valueSet = "http://fhir.ch/ig/ch-crl/ValueSet/nkrs-cogstaging"
* ^content = #complete

* #I "Stage I" "Limited to kidney, not ruptured, no residual tumor."
* #II "Stage II" "Extends beyond the kidney but is completely excised."
* #III "Stage III" "Residual tumor confined to the abdomen. Micro/macroscopic remains of a tumour."
* #IV "Stage IV" "Hematogenous / distant lymph nodes metastases."
* #V "Stage V" "Bilateral renal involvement at diagnosis."



ValueSet: NkrsCOGStaging
Id: nkrs-cogstaging
Title: "NKRS - COG Staging"
Description: "This data item records staging of Wilms’ tumour for pediatric patients acc. to pre-chemotherapy staging 
system developed by the National Wilms’ Tumor Study Group (NWTSG). Based exclusively on the anatomic extent of the 
tumour, without consideration of genetic, biologic, or molecular markers."
* include codes from system NkrsCOGStaging
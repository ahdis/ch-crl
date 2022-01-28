CodeSystem: NkrsShimadaGradingSystem
Id: nkrs-shimadagradingsystem
Title: "NKRS - Shimada Grading System"
Description: "This data item records the grade for neuroblastoma, a frequent childhood cancer. Based on a grade of 
neuroblastic differentiation and mitosis-karyorrhexis index [MKI]) along with patient age at the time of diagnosis. 
**Shimada grading system (Variable number: 4.37)** 
in \\'NATIONAL CANCER DATA DICTIONARY, V 1.1, Part A, BASIC VARIABLES for Adults, Adolescents, and Children (23.12.2019)\\'
([EN](https://www.nacr.ch/assets/files/uploads/a-datadictionary-basicvariables-v1.1.pdf), 
[DE](https://www.nkrs.ch/assets/files/uploads/a-datenstruktur-variablen-der-basisdaten-v1.1.pdf), 
[FR](https://www.onec.ch/assets/files/uploads/a-dict-des-donnees-variables-de-base-v1.1.pdf), 
[IT](https://www.snrt.ch/assets/files/uploads/a-dati-oncologici-variabili-di-base-v1.1.pdf))"
* ^caseSensitive = true
* ^valueSet = "http://fhir.ch/ig/ch-crl/ValueSet/nkrs-shimadagradingsystem"
* ^content = #complete

* #1 "Favourable Histology" 
"Age <1.5 yrs: Poorly differentiated or differentiating and low or intermediate MKI tumor. / 
Age 1.5–5.0 yrs: Differentiating and low MKI tumor."
* #2 "Unfavourable Histology"
"Age < 1.5 yrs 1) Undifferentiated tumor; 2) high MKI (mitosis-karyorrhexis index) tumor. / 
Age 1.5–5.0 yrs 1) Undifferentiated and/or high MKI tumour 2) poorly differentiated and/or intermediate MKI tumour. / 
Age > 5.0 yrs: All tumors."


ValueSet: NkrsShimadaGradingSystem
Id: nkrs-shimadagradingsystem
Title: "NKRS - Shimada Grading System"
Description: "This data item records the grade for neuroblastoma, a frequent childhood cancer. Based on a grade of 
neuroblastic differentiation and mitosis-karyorrhexis index [MKI]) along with patient age at the time of diagnosis."
* include codes from system NkrsShimadaGradingSystem
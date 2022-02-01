CodeSystem: NkrsRaiStaging
Id: nkrs-raistaging
Title: "NKRS - Rai Staging"
Description: "This classification for Chronic Lymphocytic Leukaemia (CLL) includes 4 stages based on blood and bone marrow 
cell count (lymphocytes, platelets), haemoglobin/haematocrit, LN envolvement, hepato- and/or splenomegaly. The staging 
allows classification of patients into three risk categories (low, intermediary, high risk with median survival >12y, >8y 
and >2y, respectively). 

**Rai staging (Variable number: 4.26)** 
in \\'NATIONAL CANCER DATA DICTIONARY, V 1.1, Part A, BASIC VARIABLES for Adults, Adolescents, and Children (23.12.2019)\\'
([EN](https://www.nacr.ch/assets/files/uploads/a-datadictionary-basicvariables-v1.1.pdf), 
[DE](https://www.nkrs.ch/assets/files/uploads/a-datenstruktur-variablen-der-basisdaten-v1.1.pdf), 
[FR](https://www.onec.ch/assets/files/uploads/a-dict-des-donnees-variables-de-base-v1.1.pdf), 
[IT](https://www.snrt.ch/assets/files/uploads/a-dati-oncologici-variabili-di-base-v1.1.pdf))"
* ^caseSensitive = true
* ^valueSet = "http://fhir.ch/ig/ch-crl/ValueSet/nkrs-raistaging"
* ^content = #complete

* #0 "Stage 0"
* #I "Stage I"
* #II "Stage II"
* #III "Stage III"
* #IV "Stage IV"



ValueSet: NkrsRaiStaging
Id: nkrs-raistaging
Title: "NKRS - Rai Staging"
Description: "This classification for Chronic Lymphocytic Leukaemia (CLL) includes 4 stages based on blood and bone marrow 
cell count (lymphocytes, platelets), haemoglobin/haematocrit, LN envolvement, hepato- and/or splenomegaly. The staging 
allows classification of patients into three risk categories (low, intermediary, high risk with median survival >12y, >8y 
and >2y, respectively)."
* include codes from system NkrsRaiStaging
CodeSystem: NkrsRaiStaging
Id: nkrs-raistaging
Title: "NKRS - Rai Staging"
Description: "This classification for Chronic Lymphocytic Leukaemia (CLL) includes 4 stages based on blood and bone marrow 
cell count (lymphocytes, platelets), haemoglobin/haematocrit, LN envolvement, hepato- and/or splenomegaly. The staging 
allows classification of patients into three risk categories (low, intermediary, high risk with median survival >12y, >8y 
and >2y, respectively). 

**Rai staging (Variable number: 4.26)** 
in \\'NATIONAL CANCER DATA DICTIONARY, V 1.2, Part A, BASIC VARIABLES for Adults, Adolescents, and Children\\'"
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
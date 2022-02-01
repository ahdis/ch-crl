CodeSystem: NkrsBinetStaging
Id: nkrs-binetstaging
Title: "NKRS - Binet Staging"
Description: "This data item records the stage of Chronic Lymphocytic Leukaemia (CLL) based on the cell count in the blood 
and bone marrow (lymphocytes, platelets), haemoglobin/ haematocrit, lymph nodes involvement, hepato- and/or splenomegaly. 

**Binet staging (Variable number: 4.27)** 
in \\'NATIONAL CANCER DATA DICTIONARY, V 1.1, Part A, BASIC VARIABLES for Adults, Adolescents, and Children (23.12.2019)\\'
([EN](https://www.nacr.ch/assets/files/uploads/a-datadictionary-basicvariables-v1.1.pdf), 
[DE](https://www.nkrs.ch/assets/files/uploads/a-datenstruktur-variablen-der-basisdaten-v1.1.pdf), 
[FR](https://www.onec.ch/assets/files/uploads/a-dict-des-donnees-variables-de-base-v1.1.pdf), 
[IT](https://www.snrt.ch/assets/files/uploads/a-dati-oncologici-variabili-di-base-v1.1.pdf))"
* ^caseSensitive = true
* ^valueSet = "http://fhir.ch/ig/ch-crl/ValueSet/nkrs-binetstaging"
* ^content = #complete

* #A "Stage A" "Hb ≥ 10.0 g/dl, thrombocytes ≥100 × 109/l, <3 lymph node regions."
* #B "Stage B" "Hb ≥ 10.0 g/dl, thrombocytes ≥100 × 109/l, ≥3 lymph node regions."
* #C "Stage C" "Hb < 10.0 g/dl, thrombocytes <100 × 109/l, any number of lymph node regions."



ValueSet: NkrsBinetStaging
Id: nkrs-binetstaging
Title: "NKRS - Binet Staging"
Description: "This data item records the stage of Chronic Lymphocytic Leukaemia (CLL) based on the cell count in the blood 
and bone marrow (lymphocytes, platelets), haemoglobin/ haematocrit, lymph nodes involvement, hepato- and/or splenomegaly."
* include codes from system NkrsBinetStaging
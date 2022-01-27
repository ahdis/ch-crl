CodeSystem: NkrsSIOPStaging
Id: nkrs-siopstaging
Title: "NKRS - SIOP Staging"
Description: "This data item records staging of Wilms’ tumor for pediatric patients acc. to post-chemotherapy staging 
system developed by the International Society of Pediatric Oncology (SIOP). Based exclusively on the anatomic extent 
of the tumor, without consideration of genetic, biologic, or molecular markers. 
**SIOP staging (Variable number: 4.31)** 
in \\'NATIONAL CANCER DATA DICTIONARY, V 1.1, Part A, BASIC VARIABLES for Adults, Adolescents, and Children (23.12.2019)\\'
([EN](https://www.nacr.ch/assets/files/uploads/a-datadictionary-basicvariables-v1.1.pdf), 
[DE](https://www.nkrs.ch/assets/files/uploads/a-datenstruktur-variablen-der-basisdaten-v1.1.pdf), 
[FR](https://www.onec.ch/assets/files/uploads/a-dict-des-donnees-variables-de-base-v1.1.pdf), 
[IT](https://www.snrt.ch/assets/files/uploads/a-dati-oncologici-variabili-di-base-v1.1.pdf))"
* ^caseSensitive = true
* ^valueSet = "http://fhir.ch/ig/ch-crl/ValueSet/nkrs-siopstaging"
* ^content = #complete

* #yI "Stage y-I" "Confined to kidney, capsule not exceeded, tumour can be completely removed."
* #yII "Stage y-II" "Tumour infiltrates adjacent organs but is completely resected."
* #yIII "Stage y-III" "Incomplete removal, no hematogenous metastases. Regional lymph nodes involved."
* #IV "Stage IV" "Haematogenous metastases (lung, liver, bone, brain, etc.) or lymph node metastases outside the abdomino-pelvic region"
* #V "Stage V" "Bilateral renal tumours at diagnosis"

// 99	Unknown	Not stated / Not assessed. -> dataAbsentReason



ValueSet: NkrsSIOPStaging
Id: nkrs-siopstaging
Title: "NKRS - SIOP Staging"
Description: "This data item records staging of Wilms’ tumor for pediatric patients acc. to post-chemotherapy staging 
system developed by the International Society of Pediatric Oncology (SIOP). Based exclusively on the anatomic extent 
of the tumor, without consideration of genetic, biologic, or molecular markers."
* include codes from system NkrsSIOPStaging
CodeSystem: NkrsISSStaging
Id: nkrs-issstaging
Title: "NKRS - ISS Staging"
Description: "The data item records the International Staging System (ISS) for multiple myeloma. 
**ISS staging (Variable number: 4.29)** 
in \\'NATIONAL CANCER DATA DICTIONARY, V 1.1, Part A, BASIC VARIABLES for Adults, Adolescents, and Children (23.12.2019)\\'
([EN](https://www.nacr.ch/assets/files/uploads/a-datadictionary-basicvariables-v1.1.pdf), 
[DE](https://www.nkrs.ch/assets/files/uploads/a-datenstruktur-variablen-der-basisdaten-v1.1.pdf), 
[FR](https://www.onec.ch/assets/files/uploads/a-dict-des-donnees-variables-de-base-v1.1.pdf), 
[IT](https://www.snrt.ch/assets/files/uploads/a-dati-oncologici-variabili-di-base-v1.1.pdf))"
* ^caseSensitive = true
* ^valueSet = "http://fhir.ch/ig/ch-crl/ValueSet/nkrs-issstaging"
* ^content = #complete

* #I "Stage I" "Serum β2-microglobulin level < 3.5 mg/L and serum albumin level > 3.5 g/dL."
* #II "Stage II" "(Not ISS stage I or III)."
* #III "Stage III" "Serum β2-microglobulin level ≥ 5.5 mg/L."


ValueSet: NkrsISSStaging
Id: nkrs-issstaging
Title: "NKRS - ISS Staging"
Description: "The data item records the International Staging System (ISS) for multiple myeloma."
* include codes from system NkrsISSStaging
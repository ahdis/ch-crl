CodeSystem: NkrsHCG
Id: nkrs-hcg
Title: "NKRS - β-hCG"
Description: "The data item records the level of serum tumour marker human chorionic gonadotropin (β-hCG). 
**β-hCG (Variable number: 5.5.2)** 
in \\'NATIONAL CANCER DATA DICTIONARY, V 1.1, Part A, BASIC VARIABLES for Adults, Adolescents, and Children (23.12.2019)\\'
([EN](https://www.nacr.ch/assets/files/uploads/a-datadictionary-basicvariables-v1.1.pdf), 
[DE](https://www.nkrs.ch/assets/files/uploads/a-datenstruktur-variablen-der-basisdaten-v1.1.pdf), 
[FR](https://www.onec.ch/assets/files/uploads/a-dict-des-donnees-variables-de-base-v1.1.pdf), 
[IT](https://www.snrt.ch/assets/files/uploads/a-dati-oncologici-variabili-di-base-v1.1.pdf))"
* ^caseSensitive = true
* ^valueSet = "http://fhir.ch/ig/ch-crl/ValueSet/nkrs-betahcg"
* ^content = #complete

* #0 "hCG0" "Within reference range"
* #1 "hCG1" "> upper limit of reference range if upper limit < 5’000 mIU/ml"
* #2 "hCG2" "5’000 – 50’000 mIU/ml"
* #3 "hCG3" "> 50’000 mIU/ml"


ValueSet: NkrsHCG
Id: nkrs-hcg
Title: "NKRS - β-hCG"
Description: "The data item records the level of serum tumour marker human chorionic gonadotropin (β-hCG)."
* include codes from system NkrsHCG
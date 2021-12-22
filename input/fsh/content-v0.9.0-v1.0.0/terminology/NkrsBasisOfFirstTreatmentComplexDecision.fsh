CodeSystem: NkrsBasisOfFirstTreatmentComplexDecision
Id: nkrs-basisoffirsttreatmentcomplexdecision
Title: "NKRS - Basis of First Treatment Complex Decision"
Description: "This data item records the basis of treatment decision for the entire first treatment complex. 
The first treatment complex includes all therapy steps planned after the diagnosis. 
**Basis of first treatment complex decision (Variable number: 7.1)** 
in \\'NATIONAL CANCER DATA DICTIONARY, V 1.1, Part A, BASIC VARIABLES for Adults, Adolescents, and Children (23.12.2019)\\'
([EN](https://www.nacr.ch/assets/files/uploads/a-datadictionary-basicvariables-v1.1.pdf), 
[DE](https://www.nkrs.ch/assets/files/uploads/a-datenstruktur-variablen-der-basisdaten-v1.1.pdf), 
[FR](https://www.onec.ch/assets/files/uploads/a-dict-des-donnees-variables-de-base-v1.1.pdf), 
[IT](https://www.snrt.ch/assets/files/uploads/a-dati-oncologici-variabili-di-base-v1.1.pdf))"
* ^caseSensitive = true
* ^valueSet = "http://fhir.ch/ig/ch-crl/ValueSet/nkrs-basisoffirsttreatmentcomplexdecision"
* ^content = #complete

* #1 "Tumour board" "An interdisciplinary medical committee."
* #2 "Other (not specified)" "Not a tumour board."



ValueSet: NkrsBasisOfFirstTreatmentComplexDecision
Id: nkrs-basisoffirsttreatmentcomplexdecision
Title: "NKRS - Basis of First Treatment Complex Decision"
Description: "This data item records the basis of treatment decision for the entire first treatment complex. 
The first treatment complex includes all therapy steps planned after the diagnosis."
* include codes from system NkrsBasisOfFirstTreatmentComplexDecision
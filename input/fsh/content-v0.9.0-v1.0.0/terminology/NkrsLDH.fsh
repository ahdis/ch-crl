CodeSystem: NkrsLDH
Id: nkrs-ldh
Title: "NKRS - LDH"
Description: "The data item records the levels of serum tumour marker lactate dehydrogenase (LDH). 
**LDH (Variable number: 5.5.3)** 
in \\'NATIONAL CANCER DATA DICTIONARY, V 1.1, Part A, BASIC VARIABLES for Adults, Adolescents, and Children (23.12.2019)\\'
([EN](https://www.nacr.ch/assets/files/uploads/a-datadictionary-basicvariables-v1.1.pdf), 
[DE](https://www.nkrs.ch/assets/files/uploads/a-datenstruktur-variablen-der-basisdaten-v1.1.pdf), 
[FR](https://www.onec.ch/assets/files/uploads/a-dict-des-donnees-variables-de-base-v1.1.pdf), 
[IT](https://www.snrt.ch/assets/files/uploads/a-dati-oncologici-variabili-di-base-v1.1.pdf))"
* ^caseSensitive = true
* ^valueSet = "http://fhir.ch/ig/ch-crl/ValueSet/nkrs-ldh"
* ^content = #complete

* #0 "LDH0" "Within reference range"
* #1 "LDH1" "> upper limit of reference range if upper limit < 1.5 x N^#"
* #2 "LDH2" "1.5 – 10 x N^#"
* #3 "LDH3" "> 10 x N^#"


ValueSet: NkrsLDH
Id: nkrs-ldh
Title: "NKRS - LDH"
Description: "The data item records the levels of serum tumour marker lactate dehydrogenase (LDH)."
* include codes from system NkrsLDH
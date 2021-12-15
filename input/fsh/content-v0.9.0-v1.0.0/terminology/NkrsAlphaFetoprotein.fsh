CodeSystem: NkrsAlphaFetoprotein
Id: nkrs-alphafetoprotein
Title: "NKRS - α-fetoprotein"
Description: "The data item records the serum level of the tumour marker α-fetoprotein (AFP). 
**α-fetoprotein (Variable number: 5.5.1)** 
in \\'NATIONAL CANCER DATA DICTIONARY, V 1.1, Part A, BASIC VARIABLES for Adults, Adolescents, and Children (23.12.2019)\\'
([EN](https://www.nacr.ch/assets/files/uploads/a-datadictionary-basicvariables-v1.1.pdf), 
[DE](https://www.nkrs.ch/assets/files/uploads/a-datenstruktur-variablen-der-basisdaten-v1.1.pdf), 
[FR](https://www.onec.ch/assets/files/uploads/a-dict-des-donnees-variables-de-base-v1.1.pdf), 
[IT](https://www.snrt.ch/assets/files/uploads/a-dati-oncologici-variabili-di-base-v1.1.pdf))"
* ^caseSensitive = true
* ^valueSet = "http://fhir.ch/ig/ch-crl/ValueSet/nkrs-alphafetoprotein"
* ^content = #complete

* #0 "AFP0" "Within reference range"
* #1 "AFP1" "> upper limit of reference range to < 1’000 ng/ml"
* #2 "AFP2" "1’000 – 10’000 ng/ml"
* #3 "AFP3" "> 10’000 ng/ml"


ValueSet: NkrsAlphaFetoprotein
Id: nkrs-alphafetoprotein
Title: "NKRS - α-fetoprotein"
Description: "The data item records the serum level of the tumour marker α-fetoprotein (AFP)."
* include codes from system NkrsAlphaFetoprotein
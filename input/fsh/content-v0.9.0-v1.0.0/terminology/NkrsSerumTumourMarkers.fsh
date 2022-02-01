CodeSystem: NkrsSerumTumourMarkers
Id: nkrs-serumtumourmarkers
Title: "NKRS - Serum Tumour Markers"
Description: "The data item records the TNM S-categories as combination of levels for AFP, hCG, and LDH. 
**Serum tumour markers (Variable number: 5.5.4)** 
in \\'NATIONAL CANCER DATA DICTIONARY, V 1.1, Part A, BASIC VARIABLES for Adults, Adolescents, and Children (23.12.2019)\\'
([EN](https://www.nacr.ch/assets/files/uploads/a-datadictionary-basicvariables-v1.1.pdf), 
[DE](https://www.nkrs.ch/assets/files/uploads/a-datenstruktur-variablen-der-basisdaten-v1.1.pdf), 
[FR](https://www.onec.ch/assets/files/uploads/a-dict-des-donnees-variables-de-base-v1.1.pdf), 
[IT](https://www.snrt.ch/assets/files/uploads/a-dati-oncologici-variabili-di-base-v1.1.pdf))"
* ^caseSensitive = true
// * ^valueSet = "http://fhir.ch/ig/ch-crl/ValueSet/nkrs-serumtumourmarkers"
* ^content = #fragment

* #0 "S0" "Serum marker study levels within normal limits."
// * #1 "S1"
// * #2 "S2"
// * #3 "S3"


ValueSet: NkrsSerumTumourMarkers
Id: nkrs-serumtumourmarkers
Title: "NKRS - Serum Tumour Markers"
Description: "The data item records the TNM S-categories as combination of levels for AFP, hCG, and LDH."
* $nkrs-serumtumourmarkers#0 "S0"
* $sct#313140003 "Serum tumor marker stage S1 (finding)"
* $sct#313141004 "Serum tumor marker stage S2 (finding)"
* $sct#313142006 "Serum tumor marker stage S3 (finding)"
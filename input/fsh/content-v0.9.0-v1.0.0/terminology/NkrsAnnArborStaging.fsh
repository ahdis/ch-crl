CodeSystem: NkrsAnnArborStaging
Id: nkrs-annarborstaging
Title: "NKRS - Ann Arbor Staging"
Description: "This data item is a last modification of the Ann Arbor classification for lymphoma. 
**Ann Arbor staging (Variable number: 4.18)** 
in \\'NATIONAL CANCER DATA DICTIONARY, V 1.1, Part A, BASIC VARIABLES for Adults, Adolescents, and Children (23.12.2019)\\'
([EN](https://www.nacr.ch/assets/files/uploads/a-datadictionary-basicvariables-v1.1.pdf), 
[DE](https://www.nkrs.ch/assets/files/uploads/a-datenstruktur-variablen-der-basisdaten-v1.1.pdf), 
[FR](https://www.onec.ch/assets/files/uploads/a-dict-des-donnees-variables-de-base-v1.1.pdf), 
[IT](https://www.snrt.ch/assets/files/uploads/a-dati-oncologici-variabili-di-base-v1.1.pdf))"
* ^caseSensitive = true
* ^valueSet = "http://fhir.ch/ig/ch-crl/ValueSet/nkrs-annarborstaging"
* ^content = #complete

* #I "Stage I"
* #I+A "Stage I+A"
* #I+B "Stage I+B"

* #IE "Stage IE"
* #IE+A "Stage IE+A"
* #IE+B "Stage IE+B"

* #I(E) "Stage I(E)" // neu
* #I(E)+A "Stage I(E)+A" // neu
* #I(E)+B "Stage I(E)+B" // neu

* #II "Stage II"
* #II+A "Stage II+A"
* #II+B "Stage II+B"

* #IIE "Stage IIE"
* #IIE+A "Stage IIE+A"
* #IIE+B "Stage IIE+B"

* #II(E) "Stage II(E)" // neu
* #II(E)+A "Stage II(E)+A" // neu
* #II(E)+B "Stage II(E)+B" // neu

* #III "Stage III"
* #III+A "Stage III+A"
* #III+B "Stage III+B"

* #IIIE "Stage IIIE"
* #IIIE+A "Stage IIIE+A"
* #IIIE+B "Stage IIIE+B"

* #III(E) "Stage III(E)" // neu
* #III(E)+A "Stage III(E)+A" // neu
* #III(E)+B "Stage III(E)+B" // neu

* #IIIS "Stage IIIS"
* #IIIS+A "Stage IIIS+A"
* #IIIS+B "Stage IIIS+B"

* #III(S) "Stage III(S)" // neu
* #III(S)+A "Stage III(S)+A" // neu
* #III(S)+B "Stage III(S)+B" // neu

* #IIIES "Stage IIIES"
* #IIIES+A "Stage IIIES+A"
* #IIIES+B "Stage IIIES+B"

* #III(E)S "Stage III(E)S" // neu
* #III(E)S+A "Stage III(E)S+A" // neu
* #III(E)S+B "Stage III(E)S+B" // neu

* #IIIE(S) "Stage IIIE(S)" // neu
* #IIIE(S)+A "Stage IIIE(S)+A" // neu
* #IIIE(S)+B "Stage IIIE(S)+B" // neu

* #III(E)(S) "Stage III(E)(S)" // neu
* #III(E)(S)+A "Stage III(E)(S)+A" // neu
* #III(E)(S)+B "Stage III(E)(S)+B" // neu

* #IV "Stage IV"
* #IV+A "Stage IV+A"
* #IV+B "Stage IV+B"



ValueSet: NkrsAnnArborStaging
Id: nkrs-annarborstaging
Title: "NKRS - Ann Arbor Staging"
Description: "This data item is a last modification of the Ann Arbor classification for lymphoma."
* include codes from system NkrsAnnArborStaging
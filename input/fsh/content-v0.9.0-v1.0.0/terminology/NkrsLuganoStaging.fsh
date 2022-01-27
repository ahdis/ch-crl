CodeSystem: NkrsLuganoStaging
Id: nkrs-luganostaging
Title: "NKRS - Lugano Staging"
Description: "The data item is a modification of the Ann Arbor classification for lymphoma. 
**Lugano staging (Variable number: 4.24)** 
in \\'NATIONAL CANCER DATA DICTIONARY, V 1.1, Part A, BASIC VARIABLES for Adults, Adolescents, and Children (23.12.2019)\\'
([EN](https://www.nacr.ch/assets/files/uploads/a-datadictionary-basicvariables-v1.1.pdf), 
[DE](https://www.nkrs.ch/assets/files/uploads/a-datenstruktur-variablen-der-basisdaten-v1.1.pdf), 
[FR](https://www.onec.ch/assets/files/uploads/a-dict-des-donnees-variables-de-base-v1.1.pdf), 
[IT](https://www.snrt.ch/assets/files/uploads/a-dati-oncologici-variabili-di-base-v1.1.pdf))"
* ^caseSensitive = true
* ^valueSet = "http://fhir.ch/ig/ch-crl/ValueSet/nkrs-luganostaging"
* ^content = #complete

* #I "Stage I" // Stage I
* #I+A "Stage I+A" // Stage IA
* #I+B "Stage I+B" // Stage IB
* #IE "Stage IE" // Stage IE
* #IE+A "Stage IE+A"
* #IE+B "Stage IE+B"
* #II "Stage II" // Stage II
* #II+A "Stage II+A" // Stage IIA
* #II+B "Stage II+B" // Stage IIB
* #IIE "Stage IIE" // Stage IIE
* #IIE+A "Stage IIE+A"
* #IIE+B "Stage IIE+B"
* #"II bulky" "Stage II bulky" // Stage II bulky 
* #"II bulky+A" "Stage II bulky+A" // Stage IIA bulky
* #"II bulky+B" "Stage II bulky+B" // Stage IIB bulky
* #III "Stage III" // Stage III
* #III+A "Stage III+A"
* #III+B "Stage III+B"
* #IIIS "Stage IIIS"
* #IIIS+A "Stage IIIS+A"
* #IIIS+B "Stage IIIS+B"
* #IV "Stage IV" // Stage IV
* #IV+A "Stage IV+A"
* #IV+B "Stage IV+B"

// 99 Unknown -> dataAbsentReason
// 88 NA // nicht explizit im PDF



ValueSet: NkrsLuganoStaging
Id: nkrs-luganostaging
Title: "NKRS - Lugano Staging"
Description: "The data item is a modification of the Ann Arbor classification for lymphoma."
* include codes from system NkrsLuganoStaging
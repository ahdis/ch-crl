CodeSystem: NkrsLuganoStaging
Id: nkrs-luganostaging
Title: "NKRS - Lugano Staging"
Description: "The data item is a modification of the Ann Arbor classification for lymphoma. 

**Lugano staging (Variable number: 4.24)** 
in \\'NATIONAL CANCER DATA DICTIONARY, V 1.2, Part A, BASIC VARIABLES for Adults, Adolescents, and Children\\'"
* ^caseSensitive = true
* ^valueSet = "http://fhir.ch/ig/ch-crl/ValueSet/nkrs-luganostaging"
* ^content = #complete

* #I "Stage I"
* #I+A "Stage I+A"
* #I+B "Stage I+B"
* #IE "Stage IE"
* #IE+A "Stage IE+A"
* #IE+B "Stage IE+B"
* #I(E) "Stage I(E)"
* #I(E)+A "Stage I(E)+A"
* #I(E)+B "Stage I(E)+B"
* #II "Stage II"
* #II+A "Stage II+A"
* #II+B "Stage II+B"
* #IIE "Stage IIE"
* #IIE+A "Stage IIE+A"
* #IIE+B "Stage IIE+B"
* #II(E) "Stage II(E)"
* #II(E)+A "Stage II(E)+A"
* #II(E)+B "Stage II(E)+B"
* #"II bulky" "Stage II bulky" 
* #"II bulky+A" "Stage II bulky+A"
* #"II bulky+B" "Stage II bulky+B"
* #III "Stage III"
* #III+A "Stage III+A"
* #III+B "Stage III+B"
* #IIIS "Stage IIIS"
* #IIIS+A "Stage IIIS+A"
* #IIIS+B "Stage IIIS+B"
* #III(S) "Stage III(S)"
* #III(S)+A "Stage III(S)+A"
* #III(S)+B "Stage III(S)+B"
* #IV "Stage IV"
* #IV+A "Stage IV+A"
* #IV+B "Stage IV+B"
* #LS "Stage LS"
* #LS+A "Stage LS+A"
* #LS+B "Stage LS+B"
* #AS "Stage AS"
* #AS+A "Stage AS+A"
* #AS+B "Stage AS+B"

// 99 Unknown -> dataAbsentReason


ValueSet: NkrsLuganoStaging
Id: nkrs-luganostaging
Title: "NKRS - Lugano Staging"
Description: "The data item is a modification of the Ann Arbor classification for lymphoma."
* include codes from system NkrsLuganoStaging
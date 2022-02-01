CodeSystem: NkrsFIGOStaging
Id: nkrs-figostaging
Title: "NKRS - FIGO Staging"
Description: "FIGO Staging of gynecologic tumours is based on clinical staging, careful clinical 
examination before therapy, and surgical exploration. 

**FIGO staging (Variable number: 4.21)** 
in \\'NATIONAL CANCER DATA DICTIONARY, V 1.1, Part A, BASIC VARIABLES for Adults, Adolescents, and Children (23.12.2019)\\'
([EN](https://www.nacr.ch/assets/files/uploads/a-datadictionary-basicvariables-v1.1.pdf), 
[DE](https://www.nkrs.ch/assets/files/uploads/a-datenstruktur-variablen-der-basisdaten-v1.1.pdf), 
[FR](https://www.onec.ch/assets/files/uploads/a-dict-des-donnees-variables-de-base-v1.1.pdf), 
[IT](https://www.snrt.ch/assets/files/uploads/a-dati-oncologici-variabili-di-base-v1.1.pdf))"
* ^caseSensitive = true
* ^valueSet = "http://fhir.ch/ig/ch-crl/ValueSet/nkrs-figostaging"
* ^content = #complete

* #I "Stage I"
* #IA "Stage IA"
* #IA1 "Stage IA1"
* #IA2 "Stage IA2"

* #IB "Stage IB"
* #IB1 "Stage IB1"
* #IB2 "Stage IB2"

* #IC "Stage IC"
* #IC1 "Stage IC1"
* #IC2 "Stage IC2"
* #IC3 "Stage IC3"

* #II "Stage II"
* #IIA "Stage IIA"
* #IIA1 "Stage IIA1"
* #IIA2 "Stage IIA2"

* #IIB "Stage IIB"

* #IIC "Stage IIC"

* #III "Stage III"
* #IIIA "Stage IIIA"
* #IIIA1i "Stage IIIA1i"
* #IIIA1ii "Stage IIIA1ii"
* #IIIA2 "Stage IIIA2"

* #IIIB "Stage IIIB"

* #IIIC "Stage IIIC"
* #IIIC1 "Stage IIIC1"
* #IIIC2 "Stage IIIC2"

* #IV "Stage IV"
* #IVA "Stage IVA"
* #IVB "Stage IVB"



ValueSet: NkrsFIGOStaging
Id: nkrs-figostaging
Title: "NKRS - FIGO Staging"
Description: "FIGO Staging of gynecologic tumours is based on clinical staging, careful clinical 
examination before therapy, and surgical exploration."
* include codes from system NkrsFIGOStaging
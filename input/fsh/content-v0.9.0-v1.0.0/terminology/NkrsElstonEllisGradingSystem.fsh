CodeSystem: NkrsElstonEllisGradingSystem
Id: nkrs-elstonellisgradingsystem
Title: "NKRS - Elston/Ellis Grading System"
Description: "This data item records the histopathological grade for breast cancer. It is also called the Nottingham 
Histological Score. The grade for an individual tumour is derived from an assessment of three morphological features 
(Tubule formation, Nuclear pleomorphism, Mitotic count), each of which is scored 1-3. 
**Elston/Ellis grading system (Variable number: 4.35)** 
in \\'NATIONAL CANCER DATA DICTIONARY, V 1.1, Part A, BASIC VARIABLES for Adults, Adolescents, and Children (23.12.2019)\\'
([EN](https://www.nacr.ch/assets/files/uploads/a-datadictionary-basicvariables-v1.1.pdf), 
[DE](https://www.nkrs.ch/assets/files/uploads/a-datenstruktur-variablen-der-basisdaten-v1.1.pdf), 
[FR](https://www.onec.ch/assets/files/uploads/a-dict-des-donnees-variables-de-base-v1.1.pdf), 
[IT](https://www.snrt.ch/assets/files/uploads/a-dati-oncologici-variabili-di-base-v1.1.pdf))"
* ^caseSensitive = true
* ^valueSet = "http://fhir.ch/ig/ch-crl/ValueSet/nkrs-elstonellisgradingsystem"
* ^content = #complete

* #1 "grade I" "well-differentiated"
* #2 "grade II" "moderately differentiated"
* #3 "grade III" "poorly differentiated"


ValueSet: NkrsElstonEllisGradingSystem
Id: nkrs-elstonellisgradingsystem
Title: "NKRS - Elston/Ellis Grading System"
Description: "This data item records the histopathological grade for breast cancer. It is also called the Nottingham 
Histological Score. The grade for an individual tumour is derived from an assessment of three morphological features 
(Tubule formation, Nuclear pleomorphism, Mitotic count), each of which is scored 1-3."
* include codes from system NkrsElstonEllisGradingSystem
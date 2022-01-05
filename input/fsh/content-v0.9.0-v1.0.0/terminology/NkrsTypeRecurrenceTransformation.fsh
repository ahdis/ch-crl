CodeSystem: NkrsTypeRecurrenceTransformation
Id: nkrs-typerecurrencetransformation
Title: "NKRS - Type of Recurrence/Transformation"
Description: "The data item records the type of first recurrence of the disease or the occurrence of a transformation. 
**Type of recurrence(s)/transformation(s) (Variable number: 8.1)** 
in \\'NATIONAL CANCER DATA DICTIONARY, V 1.1, Part A, BASIC VARIABLES for Adults, Adolescents, and Children (23.12.2019)\\'
([EN](https://www.nacr.ch/assets/files/uploads/a-datadictionary-basicvariables-v1.1.pdf), 
[DE](https://www.nkrs.ch/assets/files/uploads/a-datenstruktur-variablen-der-basisdaten-v1.1.pdf), 
[FR](https://www.onec.ch/assets/files/uploads/a-dict-des-donnees-variables-de-base-v1.1.pdf), 
[IT](https://www.snrt.ch/assets/files/uploads/a-dati-oncologici-variabili-di-base-v1.1.pdf))"
* ^caseSensitive = true
* ^valueSet = "http://fhir.ch/ig/ch-crl/ValueSet/nkrs-typerecurrencetransformation"
* ^content = #complete

* #1 "Progression" "Locoregional new findings without disease free intermission. 
For example: the tumour that is still present starts to progress after a period of stabilisation."
* #2 "Transformation" "The development of one ICD-O M term into another (for example, the change of a 
haematopoetic or lymphoid neoplasm from chronic to acute phase). In order to decide on haematological 
transformation event, adherence to the ENCR recommendation and Haemacare guideline, cited below, is mandatory."
* #3 "Metastasis" "New finding at a site distant to the primary tumour, i.e. metachronous metastasis. 
Either with or without disease free intermission."
* #4 "Relapse" "Locoregional new findings after a period of documented disease-free intermission or 
remission without detectable tumour."

ValueSet: NkrsTypeRecurrenceTransformation
Id: nkrs-typerecurrencetransformation
Title: "NKRS - Type of Recurrence/Transformation"
Description: "The data item records the type of first recurrence of the disease or the occurrence of a transformation."
* include codes from system NkrsTypeRecurrenceTransformation
CodeSystem: NkrsIcdO3HistologicalGrade
Id: nkrs-icdo3histologicalgrade
Title: "NKRS - ICD-O-3 Histological Grade"
Description: "The data item describes the neoplasm’s resemblance to normal (parent) tissue according to ICD-O. 
**ICD-O Histological Grade (Variable number: 3.7)** 
in \\'NATIONAL CANCER DATA DICTIONARY, V 1.1, Part A, BASIC VARIABLES for Adults, Adolescents, and Children (23.12.2019)\\'
([EN](https://www.nacr.ch/assets/files/uploads/a-datadictionary-basicvariables-v1.1.pdf), 
[DE](https://www.nkrs.ch/assets/files/uploads/a-datenstruktur-variablen-der-basisdaten-v1.1.pdf), 
[FR](https://www.onec.ch/assets/files/uploads/a-dict-des-donnees-variables-de-base-v1.1.pdf), 
[IT](https://www.snrt.ch/assets/files/uploads/a-dati-oncologici-variabili-di-base-v1.1.pdf))"
* ^caseSensitive = true
* ^valueSet = "http://fhir.ch/ig/ch-crl/ValueSet/nkrs-icdo3histologicalgrade"
* ^content = #complete
* #1 "Grade I" "Well differentiated; Differentiated, NOS; Low grade"
* #2 "Grade II" "Moderately (well) differentiated; Intermediate differentiation."
* #3 "Grade III" "Poorly differentiated; Dedifferentiated; High grade."
* #4 "Grade IV" "Undifferentiated; Anaplastic."
* #5 "T-cell" "T-cell; T-precursor."
* #6 "B-cell" "B-cell; Pre-B; B-precursor."
* #7 "Null cell" "Null cell; Non-T-non-B."
* #8 "NK cell" "NK cell; Natural killer cell."
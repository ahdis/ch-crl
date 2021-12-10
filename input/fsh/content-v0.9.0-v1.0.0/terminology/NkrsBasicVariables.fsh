CodeSystem: NkrsBasicVariables
Id: nkrs-basicvariables
Title: "NKRS - Basic Variables"
Description: "NKRS codes of data items for which there is no international code (e.g. LOINC or SNOMED CT) describing the item. 
Based on \\'NATIONAL CANCER DATA DICTIONARY, V 1.1, Part A, BASIC VARIABLES for Adults, Adolescents, and Children (23.12.2019)\\'
([EN](https://www.nacr.ch/assets/files/uploads/a-datadictionary-basicvariables-v1.1.pdf), 
[DE](https://www.nkrs.ch/assets/files/uploads/a-datenstruktur-variablen-der-basisdaten-v1.1.pdf), 
[FR](https://www.onec.ch/assets/files/uploads/a-dict-des-donnees-variables-de-base-v1.1.pdf), 
[IT](https://www.snrt.ch/assets/files/uploads/a-dati-oncologici-variabili-di-base-v1.1.pdf))"
* ^caseSensitive = false
* ^content = #complete

// differentiation clinical vs. pathological
* #4.39 "Clinical tumour size"
* #4.40 "Pathological tumour size"

// differentitation invasive vs. in-situ
* #6.1 "Residual invasive tumour"
* #6.2 "Residual in-situ tumour"
* #6.3 "Resection margin invasive tumour"
* #6.4 "Resection margin in-situ tumour" 
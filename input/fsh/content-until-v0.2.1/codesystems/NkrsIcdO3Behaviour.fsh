CodeSystem: NkrsIcdO3Behaviour
Id: nkrs-icdo3behaviour
Title: "NKRS - ICD-O-3 Behaviour"
Description: "This data item records the behaviour of the neoplasm at time of diagnosis according to ICD-O. 

**ICD-O Behaviour (Variable number: 3.6.1)** 
in \\'NATIONAL CANCER DATA DICTIONARY, V 1.1, Part A, BASIC VARIABLES for Adults, Adolescents, and Children (23.12.2019)\\'
([EN](https://www.nacr.ch/assets/files/uploads/a-datadictionary-basicvariables-v1.1.pdf), 
[DE](https://www.nkrs.ch/assets/files/uploads/a-datenstruktur-variablen-der-basisdaten-v1.1.pdf), 
[FR](https://www.onec.ch/assets/files/uploads/a-dict-des-donnees-variables-de-base-v1.1.pdf), 
[IT](https://www.snrt.ch/assets/files/uploads/a-dati-oncologici-variabili-di-base-v1.1.pdf))"
* ^caseSensitive = true
* ^valueSet = "http://fhir.ch/ig/ch-crl/ValueSet/nkrs-icdo3behaviour"
* ^content = #complete
* #0 "Benign" "Benign tumours do not metastasize or locally invade tissues."
* #1 "Borderline" "Uncertain whether benign or malignant. Low, borderline, or uncertain malignant potential."
* #2 "In situ" "Carcinoma in situ; intraepithelial; non-infiltrating; non-invasive."
* #3 "Malignant" "Invasive behaviour."
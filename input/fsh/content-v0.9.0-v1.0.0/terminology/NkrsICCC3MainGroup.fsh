CodeSystem: NkrsICCC3MainGroup
Id: nkrs-iccc3maingroup
Title: "NKRS - ICCC-3 main group"
Description: "This data item records the main diagnostic group according to the third revision (2005) 
of the 1996 International Classification of Childhood Cancer (ICCC-3). 
**ICCC-3 main group (Variable number: 3.9.1)** 
in \\'NATIONAL CANCER DATA DICTIONARY, V 1.1, Part A, BASIC VARIABLES for Adults, Adolescents, and Children (23.12.2019)\\'
([EN](https://www.nacr.ch/assets/files/uploads/a-datadictionary-basicvariables-v1.1.pdf), 
[DE](https://www.nkrs.ch/assets/files/uploads/a-datenstruktur-variablen-der-basisdaten-v1.1.pdf), 
[FR](https://www.onec.ch/assets/files/uploads/a-dict-des-donnees-variables-de-base-v1.1.pdf), 
[IT](https://www.snrt.ch/assets/files/uploads/a-dati-oncologici-variabili-di-base-v1.1.pdf))"
* ^caseSensitive = true
* ^valueSet = "http://fhir.ch/ig/ch-crl/ValueSet/nkrs-iccc3maingroup"
* ^content = #complete

* #I "Leukaemias, myeloproliferative diseases, and myelodysplastic diseases"
* #II "Lymphomas and reticuloendothelial neoplasms"
* #III "CNS and miscellaneous intracranial and intraspinal neoplasms"
* #IV "Neuroblastoma and other peripheral nervous cell tumours"
* #V "Retinoblastoma"
* #VI "Renal tumours"
* #VII "Hepatic tumours"
* #VIII "Malignant bone tumours"
* #IX "Soft tissue and other extraosseous sarcomas"
* #X "Germ cell tumours, trophoblastic tumours, and neoplasms of gonads"
* #XI "Other malignant epithelial neoplasms and malignant melanomas"
* #XII "Other and unspecified malignant neoplasms"
* #14 "Langerhans cell histiocytosis"
* #15 "Neoplasms of uncertain behaviour or in situ"

// 17.12.2021 MS, MZ:
// "99 - Not Classified by ICCC" nicht abbilden, auch nicht als dataAbsentReason



ValueSet: NkrsICCC3MainGroup
Id: nkrs-iccc3maingroup
Title: "NKRS - ICCC-3 main group"
Description: "This data item records the main diagnostic group according to the third revision (2005) 
of the 1996 International Classification of Childhood Cancer (ICCC-3)."
* include codes from system NkrsICCC3MainGroup
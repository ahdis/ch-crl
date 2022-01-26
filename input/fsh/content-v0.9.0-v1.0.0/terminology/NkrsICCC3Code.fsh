CodeSystem: NkrsICCC3Code
Id: nkrs-iccc3code
Title: "NKRS - ICCC-3 Code"
Description: "This data item records detailed division of the diagnostic group according to the third revision 
of the 1996 International Classification of Childhood Cancer (ICCC-3). 
**ICCC-3 code (Variable number: 3.9.2)** 
in \\'NATIONAL CANCER DATA DICTIONARY, V 1.1, Part A, BASIC VARIABLES for Adults, Adolescents, and Children (23.12.2019)\\'
([EN](https://www.nacr.ch/assets/files/uploads/a-datadictionary-basicvariables-v1.1.pdf), 
[DE](https://www.nkrs.ch/assets/files/uploads/a-datenstruktur-variablen-der-basisdaten-v1.1.pdf), 
[FR](https://www.onec.ch/assets/files/uploads/a-dict-des-donnees-variables-de-base-v1.1.pdf), 
[IT](https://www.snrt.ch/assets/files/uploads/a-dati-oncologici-variabili-di-base-v1.1.pdf))"
* ^caseSensitive = true
* ^valueSet = "http://fhir.ch/ig/ch-crl/ValueSet/nkrs-iccc3code"
* ^content = #complete

* #Ia "Lymphoid leukaemias"
* #Ib "Acute myeloid leukemias"
* #Ic "Chronic myeloproliferative diseases"
* #Id "Myelodysplastic syndrome and other myeloproliferative diseases"
* #Ie "Unspecified and other specified leukemias"
* #IIa "Hodgkin lymphomas"
* #IIb "Non-Hodgkin lymphomas (except Burkitt lymphoma)"
* #IIc "Burkitt lymphoma"
* #IId "Miscellaneous lymphoreticular neoplasms"
* #IIe "Unspecified lymphomas"
* #IIIa "Ependymomas and choroid plexus tumor"
* #IIIb "Astrocytomas"
* #IIIc "Intracranial and intraspinal embryonal tumors"
* #IIId "Other gliomas"
* #IIIe "Other specified intracranial and intraspinal neoplasms"
* #IIIf "Unspecified intracranial and intraspinal neoplasms"
* #IVa "Neuroblastoma and ganglioneuroblastoma"
* #IVb "Other peripheral nervous cell tumors"
* #V "Retinoblastoma"
* #VIa "Nephroblastoma and other nonepithelial renal tumors"
* #VIb "Renal carcinomas"
* #VIc "Unspecified malignant renal tumors"
* #VIIa "Hepatoblastoma"
* #VIIb "Hepatic carcinomas"
* #VIIc "Unspecified malignant hepatic tumors"
* #VIIIa "Osteosarcomas"
* #VIIIb "Chondrosarcomas"
* #VIIIc "Ewing tumor and related sarcomas of bone"
* #VIIId "Other specified malignant bone tumors"
* #VIIIe "Unspecified malignant bone tumors"
* #IXa "Rhabdomyosarcomas"
* #IXb "Fibrosarcomas, peripheral nerve sheath tumors, and other fibrous neoplasms"
* #IXc "Kaposi sarcoma"
* #IXd "Other specified soft tissue sarcomas"
* #IXe "Unspecified soft tissue sarcomas"
* #Xa "Intracranial and intraspinal germ cell tumors"
* #Xb "Malignant extracranial and extragonadal germ cell tumors"
* #Xc "Malignant gonadal germ cell tumors"
* #Xd "Gonadal carcinomas"
* #Xe "Other and unspecified malignant gonadal tumors"
* #XIa "Adrenocortical carcinomas"
* #XIb "Thyroid carcinomas"
* #XIc "Nasopharyngeal carcinomas"
* #XId "Malignant melanomas"
* #XIe "Skin carcinomas"
* #XIf "Other and unspecified carcinomas"
* #XIIa "Other specified malignant tumors"
* #XIIb "Other unspecified malignant tumours"
* #140 "Langerhans cell histiocytosis"
* #150 "Neoplasms of uncertain behaviour or in situ"

// 17.12.2021 MS, MZ:
// "999 - Not Classified by ICCC" nicht abbilden, auch nicht als dataAbsentReason



ValueSet: NkrsICCC3Code
Id: nkrs-iccc3code
Title: "NKRS - ICCC-3 Code"
Description: "This data item records detailed division of the diagnostic group according to the third revision 
of the 1996 International Classification of Childhood Cancer (ICCC-3)."
* include codes from system NkrsICCC3Code
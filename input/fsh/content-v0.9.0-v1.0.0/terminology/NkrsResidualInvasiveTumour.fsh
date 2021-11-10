CodeSystem: NkrsResidualInvasiveTumour
Id: nkrs-residualinvasivetumour
Title: "NKRS - Residual Invasive Tumour"
Description: "This data items records the invasive tumour status after treatment. 
The R classification can be used following surgical treatment alone, after radiotherapy alone, 
after chemotherapy alone or following multimodal therapy. 
The status after treatment takes distant metastases into account. 
**Residual invasive tumour (Variable number: 6.1)** 
in \\'NATIONAL CANCER DATA DICTIONARY, V 1.1, Part A, BASIC VARIABLES for Adults, Adolescents, and Children (23.12.2019)\\'
([EN](https://www.nacr.ch/assets/files/uploads/a-datadictionary-basicvariables-v1.1.pdf), 
[DE](https://www.nkrs.ch/assets/files/uploads/a-datenstruktur-variablen-der-basisdaten-v1.1.pdf), 
[FR](https://www.onec.ch/assets/files/uploads/a-dict-des-donnees-variables-de-base-v1.1.pdf), 
[IT](https://www.snrt.ch/assets/files/uploads/a-dati-oncologici-variabili-di-base-v1.1.pdf))"
* ^caseSensitive = true
* ^valueSet = "http://fhir.ch/ig/ch-crl/ValueSet/nkrs-residualinvasivetumour"
* ^content = #complete

* #0 "R0" "No residual tumour detectable by any diagnostic means. In M1 cases, the distant metastasis as well as the primary tumour must be removed completely."
* #1 "R1" "Microscopic residual tumour."
* #2 "R2" "Macroscopic residual tumour."
* #8 "RX" "Presence of residual tumour cannot be assessed."


ValueSet: NkrsResidualInvasiveTumour
Id: nkrs-residualinvasivetumour
Title: "NKRS - Residual Invasive Tumour"
Description: "This data items records the invasive tumour status after treatment. 
The R classification can be used following surgical treatment alone, after radiotherapy alone, 
after chemotherapy alone or following multimodal therapy. 
The status after treatment takes distant metastases into account."
* include codes from system NkrsResidualInvasiveTumour
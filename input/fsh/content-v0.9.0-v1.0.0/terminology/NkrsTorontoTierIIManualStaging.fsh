CodeSystem: NkrsTorontoTierIIManualStaging
Id: nkrs-torontotierIImanualstaging
Title: "NKRS - Toronto Tier II (Manual) Staging"
Description: "The Toronto Paediatric Cancer Stage Guidelines recommend the malignancy-specific staging system most suitable 
for use by population registries for 16 of the most common childhood malignancies. The Guidelines include a two-tiered 
approach that provides less detailed criteria for registries with limited resources and/or limited data access (Tier 1) 
based on collapsing of the more detailed criteria (Tier 2). 

**Toronto Tier II (manual) staging (Variable number: 4.33.2)** 
in \\'NATIONAL CANCER DATA DICTIONARY, V 1.1, Part A, BASIC VARIABLES for Adults, Adolescents, and Children (23.12.2019)\\'
([EN](https://www.nacr.ch/assets/files/uploads/a-datadictionary-basicvariables-v1.1.pdf), 
[DE](https://www.nkrs.ch/assets/files/uploads/a-datenstruktur-variablen-der-basisdaten-v1.1.pdf), 
[FR](https://www.onec.ch/assets/files/uploads/a-dict-des-donnees-variables-de-base-v1.1.pdf), 
[IT](https://www.snrt.ch/assets/files/uploads/a-dati-oncologici-variabili-di-base-v1.1.pdf))"
* ^caseSensitive = true
* ^valueSet = "http://fhir.ch/ig/ch-crl/ValueSet/nkrs-torontotierIImanualstaging"
* ^content = #complete

* #M0 "M0" "No visible disease on imaging (MRI brain and spine) beyond primary site of disease and no tumour cells in the cerebrospinal fluid (CSF)"
* #M1 "M1" "Tumour cells in the CSF"
* #M2 "M2" "Visible metastasis in brain"
* #M3 "M3" "Visible metastasis in spine or visible metastasis in cervicomedullary (junction)"
* #M4 "M4" "Metastasis outside of the central nervous system"
* #Localised "Localised" "Used for Ewing’s sarcoma or osteosarcoma : tumour confined to the area of origin including regional lymph nodes Although more detailed staging systems exist their clinical and prognostic value is limited, multi-tiered staging systems were not deemed appropriate" 
* #Metastatic "Metastatic" "Used for Ewing’s sarcoma or osteosarcoma with distant metastases present at diagnosis. Although more detailed staging systems exist their clinical and prognostic value is limited, multi-tiered staging systems were not deemed appropriate"

// Unknown	Not stated / Not assessed. -> dataAbsentReason



ValueSet: NkrsTorontoTierIIManualStaging
Id: nkrs-torontotierIImanualstaging
Title: "NKRS - Toronto Tier II (Manual) Staging"
Description: "The Toronto Paediatric Cancer Stage Guidelines recommend the malignancy-specific staging system most suitable 
for use by population registries for 16 of the most common childhood malignancies. The Guidelines include a two-tiered 
approach that provides less detailed criteria for registries with limited resources and/or limited data access (Tier 1) 
based on collapsing of the more detailed criteria (Tier 2)."
* include codes from system NkrsTorontoTierIIManualStaging
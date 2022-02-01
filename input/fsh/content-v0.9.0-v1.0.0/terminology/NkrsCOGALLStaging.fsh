CodeSystem: NkrsCOGALLStaging
Id: nkrs-cogallstaging
Title: "NKRS - COG ALL Staging"
Description: "COG ALL staging (for childhood B- precursor acute lymphoblastic leukemia, B-ALL) allows a uniform assessment 
of the extent of CNS involvement based on presence of blasts in the diagnostic cerebrospinal fluid (CSF). 

**COG ALL staging (Variable number: 4.20)** 
in \\'NATIONAL CANCER DATA DICTIONARY, V 1.1, Part A, BASIC VARIABLES for Adults, Adolescents, and Children (23.12.2019)\\'
([EN](https://www.nacr.ch/assets/files/uploads/a-datadictionary-basicvariables-v1.1.pdf), 
[DE](https://www.nkrs.ch/assets/files/uploads/a-datenstruktur-variablen-der-basisdaten-v1.1.pdf), 
[FR](https://www.onec.ch/assets/files/uploads/a-dict-des-donnees-variables-de-base-v1.1.pdf), 
[IT](https://www.snrt.ch/assets/files/uploads/a-dati-oncologici-variabili-di-base-v1.1.pdf))"
* ^caseSensitive = true
* ^valueSet = "http://fhir.ch/ig/ch-crl/ValueSet/nkrs-cogallstaging"
* ^content = #complete

* #CNS1 "CNS1" "No blasts in the CSF, regardless of WBC and RBC."
* #CNS2 "CNS2" "CNS2, not otherwise specified"
* #CNS2a "CNS2a" "<5 WBC/µL + blasts + <10 RBC/µL."
* #CNS2b "CNS2b" "<5 WBC/µL + blasts + ≥10 RBC/µL"
* #CNS2c "CNS2c" "≥5 WBC/µL + blasts + ≥10 RBC/µL, excess WBC proportional to RBC"
* #CNS3 "CNS3" "CNS3, not otherwise specified"
* #CNS3a "CNS3a" "≥5 WBC/µL + blasts + <10 RBC/µL"
* #CNS3b "CNS3b" "≥5 WBC/µL + blasts + ≥10 RBC/µL, excess WBC not proportional to RBC"
* #CNS3c "CNS3c" "Clinical signs of CNS involvement."



ValueSet: NkrsCOGALLStaging
Id: nkrs-cogallstaging
Title: "NKRS - COG ALL Staging"
Description: "COG ALL staging (for childhood B- precursor acute lymphoblastic leukemia, B-ALL) allows a uniform assessment 
of the extent of CNS involvement based on presence of blasts in the diagnostic cerebrospinal fluid (CSF)."
* include codes from system NkrsCOGALLStaging
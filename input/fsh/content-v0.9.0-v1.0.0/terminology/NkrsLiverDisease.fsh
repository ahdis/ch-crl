CodeSystem: NkrsLiverDisease
Id: nkrs-liverdisease
Title: "NKRS - Liver Disease"
Description: "The data item records the presence and severity of liver disease at the time of diagnosis 
as pre-existing medical condition. Scores weight the estimated effect on patient survival. 

**Liver Disease (Variable number: 10.2)** 
in \\'NATIONAL CANCER DATA DICTIONARY, V 1.1, Part B1, SUPPLEMENTARY VARIABLES for Adults (15.10.2019)\\'
([EN](https://www.nacr.ch/assets/files/uploads/b1-datadictionary-supplementaryvariables-adults-v1.1.pdf), 
[DE](https://www.nkrs.ch/assets/files/uploads/variablen-zusatzdaten-kinderjugendliche-v1.1.pdf), 
[FR](https://www.onec.ch/assets/files/uploads/b1-dict-des-donnees-variables-suppl-adultes-v1.1.pdf), 
[IT](https://www.snrt.ch/assets/files/uploads/b1-variabili-supplementari-adulti-v1.1.pdf))"
* ^caseSensitive = true
* ^valueSet = "http://fhir.ch/ig/ch-crl/ValueSet/nkrs-liverdisease"
* ^content = #complete

* #0 "No (score 0)"
* #1 "Mild (score 1)" "Inclusive cirrhosis without portal hypertension. 
Child-Pugh-Score A; CLIF-SOFA Score 0. 
(ICD-10:, K70.0–K70.3, K70.9, K71.3–K71.5, K71.7, K73, K74, K76.0, K76.2–K76.4, K76.8, K76.9, Z94.4)"
* #2 "Moderate to severe (score 3)" 
"Moderate liver disease: 
cirrhosis with portal hypertension, but without bleeding OR
Child-Pugh-Score B OR
CLIF-SOFA Score 1-2.
Severe liver disease:
Child-Pugh-Score C OR
CLIF-SOFA Score 3-4, OR
coagulation disorder AND portal hypertension.
(ICD-10: I85.0, I85.9, I86.4, I98.2, K70.4, K71.1, K72.1, K72.9, K76.5–K76.7)"



ValueSet: NkrsLiverDisease
Id: nkrs-liverdisease
Title: "NKRS - Liver Disease"
Description: "The data item records the presence and severity of liver disease at the time of diagnosis 
as pre-existing medical condition. Scores weight the estimated effect on patient survival."
* include codes from system NkrsLiverDisease
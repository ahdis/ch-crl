CodeSystem: NkrsDiabetesMellitus
Id: nkrs-diabetesmellitus
Title: "NKRS - Diabetes Mellitus"
Description: "The data item records the presence and severity of diabetes mellitus at the time of diagnosis 
as pre-existing medical condition. Scores weight the estimated effect on patient survival. 

**Diabetes mellitus (Variable number: 10.1)** 
in \\'NATIONAL CANCER DATA DICTIONARY, V 1.1, Part B1, SUPPLEMENTARY VARIABLES for Adults (15.10.2019)\\'
([EN](https://www.nacr.ch/assets/files/uploads/b1-datadictionary-supplementaryvariables-adults-v1.1.pdf), 
[DE](https://www.nkrs.ch/assets/files/uploads/variablen-zusatzdaten-kinderjugendliche-v1.1.pdf), 
[FR](https://www.onec.ch/assets/files/uploads/b1-dict-des-donnees-variables-suppl-adultes-v1.1.pdf), 
[IT](https://www.snrt.ch/assets/files/uploads/b1-variabili-supplementari-adulti-v1.1.pdf))"
* ^caseSensitive = true
* ^valueSet = "http://fhir.ch/ig/ch-crl/ValueSet/nkrs-diabetesmellitus"
* ^content = #complete

* #0 "No (score 0)" "Inclusive: 
Diabetes during pregnancy alone (ICD-10: O24.0-9) / 
Diabetes treated with diet alone / 
Other endocrines like hypopituitarism, adrenal insufficiency, and recurrent acidosis (ICD-10: E20-E35)"
* #1 "Uncomplicated (score 1)" "Inclusive all patients 
diagnosed with diabetes AND 
treated with insulin or oral hypoglycaemic, but not diet alone 
(ICD-10: E10.0, E10.1, E10.6, E10.8, E10.9, E11.0, E11.1, E11.6, E11.8, E11.9, E12.0, E12.1, E12.6, E12.8, E12.9, E13.0, E13.1, E13.6, E13.8, E13.9, E14.0, E14.1, E14.6, E14.8, E14.9)"
* #2 "End-organ damage (score 2)" "End organ damage can include retinopathy AND/OR neuropathy AND/OR nephropathy attributable to diabetes 
(ICD-10: E10.2–E10.5, E10.7, E11.2–E11.5, E11.7, E12.2–E12.5, E12.7, E13.2–E13.5, E13.7, E14.2–E14.5, E14.7)"



ValueSet: NkrsDiabetesMellitus
Id: nkrs-diabetesmellitus
Title: "NKRS - Diabetes Mellitus"
Description: "The data item records the presence and severity of diabetes mellitus at the time of diagnosis 
as pre-existing medical condition. Scores weight the estimated effect on patient survival."
* include codes from system NkrsDiabetesMellitus
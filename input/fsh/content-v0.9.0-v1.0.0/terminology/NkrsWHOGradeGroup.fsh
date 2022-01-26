CodeSystem: NkrsWHOGradeGroup
Id: nkrs-whogradegroup
Title: "NKRS - WHO Grade Group"
Description: "A five-grade group system based on the grading categories from Gleason score 2 to 10. 
**WHO grade group (Variable number: 5.2.7)** 
in \\'NATIONAL CANCER DATA DICTIONARY, V 1.1, Part A, BASIC VARIABLES for Adults, Adolescents, and Children (23.12.2019)\\'
([EN](https://www.nacr.ch/assets/files/uploads/a-datadictionary-basicvariables-v1.1.pdf), 
[DE](https://www.nkrs.ch/assets/files/uploads/a-datenstruktur-variablen-der-basisdaten-v1.1.pdf), 
[FR](https://www.onec.ch/assets/files/uploads/a-dict-des-donnees-variables-de-base-v1.1.pdf), 
[IT](https://www.snrt.ch/assets/files/uploads/a-dati-oncologici-variabili-di-base-v1.1.pdf))"
* ^caseSensitive = true
* ^valueSet = "http://fhir.ch/ig/ch-crl/ValueSet/nkrs-whogradegroup"
* ^content = #complete

* #1 "Grade group 1" "Gleason score ≤ 6 (≤ 3+3). 
Only individual discrete well-formed glands."
* #2 "Grade group 2" "Gleason score 7 (3 + 4). 
Predominantly well-formed glands with lesser component of poorly formed/fused/cribriform glands."
* #3 "Grade group 3" "Gleason score 7 (4 + 3). 
Predominantly poorly formed/fused/cribriform glands with lesser component of well-formed glands."
* #4 "Grade group 4" "Gleason score 8 (4 + 4 or 3 + 5 or 5 + 3).
Only poorly formed/fused/cribriform glands or
predominantly well-formed glands and lesser component lacking glands or
predominantly lacking glands and lesser component of well-formed glands."
* #5 "Grade group 5" "Gleason score 9-10. 
Lack of gland formation (or with necrosis) with or without poorly formed/fused/cribriform glands."


ValueSet: NkrsWHOGradeGroup
Id: nkrs-whogradegroup
Title: "NKRS - WHO Grade Group"
Description: "A five-grade group system based on the grading categories from Gleason score 2 to 10."
* include codes from system NkrsWHOGradeGroup
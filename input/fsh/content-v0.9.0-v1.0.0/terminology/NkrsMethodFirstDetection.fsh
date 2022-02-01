CodeSystem: NkrsMethodFirstDetection
Id: nkrs-methodfirstdetection
Title: "NKRS - Method of First Detection"
Description: "The data item records the method or circumstance by which the case came to medical attention and the cancer was first diagnosed. 

**Method of first detection (Variable number: 2.6)** 
in \\'NATIONAL CANCER DATA DICTIONARY, V 1.1, Part A, BASIC VARIABLES for Adults, Adolescents, and Children (23.12.2019)\\'
([EN](https://www.nacr.ch/assets/files/uploads/a-datadictionary-basicvariables-v1.1.pdf), 
[DE](https://www.nkrs.ch/assets/files/uploads/a-datenstruktur-variablen-der-basisdaten-v1.1.pdf), 
[FR](https://www.onec.ch/assets/files/uploads/a-dict-des-donnees-variables-de-base-v1.1.pdf), 
[IT](https://www.snrt.ch/assets/files/uploads/a-dati-oncologici-variabili-di-base-v1.1.pdf))"
* ^caseSensitive = true
* ^valueSet = "http://fhir.ch/ig/ch-crl/ValueSet/nkrs-methodfirstdetection"
* ^content = #complete

* #1 "Clinical symptoms" "Clinical symptoms related to the tumour."
* #2 "Incidental discovery" "Diagnosis on the occasion of surveillance/treatment for another disease, incl. tumour aftercare for a previous primary tumour, routine medical consultation/routine check-up, surgery."
* #3 "Organised screening program" "Screening programmes organized at national or regional level, with an explicit policy, that includes several essential elements from target population to treatment. Screening refers to a targeted examination/search for an asymptomatic tumour."
* #4 "Opportunistic screening" "Screening outside an organized or population-based screening programme, as a result of, for example, a recommendation made during a routine medical consultation/check-up for the woman, on the basis of a possibly increased risk for developing cervical cancer or by self-referral. Screening refers to a targeted examination/search for an asymptomatic tumour."
* #5 "Self-examination" "Use this code if it is known that the chain of events leading to a diagnosis of cancer was a self-exam by the patient (e.g. a lump in the breasts, or a skin lesion)."
* #6 "Death with autopsy" "Cancer diagnosed after death."
* #7 "Death without autopsy" "Cancer diagnosed after death."
* #8 "Other"


ValueSet: NkrsMethodFirstDetection
Id: nkrs-methodfirstdetection
Title: "NKRS - Method of First Detection"
Description: "The data item records the method or circumstance by which the case came to medical attention and the cancer was first diagnosed."
* include codes from system NkrsMethodFirstDetection
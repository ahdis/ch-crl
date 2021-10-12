CodeSystem: NkrsIcdO3Behaviour
Id: nkrs-icdo3behaviour
Title: "NKRS - ICD-O-3 Behaviour"
Description: "This data item records the behaviour of the neoplasm at time of diagnosis according to ICD-O.           **ICD-O Behaviour (Variable number: 3.6.1)** in          \\'NATIONAL CANCER DATA DICTIONARY, V 1.1, Part A, BASIC VARIABLES for Adults, Adolescents, and Children\\' see           [Nationale Krebsregistrierungsstelle](https://www.nkrs.ch) > Partner im Gesundheitswesen >         [Information, Grundlagen und Datenstruktur zum KRG](https://www.nicer.org/assets/files/krebsregistrierung/datadictionary_e-g-f-i.zip)."
* ^caseSensitive = true
* ^valueSet = "http://fhir.ch/ig/ch-crl/ValueSet/nkrs-icdo3behaviour"
* ^content = #complete
* #0 "Benign" "Benign tumours do not metastasize or locally invade tissues."
* #1 "Borderline" "Uncertain whether benign or malignant. Low, borderline, or uncertain malignant potential."
* #2 "In situ" "Carcinoma in situ; intraepithelial; non-infiltrating; non-invasive."
* #3 "Malignant" "Invasive behaviour."
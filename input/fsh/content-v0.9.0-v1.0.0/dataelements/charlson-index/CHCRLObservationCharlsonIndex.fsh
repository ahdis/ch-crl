Profile: CHCRLObservationCharlsonIndex
Parent: Observation
Id: ch-crl-observation-charlsonindex
Title: "CH CRL Observation Charlson Index"
Description: "Definition of the Observation for the Charlson index"
* . ^short = "CH CRL Observation Charlson Index"
* code 1..
* code = $sct#762713009 "Charlson Comorbidity Index (assessment scale)"
* subject 1..
* subject only Reference(CHCRLPatient)
* subject ^short = "Patient"
* subject.reference 1..
* effectiveDateTime 1..
* performer only Reference(CHCRLPractitioner or CHCRLOrganizationDepartment)
* performer ^short = "Practitioner if resident physician or Organization Department if hospital"
* performer.reference 1..

* valueInteger ^short = "The summed scores of all components of the Charlson Index. 
It estimates the combined effect of the Charlson Index components on patient survival."
* valueInteger 1..

* derivedFrom ..*
* derivedFrom only Reference(Observation)
* derivedFrom ^slicing.discriminator.type = #profile
* derivedFrom ^slicing.discriminator.path = "resolve()"
* derivedFrom ^slicing.ordered = false
* derivedFrom ^slicing.rules = #open
* derivedFrom contains
    // Solid tumour/Leukaemia/Lymphoma -> keine Datenelemente aus Nicer; Infos beim Krebsregister implizit schon vorhanden
    ch-crl-congestiveHeartFailure 0..1 and
    ch-crl-myocardialInfarction 0..1 and
    ch-crl-chronicPulmonaryDisease 0..1 and
    ch-crl-peripheralVascularDisease 0..1 and
    ch-crl-cerebrovascularAccidentOrTIA 0..1 and
    ch-crl-dementia 0..1 and
    ch-crl-hemiplegiaParaplegia 0..1 and
    ch-crl-pepticUlcerDisease 0..1 and
    ch-crl-chronicKidneyDisease 0..1 and
    ch-crl-diabetesMellitus 0..1 and 
    ch-crl-liverDisease 0..1 and
    ch-crl-HIVAIDS 0..1 and
    ch-crl-connectiveTissueDisease 0..1

* derivedFrom[ch-crl-congestiveHeartFailure] only Reference(CHCRLObservationCongestiveHeartFailure)
* derivedFrom[ch-crl-congestiveHeartFailure] ^short = "Congestive heart failure"
* derivedFrom[ch-crl-myocardialInfarction] only Reference(CHCRLObservationMyocardialInfarction)
* derivedFrom[ch-crl-myocardialInfarction] ^short = "Myocardial infarction"
* derivedFrom[ch-crl-chronicPulmonaryDisease] only Reference(CHCRLObservationChronicPulmonaryDisease)
* derivedFrom[ch-crl-chronicPulmonaryDisease] ^short = "Chronic pulmonary disease"
* derivedFrom[ch-crl-peripheralVascularDisease] only Reference(CHCRLObservationPeripheralVascularDisease)
* derivedFrom[ch-crl-peripheralVascularDisease] ^short = "Peripheral vascular disease"
* derivedFrom[ch-crl-cerebrovascularAccidentOrTIA] only Reference(CHCRLObservationCVAOrTIA)
* derivedFrom[ch-crl-cerebrovascularAccidentOrTIA] ^short = "Cerebrovascular accident or TIA"
* derivedFrom[ch-crl-dementia] only Reference(CHCRLObservationDementia)
* derivedFrom[ch-crl-dementia] ^short = "Dementia"
* derivedFrom[ch-crl-hemiplegiaParaplegia] only Reference(CHCRLObservationHemiplegiaParaplegia)
* derivedFrom[ch-crl-hemiplegiaParaplegia] ^short = "Hemiplegia / paraplegia"
* derivedFrom[ch-crl-pepticUlcerDisease] only Reference(CHCRLObservationPepticUlcerDisease)
* derivedFrom[ch-crl-pepticUlcerDisease] ^short = "Peptic ulcer disease"
* derivedFrom[ch-crl-chronicKidneyDisease] only Reference(CHCRLObservationModerateToSevereChronicKidneyDisease)
* derivedFrom[ch-crl-chronicKidneyDisease] ^short = "Chronic kidney disease" 
* derivedFrom[ch-crl-diabetesMellitus] only Reference(CHCRLObservationDiabetesMellitus)
* derivedFrom[ch-crl-diabetesMellitus] ^short = "Diabetes mellitus" 
* derivedFrom[ch-crl-liverDisease] only Reference(CHCRLObservationLiverDisease)
* derivedFrom[ch-crl-liverDisease] ^short = "Liver disease"   
* derivedFrom[ch-crl-HIVAIDS] only Reference(CHCRLObservationHIVAIDS)
* derivedFrom[ch-crl-HIVAIDS] ^short = "HIV/AIDS" 
* derivedFrom[ch-crl-connectiveTissueDisease] only Reference(CHCRLObservationConnectiveTissueDiseaseRheumaticDisease)
* derivedFrom[ch-crl-connectiveTissueDisease] ^short = "Connective tissue disease"   



Mapping: NICER-B1-for-CHCRLObservationCharlsonIndex
Id: NICER-B1
Title: "NATIONAL CANCER DATA DICTIONARY, V 1.1, Part B1: SUPPLEMENTARY VARIABLES for Adults"
Source: CHCRLObservationCharlsonIndex
Target: "https://www.nacr.ch/assets/files/uploads/b1-datadictionary-supplementaryvariables-adults-v1.1.pdf"
* -> "Charlson Index (Variable number: 10.14)"


Instance: CharlsonIndex-8
InstanceOf: CHCRLObservationCharlsonIndex
Title: "Charlson Index - 8"
Description: "Example for Observation for the Charlson index"
Usage: #example
* status = #final
* code = $sct#762713009 "Charlson Comorbidity Index (assessment scale)"
* subject = Reference(FranzMinimum)
* effectiveDateTime = "2018-12-15"
* valueInteger = 8
// Age 68 J. = 2 Pkt.
// Solid tumour  // 0 Pkt.
// Leukaemia // 0 Pkt.
// Lymphoma // 0 Pkt.
* derivedFrom[ch-crl-congestiveHeartFailure] = Reference(CongestiveHeartFailure-No) // 0 Pkt.
* derivedFrom[ch-crl-myocardialInfarction] = Reference(MyocardialInfarction-Yes) // 1 Pkt.
* derivedFrom[ch-crl-chronicPulmonaryDisease] = Reference(ChronicPulmonaryDisease-Yes) // 1 Pkt.
* derivedFrom[ch-crl-peripheralVascularDisease] = Reference(PeripheralVascularDisease-No) // 0 Pkt.
* derivedFrom[ch-crl-cerebrovascularAccidentOrTIA] = Reference(CVAOrTIA-No) // 0 Pkt.
* derivedFrom[ch-crl-dementia] = Reference(Dementia-No) // 0 Pkt.
* derivedFrom[ch-crl-hemiplegiaParaplegia] = Reference(HemiplegiaParaplegia-No) // 0 Pkt.
* derivedFrom[ch-crl-pepticUlcerDisease] = Reference(PepticUlcerDisease-No) // 0 Pkt.
* derivedFrom[ch-crl-chronicKidneyDisease] = Reference(ModerateToSevereChronicKidneyDisease-No) // 0 Pkt.
* derivedFrom[ch-crl-diabetesMellitus] = Reference(DiabetesMellitus-Uncomplicated) // 1 Pkt.
* derivedFrom[ch-crl-liverDisease] = Reference(LiverDisease-ModerateToSevere) // 3 Pkt.
* derivedFrom[ch-crl-HIVAIDS] = Reference(HIVAIDS-No) // 0 Pkt.
* derivedFrom[ch-crl-connectiveTissueDisease] = Reference(ConnectiveTissueDiseaseRheumaticDisease-No) // 0 Pkt.

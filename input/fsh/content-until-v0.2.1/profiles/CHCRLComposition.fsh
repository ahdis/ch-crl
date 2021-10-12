Profile: CHCRLComposition
Parent: CHCoreComposition
Id: ch-crl-composition
Title: "CH CRL Composition Profile"
Description: "Definition of the composition for reporting to the cancer registry"
* . ^short = "CH CRL Composition"
* type = $loinc#72134-0 "Cancer event report"
* subject 1..1
* subject only Reference(CHCRLPatient)
* subject ^short = "Patient"
* subject.reference 1..
* author 1..
* author only Reference(CHCRLPractitioner or CHCRLOrganizationDepartment)
* author ^short = "Practitioner if resident physician or Organization Department if hospital"
* author.reference 1..
* section 1..
* section.entry ^slicing.discriminator.type = #profile
* section.entry ^slicing.discriminator.path = "resolve()"
* section.entry ^slicing.rules = #open
* section.entry contains
    documentReference 0..* and
    communication 0..* and
    finalCauseOfDeath 0..* and
    diseases 0..* and
    dateOfIncidence 0..* and
    ICD-10 0..* and
    ICD-O-3-Morphology 0..* and
    ICD-O-3-Topography 0..* and
    ICD-O-3-Behaviour 0..* and
    ICD-O-3-Laterality 0..* and
    ICD-O-3-HistologicalGrade 0..* and
    y-Prefix-cTNM 0..* and
    a-Prefix-pTNM 0..* and
    y-Prefix-pTNM 0..* and
    m-Suffix-pT 0..* and
    numberInvolvedRegionalLymphNodes 0..* and
    numberExaminedRegionalLymphNodes 0..* and
    lymphaticInvasion 0..* and
    venousInvasion 0..* and
    perineuralInvasion 0..* and
    TNM-StageGroup 0..* and
    diagnosticMethod 0..*
* section.entry[documentReference] only Reference(CHCRLDocumentReference)
* section.entry[documentReference] ^short = "Report as pdf"
* section.entry[documentReference].reference 1..
* section.entry[communication] only Reference(CHCRLCommunication)
* section.entry[communication] ^short = "Date of informing the patient about the cancer registration"
* section.entry[communication].reference 1..
* section.entry[finalCauseOfDeath] only Reference(CHCRLConditionFinalCauseOfDeath)
* section.entry[finalCauseOfDeath] ^short = "Final cause of death"
* section.entry[finalCauseOfDeath].reference 1..
* section.entry[diseases] only Reference(CHCRLConditionDisease)
* section.entry[diseases] ^short = "Primary disease, secondary disease and concomitant diseases (A and B)"
* section.entry[diseases].reference 1..
* section.entry[dateOfIncidence] only Reference(CHCRLObservationDateOfIncidence)
* section.entry[dateOfIncidence] ^short = "Date of incidence"
* section.entry[dateOfIncidence].reference 1..
* section.entry[ICD-10] only Reference(CHCRLObservationICD10)
* section.entry[ICD-10] ^short = "ICD-10 code"
* section.entry[ICD-10].reference 1..
* section.entry[ICD-O-3-Morphology] only Reference(CHCRLObservationICDO3Morphology)
* section.entry[ICD-O-3-Morphology] ^short = "ICD-O-3 morphology code"
* section.entry[ICD-O-3-Morphology].reference 1..
* section.entry[ICD-O-3-Topography] only Reference(CHCRLObservationICDO3Topography)
* section.entry[ICD-O-3-Topography] ^short = "ICD-O-3 topography code"
* section.entry[ICD-O-3-Topography].reference 1..
* section.entry[ICD-O-3-Behaviour] only Reference(CHCRLObservationICDO3Behaviour)
* section.entry[ICD-O-3-Behaviour] ^short = "ICD-O-3 behaviour code"
* section.entry[ICD-O-3-Behaviour].reference 1..
* section.entry[ICD-O-3-Laterality] only Reference(CHCRLObservationICDO3Laterality)
* section.entry[ICD-O-3-Laterality] ^short = "ICD-O-3 laterality code"
* section.entry[ICD-O-3-Laterality].reference 1..
* section.entry[ICD-O-3-HistologicalGrade] only Reference(CHCRLObservationICDO3HistologicalGrade)
* section.entry[ICD-O-3-HistologicalGrade] ^short = "ICD-O-3 histological grade code"
* section.entry[ICD-O-3-HistologicalGrade].reference 1..
* section.entry[y-Prefix-cTNM] only Reference(CHCRLObservationyPrefixOfcTNM)
* section.entry[y-Prefix-cTNM] ^short = "y-Prefix of cTNM"
* section.entry[y-Prefix-cTNM].reference 1..
* section.entry[a-Prefix-pTNM] only Reference(CHCRLObservationaPrefixOfpTNM)
* section.entry[a-Prefix-pTNM] ^short = "a-Prefix of pTNM"
* section.entry[a-Prefix-pTNM].reference 1..
* section.entry[y-Prefix-pTNM] only Reference(CHCRLObservationyPrefixOfpTNM)
* section.entry[y-Prefix-pTNM] ^short = "y-Prefix of pTNM"
* section.entry[y-Prefix-pTNM].reference 1..
* section.entry[m-Suffix-pT] only Reference(CHCRLObservationmSuffixOfpT)
* section.entry[m-Suffix-pT] ^short = "m-Suffix of pT"
* section.entry[m-Suffix-pT].reference 1..
* section.entry[numberInvolvedRegionalLymphNodes] only Reference(CHCRLObservationNumberInvolvedRegionalLymphNodes)
* section.entry[numberInvolvedRegionalLymphNodes] ^short = "Number of involved regional lymph nodes"
* section.entry[numberInvolvedRegionalLymphNodes].reference 1..
* section.entry[numberExaminedRegionalLymphNodes] only Reference(CHCRLObservationNumberExaminedRegionalLymphNodes)
* section.entry[numberExaminedRegionalLymphNodes] ^short = "Number of examined regional lymph nodes"
* section.entry[numberExaminedRegionalLymphNodes].reference 1..
* section.entry[lymphaticInvasion] only Reference(CHCRLObservationLymphaticInvasion)
* section.entry[lymphaticInvasion] ^short = "Lymphatic invasion"
* section.entry[lymphaticInvasion].reference 1..
* section.entry[venousInvasion] only Reference(CHCRLObservationVenousInvasion)
* section.entry[venousInvasion] ^short = "Venous invasion"
* section.entry[venousInvasion].reference 1..
* section.entry[perineuralInvasion] only Reference(CHCRLObservationPerineuralInvasion)
* section.entry[perineuralInvasion] ^short = "Perineural invasion"
* section.entry[perineuralInvasion].reference 1..
* section.entry[TNM-StageGroup] only Reference(CHCRLObservationTNMStageGroup)
* section.entry[TNM-StageGroup] ^short = "TNM stage group"
* section.entry[TNM-StageGroup].reference 1..
* section.entry[diagnosticMethod] only Reference(CHCRLProcedureDiagnosticMethod)
* section.entry[diagnosticMethod] ^short = "Diagnostic method(s)"
* section.entry[diagnosticMethod].reference 1..
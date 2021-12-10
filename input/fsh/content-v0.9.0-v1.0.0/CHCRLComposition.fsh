Profile: CHCRLComposition
Parent: CHCoreComposition
Id: ch-crl-composition
Title: "CH CRL Composition"
Description: "Definition of the Composition for reporting to the cancer registry"
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
* section ^slicing.discriminator[0].type = #value
* section ^slicing.discriminator[=].path = "title"
* section ^slicing.ordered = false
* section ^slicing.rules = #open
* section ^short = "Sections composing the cancer report"

* section contains
    unstructuredReport 0..1 and
    registrationRequirements 0..1 and
    causeOfDeath 0..1 and
    diagnosis 0..1 and
    coding 0..1 and
    stagingAndGrading 0..1 and
    tumourRelatedPrognosticFactors 0..1 and
//    charlsonIndex 0..1 and
    treatment 0..1 and
    courseOfDisease 0..1

// ------- Unstructured Report -------
* section[unstructuredReport] ^short = "Section for the unstructured cancer report as PDF"
* section[unstructuredReport].title 1..
* section[unstructuredReport].title = "Report as PDF"
* section[unstructuredReport].entry ^slicing.discriminator.type = #profile
* section[unstructuredReport].entry ^slicing.discriminator.path = "resolve()"
* section[unstructuredReport].entry ^slicing.rules = #open
* section[unstructuredReport].section ..0
// PDF
* section[unstructuredReport].entry contains documentReference 0..*
* section[unstructuredReport].entry[documentReference] only Reference(CHCRLDocumentReference)
* section[unstructuredReport].entry[documentReference] ^short = "Report as pdf"
* section[unstructuredReport].entry[documentReference].reference 1..

// ------- Registration requirements -------
* section[registrationRequirements] ^short = "Section for the registration requirements"
* section[registrationRequirements].title 1..
* section[registrationRequirements].title = "Registration requirements"
* section[registrationRequirements].entry ^slicing.discriminator.type = #profile
* section[registrationRequirements].entry ^slicing.discriminator.path = "resolve()"
* section[registrationRequirements].entry ^slicing.rules = #open
* section[registrationRequirements].section ..0
// Receipt date of first record -> Bundle.timestamp
// Date of patient information
* section[registrationRequirements].entry contains communication 0..1 MS
* section[registrationRequirements].entry[communication] only Reference(CHCRLCommunication)
* section[registrationRequirements].entry[communication] ^short = "Date of patient information"
* section[registrationRequirements].entry[communication].reference 1..
// Deceased -> Patient.deceased[x]

// ------- Cause of death -------
* section[causeOfDeath] ^short = "Section for the cause of death"
* section[causeOfDeath].title 1..
* section[causeOfDeath].title = "Cause of death"
* section[causeOfDeath].code 1..
* section[causeOfDeath].code = $loinc#79378-6 "Cause of death"
* section[causeOfDeath].entry ^slicing.discriminator.type = #profile
* section[causeOfDeath].entry ^slicing.discriminator.path = "resolve()"
* section[causeOfDeath].entry ^slicing.rules = #open
* section[causeOfDeath].entry contains
    principalCauseOfDeath 0..1 and
    diseases 0..*
* section[causeOfDeath].section ..0 
// Principal cause of death
* section[causeOfDeath].entry[principalCauseOfDeath] only Reference(CHCRLConditionFinalCauseOfDeath)
* section[causeOfDeath].entry[principalCauseOfDeath] ^short = "Principal cause of death"
* section[causeOfDeath].entry[principalCauseOfDeath].reference 1..
// Diseases
* section[causeOfDeath].entry[diseases] only Reference(CHCRLConditionDisease)
* section[causeOfDeath].entry[diseases] ^short = "Underlying cause of death / Intermediate cause of death / First concomitant cause of death / Second concomitant cause of death"
* section[causeOfDeath].entry[diseases].reference 1..


// ------- Diagnosis -------
* section[diagnosis] ^short = "Section for the diagnosis"
* section[diagnosis].title 1..
* section[diagnosis].title = "Diagnosis" // TBD: fixe title entfernen (short Wert)
* section[diagnosis].code 1..
* section[diagnosis].code = $loinc#29308-4 "Diagnosis"
* section[diagnosis].entry ^slicing.discriminator.type = #profile
* section[diagnosis].entry ^slicing.discriminator.path = "resolve()"
* section[diagnosis].entry ^slicing.rules = #open
* section[diagnosis].entry contains 
    dateOfIncidence 0..1 and
    methodFirstDetection 0..1 and
    diagnosticMethodsUsed 0..*
* section[diagnosis].section ..0
// Date of incidence
* section[diagnosis].entry[dateOfIncidence] only Reference(CHCRLObservationDateOfIncidence)
* section[diagnosis].entry[dateOfIncidence] ^short = "Date of incidence"
* section[diagnosis].entry[dateOfIncidence].reference 1..
// Method of first detection
* section[diagnosis].entry[methodFirstDetection] only Reference(CHCRLProcedureMethodFirstDetection)
* section[diagnosis].entry[methodFirstDetection] ^short = "Method of first detection"
* section[diagnosis].entry[methodFirstDetection].reference 1..
// Diagnostic methods used
* section[diagnosis].entry[diagnosticMethodsUsed] only Reference(CHCRLProcedureDiagnosticMethod)
* section[diagnosis].entry[diagnosticMethodsUsed] ^short = "Diagnostic methods used"
* section[diagnosis].entry[diagnosticMethodsUsed].reference 1..

// ------- Coding -------
* section[coding] ^short = "Section for the coding"
* section[coding].title 1..
* section[coding].title = "Coding"
* section[coding].entry ^slicing.discriminator.type = #profile
* section[coding].entry ^slicing.discriminator.path = "resolve()"
* section[coding].entry ^slicing.rules = #open
* section[coding].entry contains
    ICD-code 0..1 and
    ICD-O-topography 0..1 and
    ICD-O-morphologyAndBehaviour 0..1 and
    ICD-O-observedBehaviour 0..1 and
    ICD-O-histologicalGrades 0..1 and
    ICD-O-laterality 0..1 and
    ICCC-3-mainGroup 0..1
* section[coding].section ..0
// ICD-code
* section[coding].entry[ICD-code] only Reference(CHCRLObservationICD10)
* section[coding].entry[ICD-code] ^short = "ICD-code"
* section[coding].entry[ICD-code].reference 1..
// ICD-O topography
* section[coding].entry[ICD-O-topography] only Reference(CHCRLObservationICDO3Topography)
* section[coding].entry[ICD-O-topography] ^short = "ICD-O topography"
* section[coding].entry[ICD-O-topography].reference 1..
// ICD-O morphology & behaviour
* section[coding].entry[ICD-O-morphologyAndBehaviour] only Reference(CHCRLObservationICDO3Morphology)
* section[coding].entry[ICD-O-morphologyAndBehaviour] ^short = "ICD-O morphology & behaviour"
* section[coding].entry[ICD-O-morphologyAndBehaviour].reference 1..
// ICD-O observed behaviour
* section[coding].entry[ICD-O-observedBehaviour] only Reference(CHCRLObservationICDO3Behaviour)
* section[coding].entry[ICD-O-observedBehaviour] ^short = "ICD-O observed behaviour"
* section[coding].entry[ICD-O-observedBehaviour].reference 1..
// ICD-O histological grades
* section[coding].entry[ICD-O-histologicalGrades] only Reference(CHCRLObservationICDO3HistologicalGrade)
* section[coding].entry[ICD-O-histologicalGrades] ^short = "ICD-O histological grades"
* section[coding].entry[ICD-O-histologicalGrades].reference 1..
// ICD-O Laterality
* section[coding].entry[ICD-O-laterality] only Reference(CHCRLObservationICDO3Laterality)
* section[coding].entry[ICD-O-laterality] ^short = "ICD-O Laterality"
* section[coding].entry[ICD-O-laterality].reference 1..
// ICCC-3 main group
* section[coding].entry[ICCC-3-mainGroup] only Reference(CHCRLObservationICCC3MainGroup)
* section[coding].entry[ICCC-3-mainGroup] ^short = "ICCC-3 main group"
* section[coding].entry[ICCC-3-mainGroup].reference 1..

// ------- Staging & grading -------
* section[stagingAndGrading] ^short = "Section for the staging & grading"
* section[stagingAndGrading].title 1..
* section[stagingAndGrading].title = "Staging and grading"
* section[stagingAndGrading].entry ^slicing.discriminator.type = #profile
* section[stagingAndGrading].entry ^slicing.discriminator.path = "resolve()"
* section[stagingAndGrading].entry ^slicing.rules = #open
* section[stagingAndGrading].entry contains
    cTNM-y-prefix 0..1 and
    pTNM-a-prefix 0..1 and
    pTNM-y-prefix 0..1 and
    pT-m-suffix 0..1 and
    numberInvolvedRegionalLymphNodes 0..1 and
    numberExaminedRegionalLymphNodes 0..1 and
    lymphaticInvasion 0..1 and
    venousInvasion 0..1 and
    perineuralInvasion 0..1 and
    residualTumour 0..1 and
    TNM-stage 0..1 and
    clinicalTumourSize 0..1 and
    pathologicalTumourSize 0..1 and
    metastasesAtDiagnosisIndicator 0..1 and
    topographyMetastasesAtDiagnosis 0..* and
    resectionMarginInvasiveTumour 0..1 and
    associatedInsituTumour 0..1 and
    residualForAssociatedInsituTumour 0..1 and
    resectionMarginInsituTumour 0..1 and
    sentinelLymphNodeAssessment 0..1 and
    numberPositiveSentinelLymphNodes 0..1 and
    numberExaminedSentinelLymphNodes 0..1
* section[stagingAndGrading].section ..0
// cTNM: y-Prefix
* section[stagingAndGrading].entry[cTNM-y-prefix] only Reference(CHCRLObservationyPrefixOfcTNM)
* section[stagingAndGrading].entry[cTNM-y-prefix] ^short = "cTNM: y-Prefix"
* section[stagingAndGrading].entry[cTNM-y-prefix].reference 1..
// pTNM: a-Prefix
* section[stagingAndGrading].entry[pTNM-a-prefix] only Reference(CHCRLObservationaPrefixOfpTNM)
* section[stagingAndGrading].entry[pTNM-a-prefix] ^short = "pTNM: a-Prefix"
* section[stagingAndGrading].entry[pTNM-a-prefix].reference 1..
// pTNM: y-Prefix
* section[stagingAndGrading].entry[pTNM-y-prefix] only Reference(CHCRLObservationyPrefixOfpTNM)
* section[stagingAndGrading].entry[pTNM-y-prefix] ^short = "pTNM: y-Prefix"
* section[stagingAndGrading].entry[pTNM-y-prefix].reference 1..
// pT: m-Suffix
* section[stagingAndGrading].entry[pT-m-suffix] only Reference(CHCRLObservationmSuffixOfpT)
* section[stagingAndGrading].entry[pT-m-suffix] ^short = "pT: m-Suffix"
* section[stagingAndGrading].entry[pT-m-suffix].reference 1..
// numberInvolvedRegionalLymphNodes
* section[stagingAndGrading].entry[numberInvolvedRegionalLymphNodes] only Reference(CHCRLObservationNumberInvolvedRegionalLymphNodes)
* section[stagingAndGrading].entry[numberInvolvedRegionalLymphNodes] ^short = "Number of involved regional lymph nodes"
* section[stagingAndGrading].entry[numberInvolvedRegionalLymphNodes].reference 1..
// numberExaminedRegionalLymphNodes
* section[stagingAndGrading].entry[numberExaminedRegionalLymphNodes] only Reference(CHCRLObservationNumberExaminedRegionalLymphNodes)
* section[stagingAndGrading].entry[numberExaminedRegionalLymphNodes] ^short = "Number of examined regional lymph nodes"
* section[stagingAndGrading].entry[numberExaminedRegionalLymphNodes].reference 1..
// Lymphatic invasion (L)
* section[stagingAndGrading].entry[lymphaticInvasion] only Reference(CHCRLObservationLymphaticInvasion)
* section[stagingAndGrading].entry[lymphaticInvasion] ^short = "Lymphatic invasion"
* section[stagingAndGrading].entry[lymphaticInvasion].reference 1..
// Venous invasion (V)
* section[stagingAndGrading].entry[venousInvasion] only Reference(CHCRLObservationVenousInvasion)
* section[stagingAndGrading].entry[venousInvasion] ^short = "Venous invasion"
* section[stagingAndGrading].entry[venousInvasion].reference 1..
// Perineural invasion (Pn)
* section[stagingAndGrading].entry[perineuralInvasion] only Reference(CHCRLObservationPerineuralInvasion)
* section[stagingAndGrading].entry[perineuralInvasion] ^short = "Perineural invasion"
* section[stagingAndGrading].entry[perineuralInvasion].reference 1..
// Residual tumour (R)
* section[stagingAndGrading].entry[residualTumour] only Reference(CHCRLObservationResidualInvasiveTumour)
* section[stagingAndGrading].entry[residualTumour] ^short = "Residual tumour"
* section[stagingAndGrading].entry[residualTumour].reference 1..
// TNM stage
* section[stagingAndGrading].entry[TNM-stage] only Reference(CHCRLObservationTNMStageGroup)
* section[stagingAndGrading].entry[TNM-stage] ^short = "TNM stage"
* section[stagingAndGrading].entry[TNM-stage].reference 1..
// Clinical tumour size in mm
* section[stagingAndGrading].entry[clinicalTumourSize] only Reference(CHCRLObservationClinicalTumourSize)
* section[stagingAndGrading].entry[clinicalTumourSize] ^short = "Clinical tumour size"
* section[stagingAndGrading].entry[clinicalTumourSize].reference 1..
// Pathological tumour size
* section[stagingAndGrading].entry[pathologicalTumourSize] only Reference(CHCRLObservationPathologicalTumourSize)
* section[stagingAndGrading].entry[pathologicalTumourSize] ^short = "Pathological tumour size"
* section[stagingAndGrading].entry[pathologicalTumourSize].reference 1..
// Metastases at diagnosis indicator
* section[stagingAndGrading].entry[metastasesAtDiagnosisIndicator] only Reference(CHCRLObservationMetastasesAtDiagnosisIndicator)
* section[stagingAndGrading].entry[metastasesAtDiagnosisIndicator] ^short = "Metastases at diagnosis indicator"
* section[stagingAndGrading].entry[metastasesAtDiagnosisIndicator].reference 1..
// Topography of metastases at diagnosis
* section[stagingAndGrading].entry[topographyMetastasesAtDiagnosis] only Reference(CHCRLObservationTopographyMetastasesAtDiagnosis)
* section[stagingAndGrading].entry[topographyMetastasesAtDiagnosis] ^short = "Topography of metastases at diagnosis"
* section[stagingAndGrading].entry[topographyMetastasesAtDiagnosis].reference 1..
// Resection margin invasive tumour
* section[stagingAndGrading].entry[resectionMarginInvasiveTumour] only Reference(CHCRLObservationResectionMarginInvasiveTumour)
* section[stagingAndGrading].entry[resectionMarginInvasiveTumour] ^short = "Resection margin invasive tumour"
* section[stagingAndGrading].entry[resectionMarginInvasiveTumour].reference 1..
// Associated in-situ tumour
* section[stagingAndGrading].entry[associatedInsituTumour] only Reference(CHCRLObservationAssociatedInsituTumour)
* section[stagingAndGrading].entry[associatedInsituTumour] ^short = "Associated in-situ tumour"
* section[stagingAndGrading].entry[associatedInsituTumour].reference 1..
// Residual for associated in-situ tumour
* section[stagingAndGrading].entry[residualForAssociatedInsituTumour] only Reference(CHCRLObservationResidualInsituTumour)
* section[stagingAndGrading].entry[residualForAssociatedInsituTumour] ^short = "Residual for associated in-situ tumour"
* section[stagingAndGrading].entry[residualForAssociatedInsituTumour].reference 1.. 
// Resection margin in-situ tumour
* section[stagingAndGrading].entry[resectionMarginInsituTumour] only Reference(CHCRLObservationResectionMarginInsituTumour)
* section[stagingAndGrading].entry[resectionMarginInsituTumour] ^short = "Resection margin in-situ tumour"
* section[stagingAndGrading].entry[resectionMarginInsituTumour].reference 1..
// Sentinel lymph node assessment
* section[stagingAndGrading].entry[sentinelLymphNodeAssessment] only Reference(CHCRLObservationSentinelLymphNodeAssessment)
* section[stagingAndGrading].entry[sentinelLymphNodeAssessment] ^short = "Sentinel lymph node assessment"
* section[stagingAndGrading].entry[sentinelLymphNodeAssessment].reference 1..
// Number of positive sentinel lymph nodes
* section[stagingAndGrading].entry[numberPositiveSentinelLymphNodes] only Reference(CHCRLObservationNumberPositiveSentinelLymphNodes)
* section[stagingAndGrading].entry[numberPositiveSentinelLymphNodes] ^short = "Number of positive sentinel lymph nodes"
* section[stagingAndGrading].entry[numberPositiveSentinelLymphNodes].reference 1..
// Number of examined sentinel lymph nodes
* section[stagingAndGrading].entry[numberExaminedSentinelLymphNodes] only Reference(CHCRLObservationNumberExaminedSentinelLymphNodes)
* section[stagingAndGrading].entry[numberExaminedSentinelLymphNodes] ^short = "Number of examined sentinel lymph nodes"
* section[stagingAndGrading].entry[numberExaminedSentinelLymphNodes].reference 1..

// ------- Tumour related prognostic factors -------
* section[tumourRelatedPrognosticFactors] ^short = "Section for the tumour related prognostic factors"
* section[tumourRelatedPrognosticFactors].title 1..
* section[tumourRelatedPrognosticFactors].title = "Tumour related prognostic factors"
* section[tumourRelatedPrognosticFactors].entry ^slicing.discriminator.type = #profile
* section[tumourRelatedPrognosticFactors].entry ^slicing.discriminator.path = "resolve()"
* section[tumourRelatedPrognosticFactors].entry ^slicing.rules = #open
* section[tumourRelatedPrognosticFactors].entry contains
    circumferentialResectionMargins 0..1 and
    breslowThickness 0..1 and
    oestrogenReceptorStatus 0..1 and
    progesteroneReceptorStatus 0..1 and
    her2ReceptorStatus 0..1 and
    tumourProliferationLabeling 0..1 and
    psa 0..1 and
    gleasonScore 0..1 and
    whoGradeGroup 0..1
* section[tumourRelatedPrognosticFactors].section ..0

// Head / neck: HPV/p16
// Head / neck: EBV

// Colon / rectum: Circumferential resection margins
* section[tumourRelatedPrognosticFactors].entry[circumferentialResectionMargins] only Reference(CHCRLObservationCircumferentialResectionMargins)
* section[tumourRelatedPrognosticFactors].entry[circumferentialResectionMargins] ^short = "Circumferential resection margins"
* section[tumourRelatedPrognosticFactors].entry[circumferentialResectionMargins].reference 1..
// Colon / rectum: Microsatellite instability

// Melanoma: Breslow thickness in mm
* section[tumourRelatedPrognosticFactors].entry[breslowThickness] only Reference(CHCRLObservationBreslowThickness)
* section[tumourRelatedPrognosticFactors].entry[breslowThickness] ^short = "Breslow thickness in mm"
* section[tumourRelatedPrognosticFactors].entry[breslowThickness].reference 1..

// Breast: Oestrogen receptor status
* section[tumourRelatedPrognosticFactors].entry[oestrogenReceptorStatus] only Reference(CHCRLObservationOestrogenReceptorStatus)
* section[tumourRelatedPrognosticFactors].entry[oestrogenReceptorStatus] ^short = "Oestrogen receptor status"
* section[tumourRelatedPrognosticFactors].entry[oestrogenReceptorStatus].reference 1..
// Breast: Progesterone receptor status
* section[tumourRelatedPrognosticFactors].entry[progesteroneReceptorStatus] only Reference(CHCRLObservationProgesteroneReceptorStatus)
* section[tumourRelatedPrognosticFactors].entry[progesteroneReceptorStatus] ^short = "Progesterone receptor status"
* section[tumourRelatedPrognosticFactors].entry[progesteroneReceptorStatus].reference 1..
// Breast: HER2 receptor status
* section[tumourRelatedPrognosticFactors].entry[her2ReceptorStatus] only Reference(CHCRLObservationHer2ReceptorStatus)
* section[tumourRelatedPrognosticFactors].entry[her2ReceptorStatus] ^short = "HER2 receptor status"
* section[tumourRelatedPrognosticFactors].entry[her2ReceptorStatus].reference 1..
// Breast: Tumour proliferation labeling
* section[tumourRelatedPrognosticFactors].entry[tumourProliferationLabeling] only Reference(CHCRLObservationTumourProliferationLabeling)
* section[tumourRelatedPrognosticFactors].entry[tumourProliferationLabeling] ^short = "Tumour proliferation labeling"
* section[tumourRelatedPrognosticFactors].entry[tumourProliferationLabeling].reference 1..

// Prostate: PSA
* section[tumourRelatedPrognosticFactors].entry[psa] only Reference(CHCRLObservationPretreatmentProstateSpecificAntigen)
* section[tumourRelatedPrognosticFactors].entry[psa] ^short = "PSA"
* section[tumourRelatedPrognosticFactors].entry[psa].reference 1..
// Prostate: Gleason score
* section[tumourRelatedPrognosticFactors].entry[gleasonScore] only Reference(CHCRLObservationGleasonScore)
* section[tumourRelatedPrognosticFactors].entry[gleasonScore] ^short = "Gleason Score"
* section[tumourRelatedPrognosticFactors].entry[gleasonScore].reference 1..
// Prostate: WHO grade group
* section[tumourRelatedPrognosticFactors].entry[whoGradeGroup] only Reference(CHCRLObservationWHOGradeGroup)
* section[tumourRelatedPrognosticFactors].entry[whoGradeGroup] ^short = "WHO grade group"
* section[tumourRelatedPrognosticFactors].entry[whoGradeGroup].reference 1..
 
// Testicle: α-fetoprotein
// Testicle: hCG (mlU/ml)
// Testicle: LDH (factor x N)
// Testicle: Serum tumour markers


// ------- Charlson index -------
/*
* section[charlsonIndex] ^short = "Section for the Charlson index"
* section[charlsonIndex].title 1..
* section[charlsonIndex].title = "Charlson index"
* section[charlsonIndex].entry ^slicing.discriminator.type = #profile
* section[charlsonIndex].entry ^slicing.discriminator.path = "resolve()"
* section[charlsonIndex].entry ^slicing.rules = #open
* section[charlsonIndex].section ..0
*/

// ------- Treatment -------
* section[treatment] ^short = "Section for the treatment"
* section[treatment].title 1..
* section[treatment].title = "Treatment"
* section[treatment].entry ^slicing.discriminator.type = #profile
* section[treatment].entry ^slicing.discriminator.path = "resolve()"
* section[treatment].entry ^slicing.rules = #open
* section[treatment].section ..0

// ------- Course of disease -------
* section[courseOfDisease] ^short = "Section for the course of desease"
* section[courseOfDisease].title 1..
* section[courseOfDisease].title = "Course of disease"
* section[courseOfDisease].entry ^slicing.discriminator.type = #profile
* section[courseOfDisease].entry ^slicing.discriminator.path = "resolve()"
* section[courseOfDisease].entry ^slicing.rules = #open
* section[courseOfDisease].section ..0

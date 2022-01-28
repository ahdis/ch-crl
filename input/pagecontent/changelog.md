
All significant changes to this FHIR implementation guide will be documented on this page.

**Note for implementers:**    
Necessary changes, e.g. due to specification changes or bugs, to existing FHIR artifacts that **affect existing implementations** are **highlighted in bold**.


### v0.9.0
 
#### Added
* Download link for NPM package, see [here](index.html#download).
* Separate tabs for the [use case](usecase-german.html) and the [cancer report (logical model)](logicalmodel.html) for simpler navigation in the IG.
* Set the flag `mustSupport`=true for case-opening criteria, see [here](index.html#case-opening-criteria-and-mustsupport).
* New use case step with example: [Follow-up with a gastroenterologist](usecase-german.html#nachsorge-beim-gastroenterologen).
* Constraints in profiles to enhance validation (e.g. [ch-crl-obs-1: Observation must have either value[x] or dataAbsentReason](StructureDefinition-ch-crl-observation-lymphaticinvasion.html)).
* More NKRS variables with profiles, examples and terminology. 
   1. Method of first detection (Variable number: 2.6) ([Profile](StructureDefinition-ch-crl-procedure-methodfirstdetection.html), [ValueSet](ValueSet-nkrs-methodfirstdetection.html))
   2. Associated in situ tumour (Variable number: 3.6.2) ([Profile](StructureDefinition-ch-crl-observation-associatedinsitutumour.html)) 
   3. ICCC-3 main group (Variable number: 3.9.1) ([Profile](StructureDefinition-ch-crl-observation-iccc3maingroup.html), [ValueSet](ValueSet-nkrs-iccc3maingroup.html))
   4. ICCC-3 code (Variable number: 3.9.2) ([Profile](StructureDefinition-ch-crl-observation-iccc3code.html), [ValueSet](ValueSet-nkrs-iccc3code.html))
   5. ICCC-3 extended code (Variable number: 3.9.3) ([Profile](StructureDefinition-ch-crl-observation-iccc3extendedcode.html), [ValueSet](ValueSet-nkrs-iccc3extendedcode.html))
   6. Ann Arbor staging (Variable number: 4.18) ([Profile](StructureDefinition-ch-crl-observation-annarborstaging.html), [ValueSet](ValueSet-nkrs-annarborstaging.html))
   7. COG staging (Variable number: 4.19) ([Profile](StructureDefinition-ch-crl-observation-cogstaging.html), [ValueSet](ValueSet-nkrs-cogstaging.html))
   8. COG ALL staging (Variable number: 4.20) ([Profile](StructureDefinition-ch-crl-observation-cogallstaging.html), [ValueSet](ValueSet-nkrs-cogallstaging.html))
   9. FIGO staging (Variable number: 4.21) ([Profile](StructureDefinition-ch-crl-observation-figostaging.html), [ValueSet](ValueSet-nkrs-figostaging.html))
   10. INRGSS staging (Variable number: 4.22) ([Profile](StructureDefinition-ch-crl-observation-inrgssstaging.html), [ValueSet](ValueSet-nkrs-inrgssstaging.html))
   11. IRSS staging (Variable number: 4.23) ([Profile](StructureDefinition-ch-crl-observation-irssstaging.html), [ValueSet](ValueSet-nkrs-irssstaging.html))
   12. Lugano staging (Variable number: 4.24) ([Profile](StructureDefinition-ch-crl-observation-luganostaging.html), [ValueSet](ValueSet-nkrs-luganostaging.html))
   13. PRETEXT staging (Variable number: 4.25) ([Profile](StructureDefinition-ch-crl-observation-pretextstaging.html), [ValueSet](ValueSet-nkrs-pretextstaging.html))
   14. Rai staging (Variable number: 4.26) ([Profile](StructureDefinition-ch-crl-observation-raistaging.html), [ValueSet](ValueSet-nkrs-raistaging.html))
   15. Binet staging (Variable number: 4.27) ([Profile](StructureDefinition-ch-crl-observation-binetstaging.html), [ValueSet](ValueSet-nkrs-binetstaging.html))
   16. Rhabdomyosarcoma site staging (Variable number: 4.28) ([Profile](StructureDefinition-ch-crl-observation-rhabdomyosarcomasitestaging.html), [ValueSet](ValueSet-nkrs-rhabdomyosarcomasitestaging.html))
   17. ISS staging (Variable number: 4.29) ([Profile](StructureDefinition-ch-crl-observation-issstaging.html), [ValueSet](ValueSet-nkrs-issstaging.html))
   18. DSSplus (Variable number: 4.30) ([Profile](StructureDefinition-ch-crl-observation-dssplus.html), [ValueSet](ValueSet-nkrs-dssplus.html))
   19. SIOP staging (Variable number: 4.31) ([Profile](StructureDefinition-ch-crl-observation-siopstaging.html), [ValueSet](ValueSet-nkrs-siopstaging.html))
   20. St. Jude / Murphy staging (Variable number: 4.32) ([Profile](StructureDefinition-ch-crl-observation-stjudemurphystaging.html), [ValueSet](ValueSet-nkrs-stjudemurphystaging.html))
   21. Toronto Tier II (manual) staging (Variable number: 4.33.2) ([Profile](StructureDefinition-ch-crl-observation-torontotierIImanualstaging.html), [ValueSet](ValueSet-nkrs-torontotierIImanualstaging.html))
   22. Creasman grading system (Variable number: 4.34) ([Profile](StructureDefinition-ch-crl-observation-creasmangradingsystem.html), [ValueSet](ValueSet-nkrs-creasmangradingsystem.html))
   23. Elston/Ellis grading system (Variable number: 4.35) ([Profile](StructureDefinition-ch-crl-observation-elstonellisgradingsystem.html), [ValueSet](ValueSet-nkrs-elstonellisgradingsystem.html))
   24. SalzerKuntschik grading system (Variable number: 4.36) ([Profile](StructureDefinition-ch-crl-observation-salzerkuntschikgradingsystem.html), [ValueSet](ValueSet-nkrs-salzerkuntschikgradingsystem.html))
   25. Shimada grading system (Variable number: 4.37) ([Profile](StructureDefinition-ch-crl-observation-shimadagradingsystem.html), [ValueSet](ValueSet-nkrs-shimadagradingsystem.html))
   26. Clinical tumour size (Variable number: 4.39) ([Profile](StructureDefinition-ch-crl-observation-clinicaltumoursize.html))
   27. Pathological tumour size (Variable number: 4.40) ([Profile](StructureDefinition-ch-crl-observation-pathologicaltumoursize.html))   
   28. Metastases at diagnosis indicator (Variable number: 4.41) ([Profile](StructureDefinition-ch-crl-observation-metastasesatdiagnosisindicator.html))  
   29. Topography of metastases at diagnosis (Variable number: 4.42) ([Profile](StructureDefinition-ch-crl-observation-topographymetastasesatdiagnosis.html), [ValueSet](ValueSet-nkrs-topographymetastases.html))
   30. Oestrogen receptor status (Variable number: 5.1.1) ([Profile](StructureDefinition-ch-crl-observation-oestrogenreceptorstatus.html))
   31. Progesterone receptor status (Variable number: 5.1.2) ([Profile](StructureDefinition-ch-crl-observation-progesteronereceptorstatus.html))
   32. Her2 receptor status (Variable number: 5.1.3) ([Profile](StructureDefinition-ch-crl-observation-her2receptorstatus.html), [ValueSet](ValueSet-nkrs-her2receptorstatus.html))
   33. Tumour proliferation labeling (Variable number: 5.1.4) ([Profile](StructureDefinition-ch-crl-observation-tumourproliferationlabeling.html))
   34. Pretreatment Prostate Specific Antigen (PSA) (Variable number: 5.2.1) ([Profile](StructureDefinition-ch-crl-observation-pretreatmentprostatespecificantigen.html))
   35. Gleason biopsy most common grade (Variable number: 5.2.2) ([Profile](StructureDefinition-ch-crl-observation-gleasonbiopsymostcommongrade.html))
   36. Gleason biopsy second most common or highest grade (Variable number: 5.2.3) ([Profile](StructureDefinition-ch-crl-observation-gleasonbiopsy2ndmostcommonorhighestgrade.html))
   37. Gleason excision most common grade (Variable number: 5.2.4) ([Profile](StructureDefinition-ch-crl-observation-gleasonexcisionmostcommongrade.html))
   38. Gleason excision second most common or highest grade (Variable number: 5.2.5) ([Profile](StructureDefinition-ch-crl-observation-gleasonexcision2ndmostcommonorhighestgrade.html))
   39. Gleason score (Variable number: 5.2.6) ([Profile](StructureDefinition-ch-crl-observation-gleasonscore.html))
   40. WHO grade group (Variable number: 5.2.7) ([Profile](StructureDefinition-ch-crl-observation-whogradegroup.html))
   41. Breslow thickness (Variable number: 5.3.1) ([Profile](StructureDefinition-ch-crl-observation-breslowthickness.html))
   42. Circumferential resection margins (Variable number: 5.4.1) ([Profile](StructureDefinition-ch-crl-observation-circumferentialresectionmargins.html))
   43. Microsatellite instability (Variable number: 5.4.2) ([Profile](StructureDefinition-ch-crl-observation-microsatelliteinstability.html))
   44. α-fetoprotein (Variable number: 5.5.1) ([Profile](StructureDefinition-ch-crl-observation-alphafetoprotein.html), [ValueSet](ValueSet-nkrs-alphafetoprotein.html))
   45. β-hCG (Variable number: 5.5.2) ([Profile](StructureDefinition-ch-crl-observation-hcg.html), [ValueSet](ValueSet-nkrs-hcg.html))
   46. LDH (Variable number: 5.5.3) ([Profile](StructureDefinition-ch-crl-observation-ldh.html), [ValueSet](ValueSet-nkrs-ldh.html))
   47. Serum tumour markers (Variable number: 5.5.4) ([Profile](StructureDefinition-ch-crl-observation-serumtumourmarkers.html), [ValueSet](ValueSet-nkrs-serumtumourmarkers.html))
   48. HPV/p16 (Variable number: 5.6.1) ([Profile](StructureDefinition-ch-crl-observation-hpvp16.html))
   49. EBV (Variable number: 5.6.2) ([Profile](StructureDefinition-ch-crl-observation-ebv.html))
   50. Residual invasive tumour (Variable number: 6.1) ([Profile](StructureDefinition-ch-crl-observation-residualinvasivetumour.html), [ValueSet](ValueSet-nkrs-residualinvasivetumour.html))
   51. Residual in-situ tumour (Variable number: 6.2) ([Profile](StructureDefinition-ch-crl-observation-residualinsitutumour.html), [ValueSet](ValueSet-nkrs-residualinsitutumour.html))
   52. Resection margin invasive tumour (Variable number: 6.3) ([Profile](StructureDefinition-ch-crl-observation-resectionmargininvasivetumour.html))  
   53. Resection margin in-situ tumour (Variable number: 6.4) ([Profile](StructureDefinition-ch-crl-observation-resectionmargininsitutumour.html))
   54. Sentinel lymph node assessment (Variable number: 6.5) ([Profile](StructureDefinition-ch-crl-observation-sentinellymphnodeassessment.html), [ValueSet](ValueSet-nkrs-sentinellymphnodeassessment.html))
   55. Number of examined sentinel lymph nodes (Variable number: 6.6) ([Profile](StructureDefinition-ch-crl-observation-numberexaminedsentinellymphnodes.html))
   56. Number of positive sentinel lymph nodes (Variable number: 6.7) ([Profile](StructureDefinition-ch-crl-observation-numberpositivesentinellymphnodes.html))
   57. Basis of first treatment complex decision (Variable number: 7.1) ([Profile](StructureDefinition-ch-crl-encounter-treatmentdecision.html), [ValueSet](ValueSet-nkrs-basisoffirsttreatmentcomplexdecision.html))
   58. Date of first treatment complex decision (Variable number: 7.2.1) ([Profile](StructureDefinition-ch-crl-encounter-treatmentdecision.html))
   59. First treatment complex goal(s) (Variable number: 7.3) ([Profile](StructureDefinition-ch-crl-procedure-treatment.html), [ValueSet](ValueSet-nkrs-treatmentgoal.html))
   60. First treatment complex code(s) (Variable number: 7.4) ([Profile](StructureDefinition-ch-crl-procedure-treatment.html))
   61. First treatment complex start date(s) (Variable number: 7.5.1) ([Profile](StructureDefinition-ch-crl-procedure-treatment.html))
   62. First treatment complex institution(s) (Variable number: 7.6) ([Profile](StructureDefinition-ch-crl-procedure-treatment.html))
   63. Type of recurrence(s)/transformation(s) (Variable number: 8.1) ([Profile](StructureDefinition-ch-crl-observation-typerecurrencetransformation.html), [ValueSet](ValueSet-nkrs-typerecurrencetransformation.html))
   64. Date of recurrence(s)/transformation(s) (Variable number: 8.2.1) ([Profile](StructureDefinition-ch-crl-observation-typerecurrencetransformation.html))
   65. Morphology term before change of main diagnosis (Variable number: 8.4) ([Profile](StructureDefinition-ch-crl-observation-icdo3morphologypretransformation.html))
   66. Morphology term after Transformation (Variable number: 8.5) ([Profile](StructureDefinition-ch-crl-observation-icdo3morphologypretransformation.html))
   67. Topography(s) of post-diagnosis metastases (Variable number: 8.6) ([Profile](StructureDefinition-ch-crl-observation-topographypostdiagnosismetastases.html), [ValueSet](ValueSet-nkrs-topographymetastases.html))
   68. Diabetes mellitus (Variable number: 10.1) ([Profile](StructureDefinition-ch-crl-observation-diabetesmellitus.html), [ValueSet](ValueSet-nkrs-diabetesmellitus.html))
   69. Liver Disease (Variable number: 10.2) ([Profile](StructureDefinition-ch-crl-observation-liverdisease.html), [ValueSet](ValueSet-nkrs-liverdisease.html))
   70. HIV/AIDS (Variable number: 10.3) ([Profile](StructureDefinition-ch-crl-observation-hivaids.html))
   71. Moderate to Severe Chronic Kidney Disease (Variable number: 10.4) ([Profile](StructureDefinition-ch-crl-observation-moderatetoseverechronickidneydisease.html))
   72. Congestive Heart Failure (Variable number: 10.5) ([Profile](StructureDefinition-ch-crl-observation-congestiveheartfailure.html))
   73. Myocardial infarction (Variable number: 10.6) ([Profile](StructureDefinition-ch-crl-observation-myocardialinfarction.html))
   74. Chronic Pulmonary Disease (Variable number: 10.7) ([Profile](StructureDefinition-ch-crl-observation-chronicpulmonarydisease.html))
   75. Peripheral Vascular Disease (Variable number: 10.8) ([Profile](StructureDefinition-ch-crl-observation-peripheralvasculardisease.html))
   76. Cerebrovascular Accident or Transient Ischemic Attack (Variable number: 10.9) ([Profile](StructureDefinition-ch-crl-observation-cvaortia.html)) 
   77. Dementia (Variable number: 10.10) ([Profile](StructureDefinition-ch-crl-observation-dementia.html))
   78. Hemiplegia / Paraplegia (Variable number: 10.11) ([Profile](StructureDefinition-ch-crl-observation-hemiplegiaparaplegia.html))
   79. Connective Tissue Disease - Rheumatic disease (Variable number: 10.12) ([Profile](StructureDefinition-ch-crl-observation-connectivetissuediseaserheumaticdisease.html))
   80. Peptic Ulcer Disease (Variable number: 10.13) ([Profile](StructureDefinition-ch-crl-observation-pepticulcerdisease.html))
   81. Charlson Index (Variable number: 10.14) ([Profile](StructureDefinition-ch-crl-observation-charlsonindex.html))


#### Changed / Updated
* Switch to the new IG template and adaptations to its new requiremenst. This adaptation only slightly changes the appearance of the IG.
* Transformation of the raw source (IG input) into [FHIR Shorthand](http://build.fhir.org/ig/HL7/fhir-shorthand/) files ([.fsh](https://github.com/ahdis/ch-crl/tree/master/input/fsh)). This change has no impact on the IG published as a web page, it just makes it easier to author the FHIR artifacts for the IG.
* Updating the dependency on [CH Core IG](http://fhir.ch/ig/ch-core/index.html) from `current` to the currently published version `2.0.0`.
* Structure of the cancer report document, based on the registration application. **Implementers need to insert sections (with codings and titles) in the Composition to group the references.**
   * [CH CRL Composition Profile](StructureDefinition-ch-crl-composition.html) 
   * [Cancer Report Example](Bundle-BundleUC1bGastro20181201.json.html)
* There have been changes to the NKRS code lists V1.1. **Implementers have to adapt the following codes systems**, which were already integrated in the FHIR Implementation Guide: 
   * [NKRS - Diagnostic Methods Used](CodeSystem-nkrs-diagnosticmethodsused.html)
      * Additional code **23** "Biopsy locoregional or of metastasis"
      * The numerical code of the following elements increases accordingly by 1
   * [NKRS - TNM Stage Group](CodeSystem-nkrs-tnmstagegroup.html) 
      * Additional code **IIID** "Stage IIID"
      * Removed codes **A** "Stage A", **AP** "Stage AP", **B** "Stage B", **BP** "Stage BP", **C** "Stage C", **CP** "Stage CP"
* Add the Extension 'data-absent-reason' to the Procedure for the diagnostic method(s), to support the representation of the value 'unknown'. **Implementers should now be able to support 'unknown' for this Procedure.**
   * [CH CRL Procedure Diagnostic Method Profile](StructureDefinition-ch-crl-procedure-diagnosticmethod.html)
   * [Example with value 'unknown'](Procedure-DiagnosticMethod-Unknown.html)
* [Mapping CH CRL to mCODE](https://docs.google.com/spreadsheets/d/1_qllz1wvfPzW6DO59-l_ochrLFJ9WK-3DZ_9jLS2xOc/edit?usp=sharing) adapted to both new versions.

 
#### Fixed
* [Issue 2](https://github.com/ahdis/ch-crl/issues/2): Replace 'Binding' with 'Fixed value', because it is a code system and not a value set.
* [Issue 6](https://github.com/ahdis/ch-crl/issues/6): Using the official registered URL for the code system [IcdO3](https://terminology.hl7.org/CodeSystem-icd-o-3.html) instead of the OID. **Implementers have to adapt the code system in the instances** ([old example](https://fhir.ch/ig/ch-crl/0.2.1/Observation-ICD-O-3-Morphology.json.html) -> [new example](Observation-ICD-O-3-Morphology.html)).
   * [CH CRL Observation ICD-O-3 Morphology Profile](StructureDefinition-ch-crl-observation-icdo3morphology.html)
   * [CH CRL Observation ICD-O-3 Topography Profile](StructureDefinition-ch-crl-observation-icdo3topography.html) 

*************************

### v0.2.1
Final version 0.2.1 of use case 1b.
* [Implementation Guide](https://fhir.ch/ig/ch-crl/0.2.1/index.html)
* [Release](https://github.com/ahdis/ch-crl/releases/tag/v0.2.1)



### v0.2.0		
Draft version 0.2.0 of use case 1b for public comment.
* [Implementation Guide](https://fhir.ch/ig/ch-crl/0.2.0/index.html)
* [Release](https://github.com/ahdis/ch-crl/releases/tag/v0.2.0)

#### Added
* FHIR artifacts for use case 1b (report as structured data).



### v0.1.1
Final version 0.1.1 of use case 1a.
* [Implementation Guide](https://fhir.ch/ig/ch-crl/0.1.1/index.html)
* [Release](https://github.com/ahdis/ch-crl/releases/tag/v0.1.1)



### v0.1.0
Draft version 0.1.0 of use case 1a for public comment.
* [Implementation Guide](https://fhir.ch/ig/ch-crl/0.1.0/index.html)
* [Release](https://github.com/ahdis/ch-crl/releases/tag/v0.1.0)

#### Added
* FHIR artifacts for use case 1a (report as PDF).
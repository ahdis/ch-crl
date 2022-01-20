
All significant changes to this FHIR implementation guide will be documented on this page.

**Note for implementers:**    
Necessary changes, e.g. due to specification changes or bugs, to existing FHIR artifacts that **affect existing implementations** are **highlighted in bold**.


### v0.9.0
 
#### Added
* Download link for NPM package, see [here](index.html#download).
* Separate tabs for the [use case](usecase-german.html) and the [cancer report (logical model)](logicalmodel.html) for simpler navigation in the IG.
* Set the flag `mustSupport`=true for case-opening criteria, see [here](index.html#case-opening-criteria-and-mustsupport).
* New use case step with example: [Follow-up with a gastroenterologist](usecase-german.html#nachsorge-beim-gastroenterologen).
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
   10. Binet staging (Variable number: 4.27) ([Profile](StructureDefinition-ch-crl-observation-binetstaging.html), [ValueSet](ValueSet-nkrs-binetstaging.html))
   11. DSSplus (Variable number: 4.30) ([Profile](StructureDefinition-ch-crl-observation-dssplus.html), [ValueSet](ValueSet-nkrs-dssplus.html))
   12. Clinical tumour size (Variable number: 4.39) ([Profile](StructureDefinition-ch-crl-observation-clinicaltumoursize.html))
   13. Pathological tumour size (Variable number: 4.40) ([Profile](StructureDefinition-ch-crl-observation-pathologicaltumoursize.html))   
   14. Metastases at diagnosis indicator (Variable number: 4.41) ([Profile](StructureDefinition-ch-crl-observation-metastasesatdiagnosisindicator.html))  
   15. Topography of metastases at diagnosis (Variable number: 4.42) ([Profile](StructureDefinition-ch-crl-observation-topographymetastasesatdiagnosis.html), [ValueSet](ValueSet-nkrs-topographymetastases.html))
   16. Oestrogen receptor status (Variable number: 5.1.1) ([Profile](StructureDefinition-ch-crl-observation-oestrogenreceptorstatus.html))
   17. Progesterone receptor status (Variable number: 5.1.2) ([Profile](StructureDefinition-ch-crl-observation-progesteronereceptorstatus.html))
   18. Her2 receptor status (Variable number: 5.1.3) ([Profile](StructureDefinition-ch-crl-observation-her2receptorstatus.html), [ValueSet](ValueSet-nkrs-her2receptorstatus.html))
   19. Tumour proliferation labeling (Variable number: 5.1.4) ([Profile](StructureDefinition-ch-crl-observation-tumourproliferationlabeling.html))
   20. Pretreatment Prostate Specific Antigen (PSA) (Variable number: 5.2.1) ([Profile](StructureDefinition-ch-crl-observation-pretreatmentprostatespecificantigen.html))
   21. Gleason biopsy most common grade (Variable number: 5.2.2) ([Profile](StructureDefinition-ch-crl-observation-gleasonbiopsymostcommongrade.html))
   22. Gleason biopsy second most common or highest grade (Variable number: 5.2.3) ([Profile](StructureDefinition-ch-crl-observation-gleasonbiopsysecondmostcommonorhighestgrade.html))
   23. Gleason excision most common grade (Variable number: 5.2.4) ([Profile](StructureDefinition-ch-crl-observation-gleasonexcisionmostcommongrade.html))
   24. Gleason excision second most common or highest grade (Variable number: 5.2.5) ([Profile](StructureDefinition-ch-crl-observation-gleasonexcisionsecondmostcommonorhighestgrade.html))
   25. Gleason score (Variable number: 5.2.6) ([Profile](StructureDefinition-ch-crl-observation-gleasonscore.html))
   26. WHO grade group (Variable number: 5.2.7) ([Profile](StructureDefinition-ch-crl-observation-whogradegroup.html))
   27. Breslow thickness (Variable number: 5.3.1) ([Profile](StructureDefinition-ch-crl-observation-breslowthickness.html))
   28. Circumferential resection margins (Variable number: 5.4.1) ([Profile](StructureDefinition-ch-crl-observation-circumferentialresectionmargins.html))
   29. Microsatellite instability (Variable number: 5.4.2) ([Profile](StructureDefinition-ch-crl-observation-microsatelliteinstability.html))
   30. α-fetoprotein (Variable number: 5.5.1) ([Profile](StructureDefinition-ch-crl-observation-alphafetoprotein.html), [ValueSet](ValueSet-nkrs-alphafetoprotein.html))
   31. β-hCG (Variable number: 5.5.2) ([Profile](StructureDefinition-ch-crl-observation-hcg.html), [ValueSet](ValueSet-nkrs-hcg.html))
   32. LDH (Variable number: 5.5.3) ([Profile](StructureDefinition-ch-crl-observation-ldh.html), [ValueSet](ValueSet-nkrs-ldh.html))
   33. Serum tumour markers (Variable number: 5.5.4) ([Profile](StructureDefinition-ch-crl-observation-serumtumourmarkers.html), [ValueSet](ValueSet-nkrs-serumtumourmarkers.html))
   34. HPV/p16 (Variable number: 5.6.1) ([Profile](StructureDefinition-ch-crl-observation-hpvp16.html))
   35. EBV (Variable number: 5.6.2) ([Profile](StructureDefinition-ch-crl-observation-ebv.html))
   36. Residual invasive tumour (Variable number: 6.1) ([Profile](StructureDefinition-ch-crl-observation-residualinvasivetumour.html), [ValueSet](ValueSet-nkrs-residualinvasivetumour.html))
   37. Residual in-situ tumour (Variable number: 6.2) ([Profile](StructureDefinition-ch-crl-observation-residualinsitutumour.html), [ValueSet](ValueSet-nkrs-residualinsitutumour.html))
   38. Resection margin invasive tumour (Variable number: 6.3) ([Profile](StructureDefinition-ch-crl-observation-resectionmargininvasivetumour.html))  
   39. Resection margin in-situ tumour (Variable number: 6.4) ([Profile](StructureDefinition-ch-crl-observation-resectionmargininsitutumour.html))
   40. Sentinel lymph node assessment (Variable number: 6.5) ([Profile](StructureDefinition-ch-crl-observation-sentinellymphnodeassessment.html), [ValueSet](ValueSet-nkrs-sentinellymphnodeassessment.html))
   41. Number of examined sentinel lymph nodes (Variable number: 6.6) ([Profile](StructureDefinition-ch-crl-observation-numberexaminedsentinellymphnodes.html))
   42. Number of positive sentinel lymph nodes (Variable number: 6.7) ([Profile](StructureDefinition-ch-crl-observation-numberpositivesentinellymphnodes.html))
   43. Basis of first treatment complex decision (Variable number: 7.1) ([Profile](StructureDefinition-ch-crl-encounter-treatmentdecision.html), [ValueSet](ValueSet-nkrs-basisoffirsttreatmentcomplexdecision.html))
   44. Date of first treatment complex decision (Variable number: 7.2.1) ([Profile](StructureDefinition-ch-crl-encounter-treatmentdecision.html))
   45. First treatment complex goal(s) (Variable number: 7.3) ([Profile](StructureDefinition-ch-crl-procedure-treatment.html), [ValueSet](ValueSet-nkrs-treatmentgoal.html))
   46. First treatment complex code(s) (Variable number: 7.4) ([Profile](StructureDefinition-ch-crl-procedure-treatment.html))
   47. First treatment complex start date(s) (Variable number: 7.5.1) ([Profile](StructureDefinition-ch-crl-procedure-treatment.html))
   48. First treatment complex institution(s) (Variable number: 7.6) ([Profile](StructureDefinition-ch-crl-procedure-treatment.html))
   49. Type of recurrence(s)/transformation(s) (Variable number: 8.1) ([Profile](StructureDefinition-ch-crl-observation-typerecurrencetransformation.html), [ValueSet](ValueSet-nkrs-typerecurrencetransformation.html))
   50. Date of recurrence(s)/transformation(s) (Variable number: 8.2.1) ([Profile](StructureDefinition-ch-crl-observation-typerecurrencetransformation.html))
   51. Morphology term before change of main diagnosis (Variable number: 8.4) ([Profile](StructureDefinition-ch-crl-observation-icdo3morphologypretransformation.html))
   52. Morphology term after Transformation (Variable number: 8.5) ([Profile](StructureDefinition-ch-crl-observation-icdo3morphologypretransformation.html))
   53. Topography(s) of post-diagnosis metastases (Variable number: 8.6) ([Profile](StructureDefinition-ch-crl-observation-topographypostdiagnosismetastases.html), [ValueSet](ValueSet-nkrs-topographymetastases.html))
   54. Diabetes mellitus (Variable number: 10.1) ([Profile](StructureDefinition-ch-crl-observation-diabetesmellitus.html))
   55. Congestive Heart Failure (Variable number: 10.5) ([Profile](StructureDefinition-ch-crl-observation-congestiveheartfailure.html))
   56. Charlson Index (Variable number: 10.14) ([Profile](StructureDefinition-ch-crl-observation-charlsonindex.html))


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
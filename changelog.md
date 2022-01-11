# Change Log for Implementation Guide CH CRL
All notable changes to this project will be documented in this file.   

## Note for implementers 
Necessary changes, e.g. due to specification changes or bugs, to existing FHIR artifacts that **affect existing implementations** are **highlighted in bold**.

## Versions    
  - [v0.9.0 - 2022-01-xx](#v090---2022-01-xx)
  - [v0.2.1 - 2019-12-20](#v021---2019-12-20)
  - [v0.2.0 - 2019-11-18](#v020---2019-11-18)
  - [v0.1.1 - 2019-11-11](#v011---2019-11-11)
  - [v0.1.0 - 2019-09-02](#v010---2019-09-02)
 
********************************
## v0.9.0 - 2022-01-xx
 
### Added
* Download link for NPM package.
* Separate tabs for the use case and the cancer report (logical model) for simpler navigation in the IG.
* Set the flag `mustSupport`=true for case-opening criteria, see [here](http://build.fhir.org/ig/ahdis/ch-crl/index.html#case-opening-criteria-and-mustsupport).
* More NKRS variables with profiles, examples and terminology.* 
   1. Method of first detection (Variable number: 2.6) ([Profile](http://build.fhir.org/ig/ahdis/ch-crl/StructureDefinition-ch-crl-procedure-methodfirstdetection.html), [ValueSet](http://build.fhir.org/ig/ahdis/ch-crl/ValueSet-nkrs-methodfirstdetection.html))
   2. Associated in situ tumour (Variable number: 3.6.2) ([Profile](http://build.fhir.org/ig/ahdis/ch-crl/StructureDefinition-ch-crl-observation-associatedinsitutumour.html)) 
   3. ICCC-3 main group (Variable number: 3.9.1) ([Profile](http://build.fhir.org/ig/ahdis/ch-crl/StructureDefinition-ch-crl-observation-iccc3maingroup.html), [ValueSet](http://build.fhir.org/ig/ahdis/ch-crl/ValueSet-nkrs-iccc3maingroup.html))
   4. ICCC-3 code (Variable number: 3.9.2) ([Profile](http://build.fhir.org/ig/ahdis/ch-crl/StructureDefinition-ch-crl-observation-iccc3code.html), [ValueSet](http://build.fhir.org/ig/ahdis/ch-crl/ValueSet-nkrs-iccc3code.html))
   5. ICCC-3 extended code (Variable number: 3.9.3) ([Profile](http://build.fhir.org/ig/ahdis/ch-crl/StructureDefinition-ch-crl-observation-iccc3extendedcode.html), [ValueSet](http://build.fhir.org/ig/ahdis/ch-crl/ValueSet-nkrs-iccc3extendedcode.html))
   6. Ann Arbor staging (Variable number: 4.18) ([Profile](http://build.fhir.org/ig/ahdis/ch-crl/StructureDefinition-ch-crl-observation-annarborstaging.html), [ValueSet](http://build.fhir.org/ig/ahdis/ch-crl/ValueSet-nkrs-annarborstaging.html))
   7. Clinical tumour size (Variable number: 4.39) ([Profile](http://build.fhir.org/ig/ahdis/ch-crl/StructureDefinition-ch-crl-observation-clinicaltumoursize.html))
   8. Pathological tumour size (Variable number: 4.40) ([Profile](http://build.fhir.org/ig/ahdis/ch-crl/StructureDefinition-ch-crl-observation-pathologicaltumoursize.html))   
   9. Metastases at diagnosis indicator (Variable number: 4.41) ([Profile](http://build.fhir.org/ig/ahdis/ch-crl/StructureDefinition-ch-crl-observation-metastasesatdiagnosisindicator.html))  
   10. Topography of metastases at diagnosis (Variable number: 4.42) ([Profile](http://build.fhir.org/ig/ahdis/ch-crl/StructureDefinition-ch-crl-observation-topographymetastasesatdiagnosis.html), [ValueSet](http://build.fhir.org/ig/ahdis/ch-crl/ValueSet-nkrs-topographymetastases.html))
   11. Oestrogen receptor status (Variable number: 5.1.1) ([Profile](http://build.fhir.org/ig/ahdis/ch-crl/StructureDefinition-ch-crl-observation-oestrogenreceptorstatus.html))
   12. Progesterone receptor status (Variable number: 5.1.2) ([Profile](http://build.fhir.org/ig/ahdis/ch-crl/StructureDefinition-ch-crl-observation-progesteronereceptorstatus.html))
   13. Her2 receptor status (Variable number: 5.1.3) ([Profile](http://build.fhir.org/ig/ahdis/ch-crl/StructureDefinition-ch-crl-observation-her2receptorstatus.html), [ValueSet](http://build.fhir.org/ig/ahdis/ch-crl/ValueSet-nkrs-her2receptorstatus.html))
   14. Tumour proliferation labeling (Variable number: 5.1.4) ([Profile](http://build.fhir.org/ig/ahdis/ch-crl/StructureDefinition-ch-crl-observation-tumourproliferationlabeling.html))
   15. Pretreatment Prostate Specific Antigen (PSA) (Variable number: 5.2.1) ([Profile](http://build.fhir.org/ig/ahdis/ch-crl/StructureDefinition-ch-crl-observation-pretreatmentprostatespecificantigen.html))
   16. Gleason biopsy most common grade (Variable number: 5.2.2) ([Profile](http://build.fhir.org/ig/ahdis/ch-crl/StructureDefinition-ch-crl-observation-gleasonbiopsymostcommongrade.html))
   17. Gleason biopsy second most common or highest grade (Variable number: 5.2.3) ([Profile](http://build.fhir.org/ig/ahdis/ch-crl/StructureDefinition-ch-crl-observation-gleasonbiopsysecondmostcommonorhighestgrade.html))
   18. Gleason excision most common grade (Variable number: 5.2.4) ([Profile](http://build.fhir.org/ig/ahdis/ch-crl/StructureDefinition-ch-crl-observation-gleasonexcisionmostcommongrade.html))
   19. Gleason excision second most common or highest grade (Variable number: 5.2.5) ([Profile](http://build.fhir.org/ig/ahdis/ch-crl/StructureDefinition-ch-crl-observation-gleasonexcisionsecondmostcommonorhighestgrade.html))
   20. Gleason score (Variable number: 5.2.6) ([Profile](http://build.fhir.org/ig/ahdis/ch-crl/StructureDefinition-ch-crl-observation-gleasonscore.html))
   21. WHO grade group (Variable number: 5.2.7) ([Profile](http://build.fhir.org/ig/ahdis/ch-crl/StructureDefinition-ch-crl-observation-whogradegroup.html))
   22. Breslow thickness (Variable number: 5.3.1) ([Profile](http://build.fhir.org/ig/ahdis/ch-crl/StructureDefinition-ch-crl-observation-breslowthickness.html))
   23. Circumferential resection margins (Variable number: 5.4.1) ([Profile](http://build.fhir.org/ig/ahdis/ch-crl/StructureDefinition-ch-crl-observation-circumferentialresectionmargins.html))
   24. Microsatellite instability (Variable number: 5.4.2) ([Profile](http://build.fhir.org/ig/ahdis/ch-crl/StructureDefinition-ch-crl-observation-microsatelliteinstability.html))
   25. α-fetoprotein (Variable number: 5.5.1) ([Profile](http://build.fhir.org/ig/ahdis/ch-crl/StructureDefinition-ch-crl-observation-alphafetoprotein.html), [ValueSet](http://build.fhir.org/ig/ahdis/ch-crl/ValueSet-nkrs-alphafetoprotein.html))
   26. β-hCG (Variable number: 5.5.2) ([Profile](http://build.fhir.org/ig/ahdis/ch-crl/StructureDefinition-ch-crl-observation-hcg.html), [ValueSet](http://build.fhir.org/ig/ahdis/ch-crl/ValueSet-nkrs-hcg.html))
   27. LDH (Variable number: 5.5.3) ([Profile](http://build.fhir.org/ig/ahdis/ch-crl/StructureDefinition-ch-crl-observation-ldh.html), [ValueSet](http://build.fhir.org/ig/ahdis/ch-crl/ValueSet-nkrs-ldh.html))
   28. Serum tumour markers (Variable number: 5.5.4) ([Profile](http://build.fhir.org/ig/ahdis/ch-crl/StructureDefinition-ch-crl-observation-serumtumourmarkers.html), [ValueSet](http://build.fhir.org/ig/ahdis/ch-crl/ValueSet-nkrs-serumtumourmarkers.html))
   29. HPV/p16 (Variable number: 5.6.1) ([Profile](http://build.fhir.org/ig/ahdis/ch-crl/StructureDefinition-ch-crl-observation-hpvp16.html))
   30. EBV (Variable number: 5.6.2) ([Profile](http://build.fhir.org/ig/ahdis/ch-crl/StructureDefinition-ch-crl-observation-ebv.html))
   31. Residual invasive tumour (Variable number: 6.1) ([Profile](http://build.fhir.org/ig/ahdis/ch-crl/StructureDefinition-ch-crl-observation-residualinvasivetumour.html), [ValueSet](http://build.fhir.org/ig/ahdis/ch-crl/ValueSet-nkrs-residualinvasivetumour.html))
   32. Residual in-situ tumour (Variable number: 6.2) ([Profile](http://build.fhir.org/ig/ahdis/ch-crl/StructureDefinition-ch-crl-observation-residualinsitutumour.html), [ValueSet](http://build.fhir.org/ig/ahdis/ch-crl/ValueSet-nkrs-residualinsitutumour.html))
   33. Resection margin invasive tumour (Variable number: 6.3) ([Profile](http://build.fhir.org/ig/ahdis/ch-crl/StructureDefinition-ch-crl-observation-resectionmargininvasivetumour.html))  
   34. Resection margin in-situ tumour (Variable number: 6.4) ([Profile](http://build.fhir.org/ig/ahdis/ch-crl/StructureDefinition-ch-crl-observation-resectionmargininsitutumour.html))
   35. Sentinel lymph node assessment (Variable number: 6.5) ([Profile](http://build.fhir.org/ig/ahdis/ch-crl/StructureDefinition-ch-crl-observation-sentinellymphnodeassessment.html), [ValueSet](http://build.fhir.org/ig/ahdis/ch-crl/ValueSet-nkrs-sentinellymphnodeassessment.html))
   36. Number of examined sentinel lymph nodes (Variable number: 6.6) ([Profile](http://build.fhir.org/ig/ahdis/ch-crl/StructureDefinition-ch-crl-observation-numberexaminedsentinellymphnodes.html))
   37. Number of positive sentinel lymph nodes (Variable number: 6.7) ([Profile](http://build.fhir.org/ig/ahdis/ch-crl/StructureDefinition-ch-crl-observation-numberpositivesentinellymphnodes.html))
   38. Basis of first treatment complex decision (Variable number: 7.1) ([Profile](http://build.fhir.org/ig/ahdis/ch-crl/StructureDefinition-ch-crl-encounter-treatmentdecision.html), [ValueSet](http://build.fhir.org/ig/ahdis/ch-crl/ValueSet-nkrs-basisoffirsttreatmentcomplexdecision.html))
   39. Date of first treatment complex decision (Variable number: 7.2.1) ([Profile](http://build.fhir.org/ig/ahdis/ch-crl/StructureDefinition-ch-crl-encounter-treatmentdecision.html))
   40. First treatment complex goal(s) (Variable number: 7.3) ([Profile](http://build.fhir.org/ig/ahdis/ch-crl/StructureDefinition-ch-crl-procedure-treatment.html), [ValueSet](http://build.fhir.org/ig/ahdis/ch-crl/ValueSet-nkrs-treatmentgoal.html))
   41. First treatment complex code(s) (Variable number: 7.4) ([Profile](http://build.fhir.org/ig/ahdis/ch-crl/StructureDefinition-ch-crl-procedure-treatment.html))
   42. First treatment complex start date(s) (Variable number: 7.5.1) ([Profile](http://build.fhir.org/ig/ahdis/ch-crl/StructureDefinition-ch-crl-procedure-treatment.html))
   43. First treatment complex institution(s) (Variable number: 7.6) ([Profile](http://build.fhir.org/ig/ahdis/ch-crl/StructureDefinition-ch-crl-procedure-treatment.html))
   44. Type of recurrence(s)/transformation(s) (Variable number: 8.1) ([Profile](http://build.fhir.org/ig/ahdis/ch-crl/StructureDefinition-ch-crl-observation-typerecurrencetransformation.html), [ValueSet](http://build.fhir.org/ig/ahdis/ch-crl/ValueSet-nkrs-typerecurrencetransformation.html))
   45. Date of recurrence(s)/transformation(s) (Variable number: 8.2.1) ([Profile](http://build.fhir.org/ig/ahdis/ch-crl/StructureDefinition-ch-crl-observation-typerecurrencetransformation.html))
   46. Morphology term before change of main diagnosis (Variable number: 8.4) ([Profile](http://build.fhir.org/ig/ahdis/ch-crl/StructureDefinition-ch-crl-observation-icdo3morphologypretransformation.html))
   47. Morphology term after Transformation (Variable number: 8.5) ([Profile](http://build.fhir.org/ig/ahdis/ch-crl/StructureDefinition-ch-crl-observation-icdo3morphologypretransformation.html))
   48. Topography(s) of post-diagnosis metastases (Variable number: 8.6) ([Profile](http://build.fhir.org/ig/ahdis/ch-crl/StructureDefinition-ch-crl-observation-topographypostdiagnosismetastases.html), [ValueSet](http://build.fhir.org/ig/ahdis/ch-crl/ValueSet-nkrs-topographymetastases.html))
* New use case step with example: [Follow-up with a gastroenterologist](http://build.fhir.org/ig/ahdis/ch-crl/branches/master/usecase-german.html#nachsorge-beim-gastroenterologen).


### Changed / Updated
* Switch to the new IG template and adaptations to its new requiremenst. This adaptation only slightly changes the appearance of the IG.
* Transformation of the raw source (IG input) into [FHIR Shorthand](http://build.fhir.org/ig/HL7/fhir-shorthand/) files (.fsh). This change has no impact on the IG published as a web page, it just makes it easier to author the FHIR artifacts for the IG.
* Updating the dependency on CH Core from 'current' to the currently published version '2.0.0'.
* Structure of the cancer report document, based on the registration application. **Implementers need to insert sections (with codings and titles) in the Composition to group the references.**
   * [CH CRL Composition Profile](http://build.fhir.org/ig/ahdis/ch-crl/StructureDefinition-ch-crl-composition.html) 
   * [Cancer Report Example](http://build.fhir.org/ig/ahdis/ch-crl/Bundle-BundleUC1bGastro20181201.json.html)
* There have been changes to the NKRS code lists V1.1. **Implementers have to adapt the following codes systems**, which were already integrated in the FHIR Implementation Guide: 
   * [NKRS - Diagnostic Methods Used](http://build.fhir.org/ig/ahdis/ch-crl/CodeSystem-nkrs-diagnosticmethodsused.html)
      * Additional code **23** "Biopsy locoregional or of metastasis"
      * The numerical code of the following elements increases accordingly by 1
   * [NKRS - TNM Stage Group](http://build.fhir.org/ig/ahdis/ch-crl/CodeSystem-nkrs-tnmstagegroup.html) 
      * Additional code **IIID** "Stage IIID"
      * Removed codes **A** "Stage A", **AP** "Stage AP", **B** "Stage B", **BP** "Stage BP", **C** "Stage C", **CP** "Stage CP"
* Add the Extension 'data-absent-reason' to the Procedure for the diagnostic method(s), to support the representation of the value 'unknown'. **Implementers should now be able to support 'unknown' for this Procedure.**
   * [CH CRL Procedure Diagnostic Method Profile](http://build.fhir.org/ig/ahdis/ch-crl/branches/master/StructureDefinition-ch-crl-procedure-diagnosticmethod.html)
   * [Example with value 'unknown'](http://build.fhir.org/ig/ahdis/ch-crl/branches/master/Procedure-DiagnosticMethod-Unknown.html)

 
### Fixed
* [Issue 2](https://github.com/ahdis/ch-crl/issues/2): Replace 'Binding' with 'Fixed value', because it is a code system and not a value set.
* [Issue 6](https://github.com/ahdis/ch-crl/issues/6): Using the official registered URL for the code system [IcdO3](https://terminology.hl7.org/CodeSystem-icd-o-3.html) instead of the OID. **Implementers have to adapt the code system in the instances** ([old ex.](https://fhir.ch/ig/ch-crl/0.2.1/Observation-ICD-O-3-Morphology.json.html) -> [new ex.](http://build.fhir.org/ig/ahdis/ch-crl/Observation-ICD-O-3-Morphology.html)).
   * [CH CRL Observation ICD-O-3 Morphology Profile](http://build.fhir.org/ig/ahdis/ch-crl/StructureDefinition-ch-crl-observation-icdo3morphology.html)
   * [CH CRL Observation ICD-O-3 Topography Profile](http://build.fhir.org/ig/ahdis/ch-crl/StructureDefinition-ch-crl-observation-icdo3topography.html) 


*************************

## v0.2.1 - 2019-12-20
Final version 0.2.1 of use case 1b
* [Implementation Guide](https://fhir.ch/ig/ch-crl/0.2.1/index.html)
* [Release](https://github.com/ahdis/ch-crl/releases/tag/v0.2.1)



## v0.2.0 - 2019-11-18		
Draft version 0.2.0 of use case 1b for public comment
* [Implementation Guide](https://fhir.ch/ig/ch-crl/0.2.0/index.html)
* [Release](https://github.com/ahdis/ch-crl/releases/tag/v0.2.0)

### Added
* FHIR artifacts for use case 1b (report as structured data)



## v0.1.1 - 2019-11-11
Final version 0.1.1 of use case 1a
* [Implementation Guide](https://fhir.ch/ig/ch-crl/0.1.1/index.html)
* [Release](https://github.com/ahdis/ch-crl/releases/tag/v0.1.1)



## v0.1.0 - 2019-09-02
Draft version 0.1.0 of use case 1a for public comment
* [Implementation Guide](https://fhir.ch/ig/ch-crl/0.1.0/index.html)
* [Release](https://github.com/ahdis/ch-crl/releases/tag/v0.1.0)

### Added
* FHIR artifacts for use case 1a (report as PDF)
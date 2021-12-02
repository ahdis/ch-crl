# Change Log for Implementation Guide CH CRL
All notable changes to this project will be documented in this file.   

## Note for implementers 
Necessary changes, e.g. due to specification changes or bugs, to existing FHIR artifacts that **affect existing implementations** are **highlighted in bold**.

## Versions    
  - [v0.9.0 - 2021-12-xx](#v090---2021-12-xx)
  - [v0.2.1 - 2019-12-20](#v021---2019-12-20)
  - [v0.2.0 - 2019-11-18](#v020---2019-11-18)
  - [v0.1.1 - 2019-11-11](#v011---2019-11-11)
  - [v0.1.0 - 2019-09-02](#v010---2019-09-02)
 
********************************
## v0.9.0 - 2021-12-xx
 
### Added
* Download link for NPM package.
* Separate tabs for the use case and the cancer report (logical model) for simpler navigation in the IG.
* Set the flag `mustSupport`=true for case-opening criteria, see [here](http://build.fhir.org/ig/ahdis/ch-crl/index.html#case-opening-criteria-and-mustsupport).
* More NKRS variables with profiles, examples and terminology.
   1. Method of first detection (Variable number: 2.6) ([Profile](http://build.fhir.org/ig/ahdis/ch-crl/StructureDefinition-ch-crl-procedure-methodfirstdetection.html), [ValueSet](http://build.fhir.org/ig/ahdis/ch-crl/ValueSet-nkrs-methodfirstdetection.html))
   2. Associated in situ tumour (Variable number: 3.6.2) ([Profile](http://build.fhir.org/ig/ahdis/ch-crl/StructureDefinition-ch-crl-observation-associatedinsitutumour.html)) 
   3. Clinical tumour size (Variable number: 4.39) ([Profile](http://build.fhir.org/ig/ahdis/ch-crl/StructureDefinition-ch-crl-observation-clinicaltumoursize.html))
   4. Pathological tumour size (Variable number: 4.40) ([Profile](http://build.fhir.org/ig/ahdis/ch-crl/StructureDefinition-ch-crl-observation-pathologicaltumoursize.html))   
   5. Metastases at diagnosis indicator (Variable number: 4.41) ([Profile](http://build.fhir.org/ig/ahdis/ch-crl/StructureDefinition-ch-crl-observation-metastasesatdiagnosisindicator.html))  
   6. Topography of metastases at diagnosis (Variable number: 4.42) ([Profile](http://build.fhir.org/ig/ahdis/ch-crl/StructureDefinition-ch-crl-observation-topographymetastasesatdiagnosis.html), [ValueSet](http://build.fhir.org/ig/ahdis/ch-crl/ValueSet-nkrs-topographymetastasesatdiagnosis.html))
   7. Oestrogen receptor status (Variable number: 5.1.1) ([Profile](http://build.fhir.org/ig/ahdis/ch-crl/StructureDefinition-ch-crl-observation-oestrogenreceptorstatus.html))
   8. Progesterone receptor status (Variable number: 5.1.2) ([Profile](http://build.fhir.org/ig/ahdis/ch-crl/StructureDefinition-ch-crl-observation-progesteronereceptorstatus.html))
   9. Her2 receptor status (Variable number: 5.1.3) ([Profile](http://build.fhir.org/ig/ahdis/ch-crl/StructureDefinition-ch-crl-observation-her2receptorstatus.html), [ValueSet](http://build.fhir.org/ig/ahdis/ch-crl/ValueSet-nkrs-her2receptorstatus.html))
   10. Tumour proliferation labeling (Variable number: 5.1.4) ([Profile](http://build.fhir.org/ig/ahdis/ch-crl/StructureDefinition-ch-crl-observation-tumourproliferationlabeling.html))
   11. Pretreatment Prostate Specific Antigen (PSA) (Variable number: 5.2.1) ([Profile](http://build.fhir.org/ig/ahdis/ch-crl/StructureDefinition-ch-crl-observation-pretreatmentprostatespecificantigen.html))
   12. Residual invasive tumour (Variable number: 6.1) ([Profile](http://build.fhir.org/ig/ahdis/ch-crl/StructureDefinition-ch-crl-observation-residualinvasivetumour.html), [ValueSet](http://build.fhir.org/ig/ahdis/ch-crl/ValueSet-nkrs-residualinvasivetumour.html))
   13. Residual in-situ tumour (Variable number: 6.2) ([Profile](http://build.fhir.org/ig/ahdis/ch-crl/StructureDefinition-ch-crl-observation-residualinsitutumour.html), [ValueSet](http://build.fhir.org/ig/ahdis/ch-crl/ValueSet-nkrs-residualinsitutumour.html))
   14. Resection margin invasive tumour (Variable number: 6.3) ([Profile](http://build.fhir.org/ig/ahdis/ch-crl/StructureDefinition-ch-crl-observation-resectionmargininvasivetumour.html))  
   15. Resection margin in-situ tumour (Variable number: 6.4) ([Profile](http://build.fhir.org/ig/ahdis/ch-crl/StructureDefinition-ch-crl-observation-resectionmargininsitutumour.html))
   16. Sentinel lymph node assessment (Variable number: 6.5) ([Profile](http://build.fhir.org/ig/ahdis/ch-crl/StructureDefinition-ch-crl-observation-sentinellymphnodeassessment.html), [ValueSet](http://build.fhir.org/ig/ahdis/ch-crl/ValueSet-nkrs-sentinellymphnodeassessment.html))
   17. Number of examined sentinel lymph nodes (Variable number: 6.6) ([Profile](http://build.fhir.org/ig/ahdis/ch-crl/StructureDefinition-ch-crl-observation-numberexaminedsentinellymphnodes.html))
   18. Number of positive sentinel lymph nodes (Variable number: 6.7) ([Profile](http://build.fhir.org/ig/ahdis/ch-crl/StructureDefinition-ch-crl-observation-numberpositivesentinellymphnodes.html))
   
### Changed / Updated
* Switch to the new IG template and adaptations to its new requiremenst. This adaptation only slightly changes the appearance of the IG.
* Transformation of the raw source (IG input) into [FHIR Shorthand](http://build.fhir.org/ig/HL7/fhir-shorthand/) files (.fsh). This change has no impact on the IG published as a web page, it just makes it easier to author the FHIR artifacts for the IG.
* Updating the dependency on CH Core from 'current' to the currently published version '2.0.0'.
* Structure of the cancer report document, based on the registration application. **Implementers need to insert sections (with codings and titles) in the Composition to group the references.**
   * [CH CRL Composition Profile](http://build.fhir.org/ig/ahdis/ch-crl/StructureDefinition-ch-crl-composition.html) 
   * [Cancer Report Example](http://build.fhir.org/ig/ahdis/ch-crl/Bundle-BundleStructuredData.html)
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
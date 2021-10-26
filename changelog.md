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
   
### Changed / Updated
* Switch to the new IG template and adaptations to its new requiremenst. This adaptation only slightly changes the appearance of the IG.
* Transformation of the raw source (IG input) into [FHIR Shorthand](http://build.fhir.org/ig/HL7/fhir-shorthand/) files (.fsh). This change has no impact on the IG published as a web page, it just makes it easier to author the FHIR artifacts for the IG.
* Updating the dependency on CH Core from 'current' to the currently published version '2.0.0'.
* Structure of the cancer report document, based on the registration application. **Implementers need to insert sections (with titles) in the Composition to group the references**.
   * [CH CRL Composition Profile](http://build.fhir.org/ig/ahdis/ch-crl/StructureDefinition-ch-crl-composition.html) 
   * [Cancer Report example](http://build.fhir.org/ig/ahdis/ch-crl/Bundle-BundleStructuredData.html)
* There have been changes to the NKRS code lists V1.1. **Implementers have to adapt the following codes systems**, which were already integrated in the FHIR Implementation Guide: 
   * [NKRS - Diagnostic Methods Used](http://build.fhir.org/ig/ahdis/ch-crl/CodeSystem-nkrs-diagnosticmethodsused.html)
      * Additional code **23** "Biopsy locoregional or of metastasis"
      * The numerical code of the following elements increases accordingly by 1
   * [NKRS - TNM Stage Group](http://build.fhir.org/ig/ahdis/ch-crl/CodeSystem-nkrs-tnmstagegroup.html) 
      * Additional code **IIID** "Stage IIID"
      * Removed codes **A** "Stage A", **AP** "Stage AP", **B** "Stage B", **BP** "Stage BP", **C** "Stage C", **CP** "Stage CP"

 
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
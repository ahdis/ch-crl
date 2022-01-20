Profile: CHCRLObservationBinetStaging
Parent: Observation
Id: ch-crl-observation-binetstaging
Title: "CH CRL Observation Binet Staging"
Description: "Definition of the Observation for the Binet staging"
* obeys ch-crl-obs-1
* . ^short = "CH CRL Observation Binet Staging"
* code 1..
* code = $sct#1149099005 "Binet staging classification for chronic lymphocytic leukemia (tumor staging)"
* subject 1..
* subject only Reference(CHCRLPatient)
* subject ^short = "Patient"
* subject.reference 1..
* effectiveDateTime 1..
* performer only Reference(CHCRLPractitioner or CHCRLOrganizationDepartment)
* performer ^short = "Practitioner if resident physician or Organization Department if hospital"
* performer.reference 1..

* valueCodeableConcept from NkrsBinetStaging (required)
* valueCodeableConcept ^short = "The stage of Chronic Lymphocytic Leukaemia (CLL) based on the cell count in the blood and 
bone marrow (lymphocytes, platelets), haemoglobin/ haematocrit, lymph nodes involvement, hepato- and/or splenomegaly."
* valueCodeableConcept.coding 1..*
* valueCodeableConcept.coding.system 1..
* valueCodeableConcept.coding.code 1..
* valueCodeableConcept.coding.display 1..

* dataAbsentReason ^short = "The stage of Chronic Lymphocytic Leukaemia (CLL) is not stated / not assessed"
* dataAbsentReason.coding 1..*
* dataAbsentReason.coding.system 1..
* dataAbsentReason.coding.system = "http://terminology.hl7.org/CodeSystem/data-absent-reason" (exactly)
* dataAbsentReason.coding.code 1..
* dataAbsentReason.coding.code = #unknown (exactly)
* dataAbsentReason.coding.display 1..
* dataAbsentReason.coding.display = "Unknown" (exactly)


Mapping: NICER-A-for-CHCRLObservationBinetStaging
Id: NICER-A
Title: "NATIONAL CANCER DATA DICTIONARY, V 1.1, Part A: BASIC VARIABLES for Adults, Adolescents, and Children"
Source: CHCRLObservationBinetStaging
Target: "https://www.nacr.ch/assets/files/uploads/a-datadictionary-basicvariables-v1.1.pdf"
* -> "Binet staging (Variable number: 4.27)"


Instance: BinetStaging-B
InstanceOf: CHCRLObservationBinetStaging
Title: "Binet Staging - B"
Description: "Example for Observation for the Binet staging"
Usage: #example
* status = #final
* code = $sct#1149099005 "Binet staging classification for chronic lymphocytic leukemia (tumor staging)"
* subject = Reference(FranzMinimum)
* effectiveDateTime = "2018-12-15"
* valueCodeableConcept = $nkrs-binetstaging#B "Stage B"


Instance: BinetStaging-Unknown
InstanceOf: CHCRLObservationBinetStaging
Title: "Binet Staging - Unknown"
Description: "Example for Observation for the Binet staging"
Usage: #example
* status = #final
* code = $sct#1149099005 "Binet staging classification for chronic lymphocytic leukemia (tumor staging)"
* subject = Reference(FranzMinimum)
* effectiveDateTime = "2018-12-15"
* dataAbsentReason = $data-absent-reason#unknown "Unknown"
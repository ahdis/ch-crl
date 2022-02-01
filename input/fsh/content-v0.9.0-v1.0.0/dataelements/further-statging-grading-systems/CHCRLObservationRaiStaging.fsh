Profile: CHCRLObservationRaiStaging
Parent: Observation
Id: ch-crl-observation-raistaging
Title: "CH CRL Observation Rai Staging"
Description: "Definition of the Observation for the Rai staging"
* obeys ch-crl-obs-1
* . ^short = "CH CRL Observation Rai Staging"
* code 1..
* code = $sct#1149131009 "Rai staging system for chronic lymphocytic leukemia (tumor staging)"

* subject 1..
* subject only Reference(CHCRLPatient)
* subject ^short = "Patient"
* subject.reference 1..
* effectiveDateTime 1..
* performer only Reference(CHCRLPractitioner or CHCRLOrganizationDepartment)
* performer ^short = "Practitioner if resident physician or Organization Department if hospital"
* performer.reference 1..

* valueCodeableConcept from NkrsRaiStaging (preferred)
* valueCodeableConcept ^short = "This classification for Chronic Lymphocytic Leukaemia (CLL) includes 4 stages based on blood 
and bone marrow cell count (lymphocytes, platelets), haemoglobin/haematocrit, LN envolvement, hepato- and/or splenomegaly."
* valueCodeableConcept.coding 1..*
* valueCodeableConcept.coding.system 1..
* valueCodeableConcept.coding.code 1..
* valueCodeableConcept.coding.display 1..

* dataAbsentReason ^short = "The Rai staging is not stated / not assessed"
* dataAbsentReason.coding 1..*
* dataAbsentReason.coding.system 1..
* dataAbsentReason.coding.system = "http://terminology.hl7.org/CodeSystem/data-absent-reason" (exactly)
* dataAbsentReason.coding.code 1..
* dataAbsentReason.coding.code = #unknown (exactly)
* dataAbsentReason.coding.display 1..
* dataAbsentReason.coding.display = "Unknown" (exactly)


Mapping: NICER-A-for-CHCRLObservationRaiStaging
Id: NICER-A
Title: "NATIONAL CANCER DATA DICTIONARY, V 1.1, Part A: BASIC VARIABLES for Adults, Adolescents, and Children"
Source: CHCRLObservationRaiStaging
Target: "https://www.nacr.ch/assets/files/uploads/a-datadictionary-basicvariables-v1.1.pdf"
* -> "Rai staging (Variable number: 4.26)"


Instance: RaiStaging-0
InstanceOf: CHCRLObservationRaiStaging
Title: "Rai Staging - II"
Description: "Example for Observation for the Rai staging"
Usage: #example
* status = #final
* code = $sct#1149131009 "Rai staging system for chronic lymphocytic leukemia (tumor staging)"
* subject = Reference(FranzMinimum)
* effectiveDateTime = "2018-12-15"
* valueCodeableConcept = $nkrs-raistaging#0 "Stage 0"


Instance: RaiStaging-Unknown
InstanceOf: CHCRLObservationRaiStaging
Title: "Rai Staging - Unknown"
Description: "Example for Observation for the Rai staging"
Usage: #example
* status = #final
* code = $sct#1149131009 "Rai staging system for chronic lymphocytic leukemia (tumor staging)"
* subject = Reference(FranzMinimum)
* effectiveDateTime = "2018-12-15"
* dataAbsentReason = $data-absent-reason#unknown "Unknown"



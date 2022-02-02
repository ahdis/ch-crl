Profile: CHCRLObservationAnnArborStaging
Parent: Observation
Id: ch-crl-observation-annarborstaging
Title: "CH CRL Observation Ann Arbor Staging"
Description: "Definition of the Observation for the Ann Arbor staging"
* obeys ch-crl-obs-1
* . ^short = "CH CRL Observation Ann Arbor Staging"
* code 1..
* code = $sct#254372002 "Ann Arbor lymphoma staging system (tumor staging)"
* subject 1..
* subject only Reference(CHCRLPatient)
* subject ^short = "Patient"
* subject.reference 1..
* effectiveDateTime 1..
* performer only Reference(CHCRLPractitioner or CHCRLOrganizationDepartment)
* performer ^short = "Practitioner if resident physician or Organization Department if hospital"
* performer.reference 1..

* valueCodeableConcept obeys nkrs-annarborstaging
* valueCodeableConcept from NkrsAnnArborStaging (preferred)
* valueCodeableConcept ^short = "The Ann Arbor classification for lymphoma."
* valueCodeableConcept.coding 1..*
* valueCodeableConcept.coding.system 1..
* valueCodeableConcept.coding.code 1..
* valueCodeableConcept.coding.display 1..

* dataAbsentReason ^short = "The Ann Arbor classification for lymphoma is not stated / not assessed"
* dataAbsentReason.coding 1..*
* dataAbsentReason.coding.system 1..
* dataAbsentReason.coding.system = "http://terminology.hl7.org/CodeSystem/data-absent-reason" (exactly)
* dataAbsentReason.coding.code 1..
* dataAbsentReason.coding.code = #unknown (exactly)
* dataAbsentReason.coding.display 1..
* dataAbsentReason.coding.display = "Unknown" (exactly)


Mapping: NICER-A-for-CHCRLObservationAnnArborStaging
Id: NICER-A
Title: "NATIONAL CANCER DATA DICTIONARY, V 1.1, Part A: BASIC VARIABLES for Adults, Adolescents, and Children"
Source: CHCRLObservationAnnArborStaging
Target: "https://www.nacr.ch/assets/files/uploads/a-datadictionary-basicvariables-v1.1.pdf"
* -> "Ann Arbor staging (Variable number: 4.18)"


Instance: AnnArborStaging-I
InstanceOf: CHCRLObservationAnnArborStaging
Title: "Ann Arbor Staging - I"
Description: "Example for Observation for the Ann Arbor staging"
Usage: #example
* status = #final
* code = $sct#254372002 "Ann Arbor lymphoma staging system (tumor staging)"
* subject = Reference(FranzMinimum)
* effectiveDateTime = "2018-12-15"
* valueCodeableConcept = $nkrs-annarborstaging#I "Stage I"

Instance: AnnArborStaging-LocalCode
InstanceOf: CHCRLObservationAnnArborStaging
Title: "Ann Arbor Staging - Local Code"
Description: "Example for Observation for the Ann Arbor staging"
Usage: #example
* status = #final
* code = $sct#254372002 "Ann Arbor lymphoma staging system (tumor staging)"
* subject = Reference(FranzMinimum)
* effectiveDateTime = "2018-12-15"
// * valueCodeableConcept.coding[+] = $nkrs-annarborstaging#I "Stage I"
* valueCodeableConcept.coding[+] = $localcode#localCode "Stage I"

Instance: AnnArborStaging-I-A
InstanceOf: CHCRLObservationAnnArborStaging
Title: "Ann Arbor Staging - I+A"
Description: "Example for Observation for the Ann Arbor staging"
Usage: #example
* status = #final
* code = $sct#254372002 "Ann Arbor lymphoma staging system (tumor staging)"
* subject = Reference(FranzMinimum)
* effectiveDateTime = "2018-12-15"
* valueCodeableConcept = $nkrs-annarborstaging#I+A "Stage I+A"

Instance: AnnArborStaging-Unknown
InstanceOf: CHCRLObservationAnnArborStaging
Title: "Ann Arbor Staging - Unknown"
Description: "Example for Observation for the Ann Arbor staging"
Usage: #example
* status = #final
* code = $sct#254372002 "Ann Arbor lymphoma staging system (tumor staging)"
* subject = Reference(FranzMinimum)
* effectiveDateTime = "2018-12-15"
* dataAbsentReason = $data-absent-reason#unknown "Unknown"
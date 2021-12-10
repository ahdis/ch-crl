Profile: CHCRLObservationMicrosatelliteInstability
Parent: Observation
Id: ch-crl-observation-microsatelliteinstability
Title: "CH CRL Observation Microsatellite Instability"
Description: "Definition of the Observation for the Microsatellite instability"
* . ^short = "CH CRL Observation Microsatellite Instability"
* code 1..
* code = $loinc#81695-9 "Microsatellite instability [Interpretation] in Cancer specimen Qualitative"
* subject 1..
* subject only Reference(CHCRLPatient)
* subject ^short = "Patient"
* subject.reference 1..
* effectiveDateTime 1..
* performer only Reference(CHCRLPractitioner or CHCRLOrganizationDepartment)
* performer ^short = "Practitioner if resident physician or Organization Department if hospital"
* performer.reference 1..

* valueBoolean 0..1
* valueBoolean ^short = "The data item records presence or absence of microsatellite instability. 
If microsatellite instability absence then 'value=false', 
if microsatellite instability presence then 'value=true'."

* dataAbsentReason ^short = "The presence or absence of microsatellite instability is not stated / not assessed"
* dataAbsentReason.coding 1..*
* dataAbsentReason.coding.system 1..
* dataAbsentReason.coding.system = "http://terminology.hl7.org/CodeSystem/data-absent-reason" (exactly)
* dataAbsentReason.coding.code 1..
* dataAbsentReason.coding.code = #unknown (exactly)
* dataAbsentReason.coding.display 1..
* dataAbsentReason.coding.display = "Unknown" (exactly)


Mapping: NICER-A-for-CHCRLObservationMicrosatelliteInstability
Id: NICER-A
Title: "NATIONAL CANCER DATA DICTIONARY, V 1.1, Part A: BASIC VARIABLES for Adults, Adolescents, and Children"
Source: CHCRLObservationMicrosatelliteInstability
Target: "https://www.nacr.ch/assets/files/uploads/a-datadictionary-basicvariables-v1.1.pdf"
* -> "Microsatellite instability (Variable number: 5.4.2)"


Instance: MicrosatelliteInstability-No
InstanceOf: CHCRLObservationMicrosatelliteInstability
Title: "Microsatellite Instability - No"
Description: "Example for Observation for the Microsatellite instability"
Usage: #example
* status = #final
* code = $loinc#81695-9 "Microsatellite instability [Interpretation] in Cancer specimen Qualitative"
* subject = Reference(FranzMinimum)
* effectiveDateTime = "2018-12-15"
* valueBoolean = false

Instance: MicrosatelliteInstability-Yes
InstanceOf: CHCRLObservationMicrosatelliteInstability
Title: "Microsatellite Instability - Yes"
Description: "Example for Observation for the Microsatellite instability"
Usage: #example
* status = #final
* code = $loinc#81695-9 "Microsatellite instability [Interpretation] in Cancer specimen Qualitative"
* subject = Reference(FranzMinimum)
* effectiveDateTime = "2018-12-15"
* valueBoolean = true

Instance: MicrosatelliteInstability-Unknown
InstanceOf: CHCRLObservationMicrosatelliteInstability
Title: "Microsatellite Instability - Unknown"
Description: "Example for Observation for the Microsatellite instability"
Usage: #example
* status = #final
* code = $loinc#81695-9 "Microsatellite instability [Interpretation] in Cancer specimen Qualitative"
* subject = Reference(FranzMinimum)
* effectiveDateTime = "2018-12-15"
* dataAbsentReason = $data-absent-reason#unknown "Unknown"
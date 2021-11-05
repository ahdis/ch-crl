Profile: CHCRLObservationSentinelLymphNodeAssessment
Parent: Observation
Id: ch-crl-observation-sentinellymphnodeassessment
Title: "CH CRL Observation Sentinel Lymph Node Assessment Profile"
Description: "Observation for the sentinel lymph node assessment"
* . ^short = "CH CRL Observation Sentinel Lymph Node Assessment"
* code 1..
* code = $sct#443497002 "Excision of sentinel lymph node (procedure)" // TBD
* subject 1..
* subject only Reference(CHCRLPatient)
* subject ^short = "Patient"
* subject.reference 1..
* effectiveDateTime 1..
* effectiveDateTime only dateTime
* performer only Reference(CHCRLPractitioner or CHCRLOrganizationDepartment)
* performer ^short = "Practitioner if resident physician or Organization Department if hospital"
* performer.reference 1..

* valueCodeableConcept only CodeableConcept
* valueCodeableConcept from NkrsSentinelLymphNodeAssessment (required)
* valueCodeableConcept ^short = "Whether the sentinel lymph node is excised and the result of the examination"
* valueCodeableConcept.coding 1..*
* valueCodeableConcept.coding.system 1..
* valueCodeableConcept.coding.code 1..
* valueCodeableConcept.coding.display 1..

* dataAbsentReason ^short = "No information in the patient’s reports whether the sentinel lymph node is excised and the result of the examination"
* dataAbsentReason.coding 1..*
* dataAbsentReason.coding.system 1..
* dataAbsentReason.coding.system = "http://terminology.hl7.org/CodeSystem/data-absent-reason" (exactly)
* dataAbsentReason.coding.code 1..
* dataAbsentReason.coding.code = #unknown (exactly)
* dataAbsentReason.coding.display 1..
* dataAbsentReason.coding.display = "Unknown" (exactly)


Instance: SentinelLymphNodeAssessment
InstanceOf: CHCRLObservationSentinelLymphNodeAssessment
Title: "Sentinel Lymph Node Assessment - NO"
Description: "Example for Observation for the sentinel lymph node assessment"
Usage: #example
* status = #final
* code = $sct#443497002 "Excision of sentinel lymph node (procedure)" // TBD
* subject = Reference(RobertMeier)
* effectiveDateTime = "2018-12-02"
* valueCodeableConcept = $nkrs-sentinellymphnodeassessment#0 "N0"
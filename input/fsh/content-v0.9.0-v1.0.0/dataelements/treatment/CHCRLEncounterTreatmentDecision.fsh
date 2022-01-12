// Tumour board as Encounter
// https://chat.fhir.org/#narrow/stream/179166-implementers/topic/Non-patient.20encounters.3F
// https://simplifier.net/basisprofileonkologie/encountertmbconference

Profile: CHCRLEncounterTreatmentDecision
Parent: Encounter
Id: ch-crl-encounter-treatmentdecision
Title: "CH CRL Encounter Treatment Decision"
Description: "Definition of the Encounter for the treatment decision"
* . ^short = "CH CRL Encounter Treatment Decision"

* type from NkrsBasisOfFirstTreatmentComplexDecision (required)
* type ^short = "This data item records the basis of treatment decision for the entire first treatment complex. 
The first treatment complex includes all therapy steps planned after the diagnosis."
* type.coding 1..
* type.coding.system 1..
* type.coding.code 1..
* type.coding.display 1..

* serviceType 1..
* serviceType = $sct#405083000 "Healthcare decision making (observable entity)"

* subject 1..
* subject only Reference(CHCRLPatient)
* subject ^short = "Patient"
* subject.reference 1..

* period.start 1..
* period.start ^short = "The date when the treatment decision was made. To be recorded for the entire first treatment complex."

* reasonReference 1..
* reasonReference only Reference(CHCRLObservationICD10)
* reasonReference ^short = "The observation on the basis of which the treatment decision was made"
* reasonReference.reference 1..


Mapping: NICER-A-for-CHCRLEncounterTreatmentDecision
Id: NICER-A
Title: "NATIONAL CANCER DATA DICTIONARY, V 1.1, Part A: BASIC VARIABLES for Adults, Adolescents, and Children"
Source: CHCRLEncounterTreatmentDecision
Target: "https://www.nacr.ch/assets/files/uploads/a-datadictionary-basicvariables-v1.1.pdf"
* type -> "Basis of first treatment complex decision (Variable number: 7.1)"
* period.start -> "Date of first treatment complex decision (Variable number: 7.2.1)"



Instance: TreatmentDecision-Tumourboard20181215
InstanceOf: CHCRLEncounterTreatmentDecision
Title: "Treatment Decision - Tumour board 2018-12-15"
Description: "Example for Encounter for the treatment decision"
Usage: #example
* status = #finished
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#IMP "inpatient encounter"
* type = $nkrs-basisoffirsttreatmentcomplexdecision#1 "Tumour board"
* serviceType = $sct#405083000 "Healthcare decision making (observable entity)"
* subject = Reference(FranzMinimum)
* period.start = "2018-12-15"
* reasonReference = Reference(ICD-10)

Profile: CHCRLProcedureTreatment
Parent: Procedure
Id: ch-crl-procedure-treatment
Title: "CH CRL Procedure Treatment"
Description: "Definition of the Procedure for the treatment"
* . ^short = "CH CRL Procedure Treatment"

* category 1..
* category = $sct#708255002 "First line treatment (procedure)"

* code from NkrsFirstTreatmentComplexCode (required)
* code ^short = "The CHOP code, or NACR-assigned CHOP-like code for treatments where no CHOP code exists, 
for each treatment as part of the first treatment complex. CHOP is Swiss classification of surgical operations 
and other diagnostic and treatment procedures and interventions."
* code.coding 1..
* code.coding.system 1..
* code.coding.code 1..
* code.coding.display 1..

* subject only Reference(CHCRLPatient)
* subject ^short = "Patient"
* subject.reference 1..

* performedPeriod.start 1..
* performedPeriod.start ^short = "The date when the treatment of the first treatment complex has been started."

* performer ^short = "Who performed the treatment"
* performer.actor only Reference(CHCRLOrganization)
* performer.actor ^short = "The institution responsible for the treatment"
* performer.actor.reference 1..

* reasonReference 1..
* reasonReference only Reference(CHCRLObservationICD10)
* reasonReference ^short = "The observation on the basis of which the treatment is/was performed"
* reasonReference.reference 1..


Mapping: NICER-A-for-CHCRLProcedureTreatment
Id: NICER-A
Title: "NATIONAL CANCER DATA DICTIONARY, V 1.1, Part A: BASIC VARIABLES for Adults, Adolescents, and Children"
Source: CHCRLProcedureTreatment
Target: "https://www.nacr.ch/assets/files/uploads/a-datadictionary-basicvariables-v1.1.pdf"
* code -> "First treatment complex code(s) (Variable number: 7.4)"
* performedPeriod.start -> "First treatment complex start date(s) (Variable number: 7.5.1)"
* performer.actor -> "First treatment complex institution(s) (Variable number: 7.6)"


Instance: Treatment-IntraoperativeApplicationOfChemotherapeuticSubstances
InstanceOf: CHCRLProcedureTreatment
Title: "Treatment - Intraoperative Application of Chemotherapeutic Substances"
Description: "Example for Procedure for the treatment"
Usage: #example
* status = #in-progress
* category = $sct#708255002 "First line treatment (procedure)"
* code = $nkrs-firsttreatmentcomplexcode#Z99.25.29 "Intraoperative Applikation von Chemotherapeutikum, sonstige"
* subject = Reference(FranzMinimum)
* performedPeriod.start = "2021-12-19"
* performer.actor = Reference(Inselspital)
* reasonReference = Reference(ICD-10)


Instance: Inselspital
InstanceOf: CHCoreOrganization
Title: "Inselspital"
Description: "Example for Organization"
Usage: #example
* name = "Inselspital"
* address.line = "Freiburgstrasse 18"
* address.city = "Bern"
* address.postalCode = "3010"
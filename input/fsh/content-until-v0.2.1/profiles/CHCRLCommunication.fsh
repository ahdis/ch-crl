Profile: CHCRLCommunication
Parent: Communication
Id: ch-crl-communication
Title: "CH CRL Communication"
Description: "Communication for the date of informing the patient about the cancer registration"
* . ^short = "CH CRL Communication"
* subject 1..
* subject only Reference(CHCRLPatient)
* subject ^short = "Patient"
* subject.reference 1..
* topic 1..
* topic ^short = "Date of informing the patient about the cancer registration"
* topic.coding 1..1
* topic.coding.display 1..
* topic.coding.display ^short = "Date (format: YYYY-MM-DD)"
* sent 1..
* sent ^short = "When sent to the cancer registry"
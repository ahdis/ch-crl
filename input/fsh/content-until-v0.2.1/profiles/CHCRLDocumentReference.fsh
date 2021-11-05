Profile: CHCRLDocumentReference
Parent: CHCoreDocumentReference
Id: ch-crl-documentreference
Title: "CH CRL DocumentReference"
Description: "Definition of the DocumentReference for the report as pdf"
* . ^short = "CH CRL DocumentReference"
* subject 1..
* subject only Reference(CHCRLPatient)
* subject ^short = "Patient"
* subject.reference 1..
* author 1..
* author only Reference(CHCRLPractitioner or CHCRLOrganizationDepartment)
* author ^short = "Practitioner if resident physician or Organization Department if hospital"
* author.reference 1..
* description 1..
* content.attachment.contentType 1..
* content.attachment.data 1..
* content.attachment.size 0..1
* content.attachment.title 1..
* content.attachment.creation 0..1
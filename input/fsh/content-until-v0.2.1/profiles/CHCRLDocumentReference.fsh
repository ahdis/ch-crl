Profile: CHCRLDocumentReference
Parent: CHCoreDocumentReference
Id: ch-crl-documentreference
Title: "CH CRL DocumentReference Profile"
Description: "Document reference for the report as pdf"
* ^version = "0.3.0"
* ^status = #draft
* ^date = "2019-11-08"
* ^publisher = "Bundesamt für Gesundheit BAG"
* ^contact.name = "Bundesamt für Gesundheit BAG"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.bag.admin.ch/"
* ^jurisdiction = urn:iso:std:iso:3166#CH
* ^copyright = "CC-BY-SA-4.0"
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
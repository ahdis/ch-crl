/*

Sushi:
warn  No types found for element CancerReport.Patient. Defaulting to BackboneElement.
warn  No types found for element CancerReport.Patient.Verstorben. Defaulting to BackboneElement.        
warn  No types found for element CancerReport.MeldepflichtigePerson. Defaulting to BackboneElement.     
warn  No types found for element CancerReport.MeldepflichtigeInstitution. Defaulting to BackboneElement.
warn  No types found for element CancerReport.Todesursachen. Defaulting to BackboneElement.


Logical: CHCRLCancerReport
Parent: Element
Id: ch-crl-cancerreport
Title: "CH CRL Cancer Report Logical Model"
Description: "Logical model of the cancer Report"
* ^version = "0.3.0"
* ^status = #draft
* ^date = "2019-11-08"
* ^publisher = "Bundesamt für Gesundheit BAG"
* ^contact.name = "Bundesamt für Gesundheit BAG"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.bag.admin.ch/"
* ^jurisdiction.coding.system = "urn:iso:std:iso:3166"
* ^jurisdiction.coding.code = #CH
* ^copyright = "CC-BY-SA-4.0"
* ^type = "CancerReport"
* Patient 1..1 BackboneElement
* Patient.Name 1..1 string
* Patient.Vorname 1..* string
* Patient.Geschlecht 1..1 code
* Patient.AHV-Nummer 1..1 string
* Patient.Geburtsdatum 1..1 date
* Patient.Verstorben 1..1 BackboneElement
* Patient.Verstorben.Nein 0..1 boolean
* Patient.Verstorben.Todesdatum 0..1 date
* Patient.Wohnadresse 1..1 Element
* Patient.Wohnadresse.Strasse 0..1 string
* Patient.Wohnadresse.Nummer 0..1 string
* Patient.Wohnadresse.Postfach 0..1 string
* Patient.Wohnadresse.PLZ 1..1 string
* Patient.Wohnadresse.Ort 0..1 string
* Patient.Wohnadresse.Kanton 0..1 string
* DatumDerInformationDesPatienten 0..1 date
* MeldepflichtigePerson 0..1 BackboneElement
* MeldepflichtigePerson.Name 1..1 string
* MeldepflichtigePerson.Vorname 1..* string
* MeldepflichtigePerson.Geschlecht 1..1 code
* MeldepflichtigePerson.GLN 0..* string
* MeldepflichtigePerson.Telefonnummer 1..* string
* MeldepflichtigePerson.EMailAdresse 1..* string
* MeldepflichtigePerson.Adresse 1..* Element
* MeldepflichtigePerson.Adresse.Strasse 1..1 string
* MeldepflichtigePerson.Adresse.Nummer 1..1 string
* MeldepflichtigePerson.Adresse.Postfach 0..1 string
* MeldepflichtigePerson.Adresse.PLZ 1..1 string
* MeldepflichtigePerson.Adresse.Ort 1..1 string
* MeldepflichtigePerson.Adresse.Kanton 0..1 string
* MeldepflichtigeInstitution 0..1 BackboneElement
* MeldepflichtigeInstitution.NameDerInsititution 1..1 string
* MeldepflichtigeInstitution.Abteilung 1..1 Element
* MeldepflichtigeInstitution.Abteilung.NameDerAbteilung 1..1 string
* MeldepflichtigeInstitution.Abteilung.ArtDerAbteilung 1..* string
* MeldepflichtigeInstitution.BUR 1..* string
* MeldepflichtigeInstitution.ArtDerInstitution 1..* code
* MeldepflichtigeInstitution.ZustaendigeAnsprechperson 1..* Element
* MeldepflichtigeInstitution.ZustaendigeAnsprechperson.Name 1..1 string
* MeldepflichtigeInstitution.ZustaendigeAnsprechperson.Vorname 1..* string
* MeldepflichtigeInstitution.ZustaendigeAnsprechperson.Funktion 1..1 string
* MeldepflichtigeInstitution.Telefonnummer 1..* string
* MeldepflichtigeInstitution.EMailAdresse 1..* string
* MeldepflichtigeInstitution.Adresse 1..* Element
* MeldepflichtigeInstitution.Adresse.Strasse 1..1 string
* MeldepflichtigeInstitution.Adresse.Nummer 1..1 string
* MeldepflichtigeInstitution.Adresse.Postfach 0..1 string
* MeldepflichtigeInstitution.Adresse.PLZ 1..1 string
* MeldepflichtigeInstitution.Adresse.Ort 1..1 string
* MeldepflichtigeInstitution.Adresse.Kanton 0..1 string
* Todesursachen 0..1 BackboneElement
* Todesursachen.EndgueltigeTodesursache 0..1 code
* Todesursachen.Grundkrankheit 0..1 code
* Todesursachen.Folgekrankheit 0..1 code
* Todesursachen.BegleitkrankheitA 0..1 code
* Todesursachen.BegleitkrankheitB 0..1 code
* DatenZurDiagnose 0..* base64Binary
* DatenZurDiagnose.ICD-10 0..* code
* DatenZurDiagnose.ICD-10.DatumDesAuftretens 0..1 date
* DatenZurDiagnose.ICD-10.TNM-StageGruppe 0..1 code
* DatenZurDiagnose.ICD-10.TNM-StageGruppe.KlinischeKategoriePrimaerTumor-cT 0..1 code
* DatenZurDiagnose.ICD-10.TNM-StageGruppe.KlinischeKategorieRegionaleKnoten-cN 0..1 code
* DatenZurDiagnose.ICD-10.TNM-StageGruppe.KlinischeKategorieFernMetastasen-cM 0..1 code
* DatenZurDiagnose.ICD-10.TNM-StageGruppe.PathologischeKategoriePrimaerTumor-pT 0..1 code
* DatenZurDiagnose.ICD-10.TNM-StageGruppe.PathologischeKategorieRegionaleKnoten-pN 0..1 code
* DatenZurDiagnose.ICD-10.TNM-StageGruppe.PathologischeKategorieFernMetastasen-pM 0..1 code
* DatenZurDiagnose.ICD-10.ICD-O-3-Morphologie 0..1 code
* DatenZurDiagnose.ICD-10.ICD-O-3-Topografie 0..1 code
* DatenZurDiagnose.ICD-10.ICD-O-3-Verhalten 0..1 code
* DatenZurDiagnose.ICD-10.ICD-O-3-Seitigkeit 0..1 code
* DatenZurDiagnose.ICD-10.ICD-O-3-HistologischerGrad 0..1 code
* DatenZurDiagnose.ICD-10.y-Praefix-klinischesTNM 0..1 boolean
* DatenZurDiagnose.ICD-10.a-Praefix-pathologischesTNM 0..1 boolean
* DatenZurDiagnose.ICD-10.y-Praefix-pathologischesTNM 0..1 boolean
* DatenZurDiagnose.ICD-10.m-Suffix-pathologischesT 0..1 decimal
* DatenZurDiagnose.ICD-10.AnzahlBeteiligteRegionaleLymphknoten 0..1 decimal
* DatenZurDiagnose.ICD-10.AnzahlUntersuchteRegionaleLymphknoten 0..1 decimal
* DatenZurDiagnose.ICD-10.LymphatischerBefall 0..1 code
* DatenZurDiagnose.ICD-10.VenoeserBefall 0..1 code
* DatenZurDiagnose.ICD-10.PerineuralerBefall 0..1 code
* DatenZurDiagnose.ICD-10.VerwendeteDiagnosemethode 0..* code
* DatenZurErstbehandlung 0..* base64Binary
*/
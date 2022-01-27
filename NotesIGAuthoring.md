# Anmerkungen/Hinweise für das Erstellen des IGs

## Mapping dataAbsentReason
http://terminology.hl7.org/CodeSystem/data-absent-reason

FHIR | NKRS
--- | ---
unknown (Unknown) | Unknown (Not stated / Not assessed)<br>Missing (Not stated / Not assessed)<br>UNK (No information on ...)
not-applicable	(Not Applicable) | NA (Not applicable)
not-performed (Not Performed) | Not performed<br>...X (... not available or not performed)

Hinweis:   
*8 - ...X - ... cannot be assessed.* wird in den jeweiligen CodeSystems abgebildet, da *unknown* bereits als dataAbsentReason definiert ist und kein anderer Code von dataAbsentReason passt.
   * Residual invasive tumour (6.1)
   * Residual in-situ tumour (6.2)
   * Sentinel lymph node assessment (6.5)


## Datenelemente mit Beziehungen untereinaner

### hasMember
*Definition:*    
*This observation is a group observation (e.g. **a battery, a panel of tests**, a set of vital sign measurements) that includes the target as a member of the group.*

* TNM Stage Group (Observation.hasMember)
   * TNM Clinical Primary Tumor Category (Observation)
   * TNM Clinical Regional Nodes Category (Observation)
   * TNM Clinical Distant Metastases Category (Observation)
   * TNM Pathologic Primary Tumor Category (Observation)
   * TNM Pathologic Regional Nodes Category (Observation)
   * TNM Pathologic Distant Metastases Category (Observation)
* Type of Recurrence/Transformation (Observation.hasMember)
   * ICD-O-3 Morphology Pre-Transformation (Observation)
   * ICD-O-3 Morphology Post-Transformation (Observation)
   * Topography Post-Diagnosis Metastases (Observation)

### derivedFrom
*Definition:*    
*The target resource that represents a measurement from which **this observation value is derived**. For example, a calculated anion gap or a fetal measurement based on an ultrasound image.*

* Gleason Score (Observation.derivedFrom) -> Berechnung (verschiedene Kombinationen) aus folgenden Elementen:
   * Gleason biopsy most common grade (Observation)
   * Gleason biopsy second most common or highest grade (Observation)
   * Gleason excision most common grade (Observation)
   * Gleason excision second most common or highest grade (Observation)
* Serum Tumour Markers (Observation.derivedFrom) -> Kategorie ergibt sich aus den Levels von:
   * α-fetoprotein (Observation)
   * hCG (Observation)
   * LDH (Observation)
* Charlson Index (Observation.derivedFrom) -> Berechnung aus div. Elementen:
   * Diabetes mellitus (Observation)
   * Liver Disease (Observation)
   * etc. 


## Profilierung

### Erstellung der FHIR-Artifakte

Artifakte | Benennung | Gliederung
--- | --- | ---
**Profile** | NKRS-Dokumente (EN) | - 
**Composition - Sections** | Krebsregister-Applikation (EN) | Krebsregister-Applikation
**Logisches Modell** | NKRS Dokumente (DE) | Krebsregister-Applikation

### Observation.value

Zahlenwerte werden entweder als valueQuantity (mit/ohne Unit) oder valueInteger abgebildet.

**valueQuantity mit Unit** ([UCUM]())   
* Clinical Tumour Size (mm)
* Pathological Tumour Size (mm)
* Resection Margin In-situ Tumour (mm)
* Resection Margin Invasive Tumour (mm)
* Breslow Thickness (mm)
* Oestrogen Receptor Status (%)
* Progesterone Receptor Status (%)
* Tumour Proliferation Labeling (%)
* Pretreatment Prostate Specific Antigen (ng/ml)

```json
"valueQuantity" : {
   "value" : 11,
   "unit" : "millimeter",
   "system" : "http://unitsofmeasure.org",
   "code" : "mm"
}
```

**valueQuantity ohne Unit** (kein entsprechender Code, z.B. UCUM, SCT)    
* m-Suffix of pT (Tumours)
* Number of Examined Regional Lymph Nodes (Nodes)
* Number of Involved Regional Lymph Nodes (Nodes)
* Number of Positive Sentinel Lymph Nodes (Nodes)
* Number of Examined Sentinel Lymph Nodes (Nodes)

```json
"valueQuantity" : {
   "value" : 4
}
```

**valueInteger** (Score, Index)   
* Gleason Biopsy Most Common Grade (Grad entspricht der Nummer für den Gleason Score)
* Gleason Biopsy Second Most Common or Highest Grade (Grad entspricht der Nummer für den Gleason Score)
* Gleason Excision Most common Grade (Grad entspricht der Nummer für den Gleason Score)
* Gleason Excision Second Most Common or Highest Grade (Grad entspricht der Nummer für den Gleason Score)
* Gleason Score
* Charlson Index

```json
"valueInteger" : 8
```

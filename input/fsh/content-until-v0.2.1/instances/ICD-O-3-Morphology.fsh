Instance: ICD-O-3-Morphology
InstanceOf: CHCRLObservationICDO3Morphology
Title: "ICD-O-3-Morphology"
Description: "Example for Observation"
Usage: #example
* status = #final
* code = $loinc#59848-2 "Morphology.ICD-O-3 Cancer"
* subject = Reference(FranzMinimum)
* effectiveDateTime = "2018-12-15"
* valueCodeableConcept.coding.version = "3.2"
* valueCodeableConcept.coding = urn:oid:2.16.840.1.113883.6.43.1#8140/3 "Adenokarzinom o.n.A."

This exchange format is defined as a [document type](https://www.hl7.org/fhir/documents.html) that corresponds to a [Bundle](https://www.hl7.org/fhir/bundle.html) as a FHIR resource. A [Bundle](https://www.hl7.org/fhir/bundle.html) has a list of entries. The first entry is the [Composition](https://www.hl7.org/fhir/composition.html), in which all contained entries are then referenced.

{% include img.html img="document.png" caption="Fig.: CH CRL Bundle" width="40%" %}

* **Profile**: [Bundle](StructureDefinition-ch-crl-bundle.html) for reporting to the cancer registry
* **Examples**: 
   * Use Case 1a (Results are reported as PDF): Bundle (document) as [XML](Bundle-BundleUC1aGastro20181201.xml.html) or [JSON](Bundle-BundleUC1aGastro20181201.json.html)
   * Use Case 1b (Results are reported as structured data): Bundle (document) as [XML](Bundle-BundleUC1bGastro20181201.xml.html) or [JSON](Bundle-BundleUC1bGastro20181201.json.html)

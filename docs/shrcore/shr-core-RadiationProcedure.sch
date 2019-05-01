<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  <sch:ns prefix="f" uri="http://hl7.org/fhir"/>
  <sch:ns prefix="h" uri="http://www.w3.org/1999/xhtml"/>
  <!-- 
    This file contains just the constraints for the profile US  Core Procedure Profile
    It includes the base constraints for the resource as well.
    Because of the way that schematrons and containment work, 
    you may need to use this schematron fragment to build a, 
    single schematron that validates contained resources (if you have any) 
  -->
  <sch:pattern>
    <sch:title>f:Procedure</sch:title>
    <sch:rule context="f:Procedure">
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/us/shr/StructureDefinition/shr-core-StatusReason-extension']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/us/shr/StructureDefinition/shr-core-StatusReason-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/us/shr/StructureDefinition/shr-core-StatementDateTime-extension']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/us/shr/StructureDefinition/shr-core-StatementDateTime-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/us/shr/StructureDefinition/shr-core-TreatmentIntent-extension']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/us/shr/StructureDefinition/shr-core-TreatmentIntent-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/us/shr/StructureDefinition/shr-core-RadiationDosePerFraction-extension']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/us/shr/StructureDefinition/shr-core-RadiationDosePerFraction-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/us/shr/StructureDefinition/shr-core-RadiationFractionsDelivered-extension']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/us/shr/StructureDefinition/shr-core-RadiationFractionsDelivered-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/us/shr/StructureDefinition/shr-core-TotalRadiationDoseDelivered-extension']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/us/shr/StructureDefinition/shr-core-TotalRadiationDoseDelivered-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:basedOn) &lt;= 1">basedOn: maximum cardinality of 'basedOn' is 1</sch:assert>
      <sch:assert test="count(f:partOf) &lt;= 1">partOf: maximum cardinality of 'partOf' is 1</sch:assert>
      <sch:assert test="count(f:notDone) &lt;= 0">notDone: maximum cardinality of 'notDone' is 0</sch:assert>
      <sch:assert test="count(f:notDoneReason) &lt;= 0">notDoneReason: maximum cardinality of 'notDoneReason' is 0</sch:assert>
      <sch:assert test="count(f:reasonCode) &lt;= 1">reasonCode: maximum cardinality of 'reasonCode' is 1</sch:assert>
      <sch:assert test="count(f:reasonReference) &lt;= 1">reasonReference: maximum cardinality of 'reasonReference' is 1</sch:assert>
      <sch:assert test="count(f:focalDevice) &lt;= 0">focalDevice: maximum cardinality of 'focalDevice' is 0</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Procedure</sch:title>
    <sch:rule context="f:Procedure">
      <sch:assert test="not(parent::f:contained and f:contained)">If the resource is contained in another resource, it SHALL NOT contain nested Resources</sch:assert>
      <sch:assert test="not(parent::f:contained and f:text)">If the resource is contained in another resource, it SHALL NOT contain any narrative</sch:assert>
      <sch:assert test="not(exists(f:contained/*/f:meta/f:versionId)) and not(exists(f:contained/*/f:meta/f:lastUpdated))">If a resource is contained in another resource, it SHALL NOT have a meta.versionId or a meta.lastUpdated</sch:assert>
      <sch:assert test="not(exists(for $id in f:contained/*/@id return $id[not(ancestor::f:contained/parent::*/descendant::f:reference/@value=concat('#', $id))]))">If the resource is contained in another resource, it SHALL be referred to from elsewhere in the resource</sch:assert>
      <sch:assert test="not(exists(f:notDoneReason)) or f:notDone/@value=true()">Reason not done is only permitted if notDone indicator is true</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Procedure/f:meta</sch:title>
    <sch:rule context="f:Procedure/f:meta">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/us/shr/StructureDefinition/shr-core-SourceSystem-extension']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/us/shr/StructureDefinition/shr-core-SourceSystem-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:versionId) &lt;= 1">versionId: maximum cardinality of 'versionId' is 1</sch:assert>
      <sch:assert test="count(f:lastUpdated) &lt;= 1">lastUpdated: maximum cardinality of 'lastUpdated' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Procedure/f:extension</sch:title>
    <sch:rule context="f:Procedure/f:extension">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension) &lt;= 0">extension: maximum cardinality of 'extension' is 0</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:valueCodeableConcept) &gt;= 1">valueCodeableConcept: minimum cardinality of 'valueCodeableConcept' is 1</sch:assert>
      <sch:assert test="count(f:valueCodeableConcept) &lt;= 1">valueCodeableConcept: maximum cardinality of 'valueCodeableConcept' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Procedure.performer</sch:title>
    <sch:rule context="f:Procedure/f:performer">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Procedure/f:bodySite</sch:title>
    <sch:rule context="f:Procedure/f:bodySite">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:text) &lt;= 1">text: maximum cardinality of 'text' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Procedure.focalDevice</sch:title>
    <sch:rule context="f:Procedure/f:focalDevice">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
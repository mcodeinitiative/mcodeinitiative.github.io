<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  <sch:ns prefix="f" uri="http://hl7.org/fhir"/>
  <sch:ns prefix="h" uri="http://www.w3.org/1999/xhtml"/>
  <!-- 
    This file contains just the constraints for the profile ProcedureRequest
    It includes the base constraints for the resource as well.
    Because of the way that schematrons and containment work, 
    you may need to use this schematron fragment to build a, 
    single schematron that validates contained resources (if you have any) 
  -->
  <sch:pattern>
    <sch:title>f:ProcedureRequest</sch:title>
    <sch:rule context="f:ProcedureRequest">
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/us/shr/StructureDefinition/shr-core-RequestIntent-extension']) &gt;= 1">extension with URL = 'http://hl7.org/fhir/us/shr/StructureDefinition/shr-core-RequestIntent-extension': minimum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/us/shr/StructureDefinition/shr-core-RequestIntent-extension']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/us/shr/StructureDefinition/shr-core-RequestIntent-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/us/shr/StructureDefinition/shr-core-ExpectedPerformerType-extension']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/us/shr/StructureDefinition/shr-core-ExpectedPerformerType-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/us/shr/StructureDefinition/shr-core-CommunicationMethod-extension']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/us/shr/StructureDefinition/shr-core-CommunicationMethod-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/us/shr/StructureDefinition/shr-core-PartOf-extension']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/us/shr/StructureDefinition/shr-core-PartOf-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/us/shr/StructureDefinition/shr-core-Category-extension']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/us/shr/StructureDefinition/shr-core-Category-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/us/shr/StructureDefinition/shr-core-Method-extension']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/us/shr/StructureDefinition/shr-core-Method-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/us/shr/StructureDefinition/shr-core-Location-extension']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/us/shr/StructureDefinition/shr-core-Location-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/us/shr/StructureDefinition/shr-core-ExpectedPerformer-extension']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/us/shr/StructureDefinition/shr-core-ExpectedPerformer-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:status) &gt;= 1">status: minimum cardinality of 'status' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:ProcedureRequest/f:extension</sch:title>
    <sch:rule context="f:ProcedureRequest/f:extension">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension) &lt;= 0">extension: maximum cardinality of 'extension' is 0</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:valueCodeableConcept) &gt;= 1">valueCodeableConcept: minimum cardinality of 'valueCodeableConcept' is 1</sch:assert>
      <sch:assert test="count(f:valueCodeableConcept) &lt;= 1">valueCodeableConcept: maximum cardinality of 'valueCodeableConcept' is 1</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension) &lt;= 0">extension: maximum cardinality of 'extension' is 0</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:valueReference) &gt;= 1">valueReference: minimum cardinality of 'valueReference' is 1</sch:assert>
      <sch:assert test="count(f:valueReference) &lt;= 1">valueReference: maximum cardinality of 'valueReference' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:ProcedureRequest/f:bodySite</sch:title>
    <sch:rule context="f:ProcedureRequest/f:bodySite">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:text) &lt;= 1">text: maximum cardinality of 'text' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>

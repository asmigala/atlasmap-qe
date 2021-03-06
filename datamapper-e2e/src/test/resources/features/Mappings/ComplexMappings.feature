@Mappings
@ComplexMappings
  Feature: Usage more complex mappings, between more than one source and targets.

    Background:  Given atlasmap contains TestClass
    And atlasmap is clean
    And internal mapping is set to "false"
    And browser is opened

 #  Scenario: multiple source to single target

   Scenario: Single source to multiple targets
   When add mapping from "sourceString" to "firstName"
   And add mapping from "sourceAnotherString" to "lastName"
   And set "Foo" value in source's "sourceString"
   And set "Bar" value in source's "sourceAnotherString"

   And Add StringObject to expected map with "Foo", "Bar" values
   Then save and verify mapping with multiple objects as "complex1.json"



    Scenario: Multiple sources to multiple targets
   When add mapping from "sourceString" to "firstName"
   And add mapping from "sourceAnotherString" to "lastName"

   And add mapping from "objectField1" to "targetString"
   And add mapping from "objectField2" to "targetAnotherString"

   And set "Foo" value in source's "sourceString"
   And set "Bar" value in source's "sourceAnotherString"

   And Add StringObject to expected map with "Foo", "Bar" values
   And Init smallMappingTestClass and add to source map
   And set "1_field1" value in target's "targetString"
   And set "1_field2" value in target's "targetAnotherString"


   Then save and verify mapping with multiple objects as "complex2.json"

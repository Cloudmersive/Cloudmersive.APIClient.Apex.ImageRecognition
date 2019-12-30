@isTest
private class SwagPersonWithAgeTest {
    @isTest
    private static void equalsSameInstance() {
        SwagPersonWithAge personWithAge1 = SwagPersonWithAge.getExample();
        SwagPersonWithAge personWithAge2 = personWithAge1;
        SwagPersonWithAge personWithAge3 = new SwagPersonWithAge();
        SwagPersonWithAge personWithAge4 = personWithAge3;

        System.assert(personWithAge1.equals(personWithAge2));
        System.assert(personWithAge2.equals(personWithAge1));
        System.assert(personWithAge1.equals(personWithAge1));
        System.assert(personWithAge3.equals(personWithAge4));
        System.assert(personWithAge4.equals(personWithAge3));
        System.assert(personWithAge3.equals(personWithAge3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagPersonWithAge personWithAge1 = SwagPersonWithAge.getExample();
        SwagPersonWithAge personWithAge2 = SwagPersonWithAge.getExample();
        SwagPersonWithAge personWithAge3 = new SwagPersonWithAge();
        SwagPersonWithAge personWithAge4 = new SwagPersonWithAge();

        System.assert(personWithAge1.equals(personWithAge2));
        System.assert(personWithAge2.equals(personWithAge1));
        System.assert(personWithAge3.equals(personWithAge4));
        System.assert(personWithAge4.equals(personWithAge3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagPersonWithAge personWithAge1 = SwagPersonWithAge.getExample();
        SwagPersonWithAge personWithAge2 = new SwagPersonWithAge();

        System.assertEquals(false, personWithAge1.equals(personWithAge2));
        System.assertEquals(false, personWithAge2.equals(personWithAge1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagPersonWithAge personWithAge1 = SwagPersonWithAge.getExample();
        SwagPersonWithAge personWithAge2 = new SwagPersonWithAge();

        System.assertEquals(false, personWithAge1.equals('foo'));
        System.assertEquals(false, personWithAge2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagPersonWithAge personWithAge1 = SwagPersonWithAge.getExample();
        SwagPersonWithAge personWithAge2 = new SwagPersonWithAge();
        SwagPersonWithAge personWithAge3;

        System.assertEquals(false, personWithAge1.equals(personWithAge3));
        System.assertEquals(false, personWithAge2.equals(personWithAge3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagPersonWithAge personWithAge1 = SwagPersonWithAge.getExample();
        SwagPersonWithAge personWithAge2 = new SwagPersonWithAge();

        System.assertEquals(personWithAge1.hashCode(), personWithAge1.hashCode());
        System.assertEquals(personWithAge2.hashCode(), personWithAge2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagPersonWithAge personWithAge1 = SwagPersonWithAge.getExample();
        SwagPersonWithAge personWithAge2 = SwagPersonWithAge.getExample();
        SwagPersonWithAge personWithAge3 = new SwagPersonWithAge();
        SwagPersonWithAge personWithAge4 = new SwagPersonWithAge();

        System.assert(personWithAge1.equals(personWithAge2));
        System.assert(personWithAge3.equals(personWithAge4));
        System.assertEquals(personWithAge1.hashCode(), personWithAge2.hashCode());
        System.assertEquals(personWithAge3.hashCode(), personWithAge4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        SwagPersonWithAge personWithAge = new SwagPersonWithAge();
        Map<String, String> propertyMappings = personWithAge.getPropertyMappings();
        System.assertEquals('faceLocation', propertyMappings.get('FaceLocation'));
        System.assertEquals('ageClassificationConfidence', propertyMappings.get('AgeClassificationConfidence'));
        System.assertEquals('ageClass', propertyMappings.get('AgeClass'));
        System.assertEquals('age', propertyMappings.get('Age'));
    }
}

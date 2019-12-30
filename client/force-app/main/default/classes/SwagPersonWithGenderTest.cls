@isTest
private class SwagPersonWithGenderTest {
    @isTest
    private static void equalsSameInstance() {
        SwagPersonWithGender personWithGender1 = SwagPersonWithGender.getExample();
        SwagPersonWithGender personWithGender2 = personWithGender1;
        SwagPersonWithGender personWithGender3 = new SwagPersonWithGender();
        SwagPersonWithGender personWithGender4 = personWithGender3;

        System.assert(personWithGender1.equals(personWithGender2));
        System.assert(personWithGender2.equals(personWithGender1));
        System.assert(personWithGender1.equals(personWithGender1));
        System.assert(personWithGender3.equals(personWithGender4));
        System.assert(personWithGender4.equals(personWithGender3));
        System.assert(personWithGender3.equals(personWithGender3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagPersonWithGender personWithGender1 = SwagPersonWithGender.getExample();
        SwagPersonWithGender personWithGender2 = SwagPersonWithGender.getExample();
        SwagPersonWithGender personWithGender3 = new SwagPersonWithGender();
        SwagPersonWithGender personWithGender4 = new SwagPersonWithGender();

        System.assert(personWithGender1.equals(personWithGender2));
        System.assert(personWithGender2.equals(personWithGender1));
        System.assert(personWithGender3.equals(personWithGender4));
        System.assert(personWithGender4.equals(personWithGender3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagPersonWithGender personWithGender1 = SwagPersonWithGender.getExample();
        SwagPersonWithGender personWithGender2 = new SwagPersonWithGender();

        System.assertEquals(false, personWithGender1.equals(personWithGender2));
        System.assertEquals(false, personWithGender2.equals(personWithGender1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagPersonWithGender personWithGender1 = SwagPersonWithGender.getExample();
        SwagPersonWithGender personWithGender2 = new SwagPersonWithGender();

        System.assertEquals(false, personWithGender1.equals('foo'));
        System.assertEquals(false, personWithGender2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagPersonWithGender personWithGender1 = SwagPersonWithGender.getExample();
        SwagPersonWithGender personWithGender2 = new SwagPersonWithGender();
        SwagPersonWithGender personWithGender3;

        System.assertEquals(false, personWithGender1.equals(personWithGender3));
        System.assertEquals(false, personWithGender2.equals(personWithGender3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagPersonWithGender personWithGender1 = SwagPersonWithGender.getExample();
        SwagPersonWithGender personWithGender2 = new SwagPersonWithGender();

        System.assertEquals(personWithGender1.hashCode(), personWithGender1.hashCode());
        System.assertEquals(personWithGender2.hashCode(), personWithGender2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagPersonWithGender personWithGender1 = SwagPersonWithGender.getExample();
        SwagPersonWithGender personWithGender2 = SwagPersonWithGender.getExample();
        SwagPersonWithGender personWithGender3 = new SwagPersonWithGender();
        SwagPersonWithGender personWithGender4 = new SwagPersonWithGender();

        System.assert(personWithGender1.equals(personWithGender2));
        System.assert(personWithGender3.equals(personWithGender4));
        System.assertEquals(personWithGender1.hashCode(), personWithGender2.hashCode());
        System.assertEquals(personWithGender3.hashCode(), personWithGender4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        SwagPersonWithGender personWithGender = new SwagPersonWithGender();
        Map<String, String> propertyMappings = personWithGender.getPropertyMappings();
        System.assertEquals('faceLocation', propertyMappings.get('FaceLocation'));
        System.assertEquals('genderClassificationConfidence', propertyMappings.get('GenderClassificationConfidence'));
        System.assertEquals('genderClass', propertyMappings.get('GenderClass'));
    }
}

@isTest
private class SwagAgeDetectionResultTest {
    @isTest
    private static void equalsSameInstance() {
        SwagAgeDetectionResult ageDetectionResult1 = SwagAgeDetectionResult.getExample();
        SwagAgeDetectionResult ageDetectionResult2 = ageDetectionResult1;
        SwagAgeDetectionResult ageDetectionResult3 = new SwagAgeDetectionResult();
        SwagAgeDetectionResult ageDetectionResult4 = ageDetectionResult3;

        System.assert(ageDetectionResult1.equals(ageDetectionResult2));
        System.assert(ageDetectionResult2.equals(ageDetectionResult1));
        System.assert(ageDetectionResult1.equals(ageDetectionResult1));
        System.assert(ageDetectionResult3.equals(ageDetectionResult4));
        System.assert(ageDetectionResult4.equals(ageDetectionResult3));
        System.assert(ageDetectionResult3.equals(ageDetectionResult3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagAgeDetectionResult ageDetectionResult1 = SwagAgeDetectionResult.getExample();
        SwagAgeDetectionResult ageDetectionResult2 = SwagAgeDetectionResult.getExample();
        SwagAgeDetectionResult ageDetectionResult3 = new SwagAgeDetectionResult();
        SwagAgeDetectionResult ageDetectionResult4 = new SwagAgeDetectionResult();

        System.assert(ageDetectionResult1.equals(ageDetectionResult2));
        System.assert(ageDetectionResult2.equals(ageDetectionResult1));
        System.assert(ageDetectionResult3.equals(ageDetectionResult4));
        System.assert(ageDetectionResult4.equals(ageDetectionResult3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagAgeDetectionResult ageDetectionResult1 = SwagAgeDetectionResult.getExample();
        SwagAgeDetectionResult ageDetectionResult2 = new SwagAgeDetectionResult();

        System.assertEquals(false, ageDetectionResult1.equals(ageDetectionResult2));
        System.assertEquals(false, ageDetectionResult2.equals(ageDetectionResult1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagAgeDetectionResult ageDetectionResult1 = SwagAgeDetectionResult.getExample();
        SwagAgeDetectionResult ageDetectionResult2 = new SwagAgeDetectionResult();

        System.assertEquals(false, ageDetectionResult1.equals('foo'));
        System.assertEquals(false, ageDetectionResult2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagAgeDetectionResult ageDetectionResult1 = SwagAgeDetectionResult.getExample();
        SwagAgeDetectionResult ageDetectionResult2 = new SwagAgeDetectionResult();
        SwagAgeDetectionResult ageDetectionResult3;

        System.assertEquals(false, ageDetectionResult1.equals(ageDetectionResult3));
        System.assertEquals(false, ageDetectionResult2.equals(ageDetectionResult3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagAgeDetectionResult ageDetectionResult1 = SwagAgeDetectionResult.getExample();
        SwagAgeDetectionResult ageDetectionResult2 = new SwagAgeDetectionResult();

        System.assertEquals(ageDetectionResult1.hashCode(), ageDetectionResult1.hashCode());
        System.assertEquals(ageDetectionResult2.hashCode(), ageDetectionResult2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagAgeDetectionResult ageDetectionResult1 = SwagAgeDetectionResult.getExample();
        SwagAgeDetectionResult ageDetectionResult2 = SwagAgeDetectionResult.getExample();
        SwagAgeDetectionResult ageDetectionResult3 = new SwagAgeDetectionResult();
        SwagAgeDetectionResult ageDetectionResult4 = new SwagAgeDetectionResult();

        System.assert(ageDetectionResult1.equals(ageDetectionResult2));
        System.assert(ageDetectionResult3.equals(ageDetectionResult4));
        System.assertEquals(ageDetectionResult1.hashCode(), ageDetectionResult2.hashCode());
        System.assertEquals(ageDetectionResult3.hashCode(), ageDetectionResult4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        SwagAgeDetectionResult ageDetectionResult = new SwagAgeDetectionResult();
        Map<String, String> propertyMappings = ageDetectionResult.getPropertyMappings();
        System.assertEquals('successful', propertyMappings.get('Successful'));
        System.assertEquals('peopleWithAge', propertyMappings.get('PeopleWithAge'));
        System.assertEquals('peopleIdentified', propertyMappings.get('PeopleIdentified'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        SwagAgeDetectionResult ageDetectionResult = new SwagAgeDetectionResult();
        System.assertEquals(new List<SwagPersonWithAge>(), ageDetectionResult.peopleWithAge);
        System.assertEquals(null, ageDetectionResult.successful);
        System.assertEquals(null, ageDetectionResult.peopleIdentified);
    }
}

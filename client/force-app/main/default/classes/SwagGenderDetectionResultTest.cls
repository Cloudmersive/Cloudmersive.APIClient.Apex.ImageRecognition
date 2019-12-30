@isTest
private class SwagGenderDetectionResultTest {
    @isTest
    private static void equalsSameInstance() {
        SwagGenderDetectionResult genderDetectionResult1 = SwagGenderDetectionResult.getExample();
        SwagGenderDetectionResult genderDetectionResult2 = genderDetectionResult1;
        SwagGenderDetectionResult genderDetectionResult3 = new SwagGenderDetectionResult();
        SwagGenderDetectionResult genderDetectionResult4 = genderDetectionResult3;

        System.assert(genderDetectionResult1.equals(genderDetectionResult2));
        System.assert(genderDetectionResult2.equals(genderDetectionResult1));
        System.assert(genderDetectionResult1.equals(genderDetectionResult1));
        System.assert(genderDetectionResult3.equals(genderDetectionResult4));
        System.assert(genderDetectionResult4.equals(genderDetectionResult3));
        System.assert(genderDetectionResult3.equals(genderDetectionResult3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagGenderDetectionResult genderDetectionResult1 = SwagGenderDetectionResult.getExample();
        SwagGenderDetectionResult genderDetectionResult2 = SwagGenderDetectionResult.getExample();
        SwagGenderDetectionResult genderDetectionResult3 = new SwagGenderDetectionResult();
        SwagGenderDetectionResult genderDetectionResult4 = new SwagGenderDetectionResult();

        System.assert(genderDetectionResult1.equals(genderDetectionResult2));
        System.assert(genderDetectionResult2.equals(genderDetectionResult1));
        System.assert(genderDetectionResult3.equals(genderDetectionResult4));
        System.assert(genderDetectionResult4.equals(genderDetectionResult3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagGenderDetectionResult genderDetectionResult1 = SwagGenderDetectionResult.getExample();
        SwagGenderDetectionResult genderDetectionResult2 = new SwagGenderDetectionResult();

        System.assertEquals(false, genderDetectionResult1.equals(genderDetectionResult2));
        System.assertEquals(false, genderDetectionResult2.equals(genderDetectionResult1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagGenderDetectionResult genderDetectionResult1 = SwagGenderDetectionResult.getExample();
        SwagGenderDetectionResult genderDetectionResult2 = new SwagGenderDetectionResult();

        System.assertEquals(false, genderDetectionResult1.equals('foo'));
        System.assertEquals(false, genderDetectionResult2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagGenderDetectionResult genderDetectionResult1 = SwagGenderDetectionResult.getExample();
        SwagGenderDetectionResult genderDetectionResult2 = new SwagGenderDetectionResult();
        SwagGenderDetectionResult genderDetectionResult3;

        System.assertEquals(false, genderDetectionResult1.equals(genderDetectionResult3));
        System.assertEquals(false, genderDetectionResult2.equals(genderDetectionResult3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagGenderDetectionResult genderDetectionResult1 = SwagGenderDetectionResult.getExample();
        SwagGenderDetectionResult genderDetectionResult2 = new SwagGenderDetectionResult();

        System.assertEquals(genderDetectionResult1.hashCode(), genderDetectionResult1.hashCode());
        System.assertEquals(genderDetectionResult2.hashCode(), genderDetectionResult2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagGenderDetectionResult genderDetectionResult1 = SwagGenderDetectionResult.getExample();
        SwagGenderDetectionResult genderDetectionResult2 = SwagGenderDetectionResult.getExample();
        SwagGenderDetectionResult genderDetectionResult3 = new SwagGenderDetectionResult();
        SwagGenderDetectionResult genderDetectionResult4 = new SwagGenderDetectionResult();

        System.assert(genderDetectionResult1.equals(genderDetectionResult2));
        System.assert(genderDetectionResult3.equals(genderDetectionResult4));
        System.assertEquals(genderDetectionResult1.hashCode(), genderDetectionResult2.hashCode());
        System.assertEquals(genderDetectionResult3.hashCode(), genderDetectionResult4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        SwagGenderDetectionResult genderDetectionResult = new SwagGenderDetectionResult();
        Map<String, String> propertyMappings = genderDetectionResult.getPropertyMappings();
        System.assertEquals('successful', propertyMappings.get('Successful'));
        System.assertEquals('personWithGender', propertyMappings.get('PersonWithGender'));
        System.assertEquals('peopleIdentified', propertyMappings.get('PeopleIdentified'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        SwagGenderDetectionResult genderDetectionResult = new SwagGenderDetectionResult();
        System.assertEquals(new List<SwagPersonWithGender>(), genderDetectionResult.personWithGender);
        System.assertEquals(null, genderDetectionResult.successful);
        System.assertEquals(null, genderDetectionResult.peopleIdentified);
    }
}

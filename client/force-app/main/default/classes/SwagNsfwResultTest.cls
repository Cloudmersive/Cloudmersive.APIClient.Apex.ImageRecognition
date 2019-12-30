@isTest
private class SwagNsfwResultTest {
    @isTest
    private static void equalsSameInstance() {
        SwagNsfwResult nsfwResult1 = SwagNsfwResult.getExample();
        SwagNsfwResult nsfwResult2 = nsfwResult1;
        SwagNsfwResult nsfwResult3 = new SwagNsfwResult();
        SwagNsfwResult nsfwResult4 = nsfwResult3;

        System.assert(nsfwResult1.equals(nsfwResult2));
        System.assert(nsfwResult2.equals(nsfwResult1));
        System.assert(nsfwResult1.equals(nsfwResult1));
        System.assert(nsfwResult3.equals(nsfwResult4));
        System.assert(nsfwResult4.equals(nsfwResult3));
        System.assert(nsfwResult3.equals(nsfwResult3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagNsfwResult nsfwResult1 = SwagNsfwResult.getExample();
        SwagNsfwResult nsfwResult2 = SwagNsfwResult.getExample();
        SwagNsfwResult nsfwResult3 = new SwagNsfwResult();
        SwagNsfwResult nsfwResult4 = new SwagNsfwResult();

        System.assert(nsfwResult1.equals(nsfwResult2));
        System.assert(nsfwResult2.equals(nsfwResult1));
        System.assert(nsfwResult3.equals(nsfwResult4));
        System.assert(nsfwResult4.equals(nsfwResult3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagNsfwResult nsfwResult1 = SwagNsfwResult.getExample();
        SwagNsfwResult nsfwResult2 = new SwagNsfwResult();

        System.assertEquals(false, nsfwResult1.equals(nsfwResult2));
        System.assertEquals(false, nsfwResult2.equals(nsfwResult1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagNsfwResult nsfwResult1 = SwagNsfwResult.getExample();
        SwagNsfwResult nsfwResult2 = new SwagNsfwResult();

        System.assertEquals(false, nsfwResult1.equals('foo'));
        System.assertEquals(false, nsfwResult2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagNsfwResult nsfwResult1 = SwagNsfwResult.getExample();
        SwagNsfwResult nsfwResult2 = new SwagNsfwResult();
        SwagNsfwResult nsfwResult3;

        System.assertEquals(false, nsfwResult1.equals(nsfwResult3));
        System.assertEquals(false, nsfwResult2.equals(nsfwResult3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagNsfwResult nsfwResult1 = SwagNsfwResult.getExample();
        SwagNsfwResult nsfwResult2 = new SwagNsfwResult();

        System.assertEquals(nsfwResult1.hashCode(), nsfwResult1.hashCode());
        System.assertEquals(nsfwResult2.hashCode(), nsfwResult2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagNsfwResult nsfwResult1 = SwagNsfwResult.getExample();
        SwagNsfwResult nsfwResult2 = SwagNsfwResult.getExample();
        SwagNsfwResult nsfwResult3 = new SwagNsfwResult();
        SwagNsfwResult nsfwResult4 = new SwagNsfwResult();

        System.assert(nsfwResult1.equals(nsfwResult2));
        System.assert(nsfwResult3.equals(nsfwResult4));
        System.assertEquals(nsfwResult1.hashCode(), nsfwResult2.hashCode());
        System.assertEquals(nsfwResult3.hashCode(), nsfwResult4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        SwagNsfwResult nsfwResult = new SwagNsfwResult();
        Map<String, String> propertyMappings = nsfwResult.getPropertyMappings();
        System.assertEquals('successful', propertyMappings.get('Successful'));
        System.assertEquals('score', propertyMappings.get('Score'));
        System.assertEquals('classificationOutcome', propertyMappings.get('ClassificationOutcome'));
    }
}

@isTest
private class SwagDominantColorResultTest {
    @isTest
    private static void equalsSameInstance() {
        SwagDominantColorResult dominantColorResult1 = SwagDominantColorResult.getExample();
        SwagDominantColorResult dominantColorResult2 = dominantColorResult1;
        SwagDominantColorResult dominantColorResult3 = new SwagDominantColorResult();
        SwagDominantColorResult dominantColorResult4 = dominantColorResult3;

        System.assert(dominantColorResult1.equals(dominantColorResult2));
        System.assert(dominantColorResult2.equals(dominantColorResult1));
        System.assert(dominantColorResult1.equals(dominantColorResult1));
        System.assert(dominantColorResult3.equals(dominantColorResult4));
        System.assert(dominantColorResult4.equals(dominantColorResult3));
        System.assert(dominantColorResult3.equals(dominantColorResult3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagDominantColorResult dominantColorResult1 = SwagDominantColorResult.getExample();
        SwagDominantColorResult dominantColorResult2 = SwagDominantColorResult.getExample();
        SwagDominantColorResult dominantColorResult3 = new SwagDominantColorResult();
        SwagDominantColorResult dominantColorResult4 = new SwagDominantColorResult();

        System.assert(dominantColorResult1.equals(dominantColorResult2));
        System.assert(dominantColorResult2.equals(dominantColorResult1));
        System.assert(dominantColorResult3.equals(dominantColorResult4));
        System.assert(dominantColorResult4.equals(dominantColorResult3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagDominantColorResult dominantColorResult1 = SwagDominantColorResult.getExample();
        SwagDominantColorResult dominantColorResult2 = new SwagDominantColorResult();

        System.assertEquals(false, dominantColorResult1.equals(dominantColorResult2));
        System.assertEquals(false, dominantColorResult2.equals(dominantColorResult1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagDominantColorResult dominantColorResult1 = SwagDominantColorResult.getExample();
        SwagDominantColorResult dominantColorResult2 = new SwagDominantColorResult();

        System.assertEquals(false, dominantColorResult1.equals('foo'));
        System.assertEquals(false, dominantColorResult2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagDominantColorResult dominantColorResult1 = SwagDominantColorResult.getExample();
        SwagDominantColorResult dominantColorResult2 = new SwagDominantColorResult();
        SwagDominantColorResult dominantColorResult3;

        System.assertEquals(false, dominantColorResult1.equals(dominantColorResult3));
        System.assertEquals(false, dominantColorResult2.equals(dominantColorResult3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagDominantColorResult dominantColorResult1 = SwagDominantColorResult.getExample();
        SwagDominantColorResult dominantColorResult2 = new SwagDominantColorResult();

        System.assertEquals(dominantColorResult1.hashCode(), dominantColorResult1.hashCode());
        System.assertEquals(dominantColorResult2.hashCode(), dominantColorResult2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagDominantColorResult dominantColorResult1 = SwagDominantColorResult.getExample();
        SwagDominantColorResult dominantColorResult2 = SwagDominantColorResult.getExample();
        SwagDominantColorResult dominantColorResult3 = new SwagDominantColorResult();
        SwagDominantColorResult dominantColorResult4 = new SwagDominantColorResult();

        System.assert(dominantColorResult1.equals(dominantColorResult2));
        System.assert(dominantColorResult3.equals(dominantColorResult4));
        System.assertEquals(dominantColorResult1.hashCode(), dominantColorResult2.hashCode());
        System.assertEquals(dominantColorResult3.hashCode(), dominantColorResult4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        SwagDominantColorResult dominantColorResult = new SwagDominantColorResult();
        Map<String, String> propertyMappings = dominantColorResult.getPropertyMappings();
        System.assertEquals('successful', propertyMappings.get('Successful'));
        System.assertEquals('dominantColors', propertyMappings.get('DominantColors'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        SwagDominantColorResult dominantColorResult = new SwagDominantColorResult();
        System.assertEquals(new List<SwagColorResult>(), dominantColorResult.dominantColors);
        System.assertEquals(null, dominantColorResult.successful);
    }
}

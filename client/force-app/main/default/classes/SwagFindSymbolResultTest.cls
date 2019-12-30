@isTest
private class SwagFindSymbolResultTest {
    @isTest
    private static void equalsSameInstance() {
        SwagFindSymbolResult findSymbolResult1 = SwagFindSymbolResult.getExample();
        SwagFindSymbolResult findSymbolResult2 = findSymbolResult1;
        SwagFindSymbolResult findSymbolResult3 = new SwagFindSymbolResult();
        SwagFindSymbolResult findSymbolResult4 = findSymbolResult3;

        System.assert(findSymbolResult1.equals(findSymbolResult2));
        System.assert(findSymbolResult2.equals(findSymbolResult1));
        System.assert(findSymbolResult1.equals(findSymbolResult1));
        System.assert(findSymbolResult3.equals(findSymbolResult4));
        System.assert(findSymbolResult4.equals(findSymbolResult3));
        System.assert(findSymbolResult3.equals(findSymbolResult3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagFindSymbolResult findSymbolResult1 = SwagFindSymbolResult.getExample();
        SwagFindSymbolResult findSymbolResult2 = SwagFindSymbolResult.getExample();
        SwagFindSymbolResult findSymbolResult3 = new SwagFindSymbolResult();
        SwagFindSymbolResult findSymbolResult4 = new SwagFindSymbolResult();

        System.assert(findSymbolResult1.equals(findSymbolResult2));
        System.assert(findSymbolResult2.equals(findSymbolResult1));
        System.assert(findSymbolResult3.equals(findSymbolResult4));
        System.assert(findSymbolResult4.equals(findSymbolResult3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagFindSymbolResult findSymbolResult1 = SwagFindSymbolResult.getExample();
        SwagFindSymbolResult findSymbolResult2 = new SwagFindSymbolResult();

        System.assertEquals(false, findSymbolResult1.equals(findSymbolResult2));
        System.assertEquals(false, findSymbolResult2.equals(findSymbolResult1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagFindSymbolResult findSymbolResult1 = SwagFindSymbolResult.getExample();
        SwagFindSymbolResult findSymbolResult2 = new SwagFindSymbolResult();

        System.assertEquals(false, findSymbolResult1.equals('foo'));
        System.assertEquals(false, findSymbolResult2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagFindSymbolResult findSymbolResult1 = SwagFindSymbolResult.getExample();
        SwagFindSymbolResult findSymbolResult2 = new SwagFindSymbolResult();
        SwagFindSymbolResult findSymbolResult3;

        System.assertEquals(false, findSymbolResult1.equals(findSymbolResult3));
        System.assertEquals(false, findSymbolResult2.equals(findSymbolResult3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagFindSymbolResult findSymbolResult1 = SwagFindSymbolResult.getExample();
        SwagFindSymbolResult findSymbolResult2 = new SwagFindSymbolResult();

        System.assertEquals(findSymbolResult1.hashCode(), findSymbolResult1.hashCode());
        System.assertEquals(findSymbolResult2.hashCode(), findSymbolResult2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagFindSymbolResult findSymbolResult1 = SwagFindSymbolResult.getExample();
        SwagFindSymbolResult findSymbolResult2 = SwagFindSymbolResult.getExample();
        SwagFindSymbolResult findSymbolResult3 = new SwagFindSymbolResult();
        SwagFindSymbolResult findSymbolResult4 = new SwagFindSymbolResult();

        System.assert(findSymbolResult1.equals(findSymbolResult2));
        System.assert(findSymbolResult3.equals(findSymbolResult4));
        System.assertEquals(findSymbolResult1.hashCode(), findSymbolResult2.hashCode());
        System.assertEquals(findSymbolResult3.hashCode(), findSymbolResult4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        SwagFindSymbolResult findSymbolResult = new SwagFindSymbolResult();
        Map<String, String> propertyMappings = findSymbolResult.getPropertyMappings();
        System.assertEquals('successful', propertyMappings.get('Successful'));
        System.assertEquals('matchScore', propertyMappings.get('MatchScore'));
        System.assertEquals('xleft', propertyMappings.get('XLeft'));
        System.assertEquals('ytop', propertyMappings.get('YTop'));
        System.assertEquals('width', propertyMappings.get('Width'));
        System.assertEquals('height', propertyMappings.get('Height'));
    }
}

@isTest
private class SwagObjectDetectionResultTest {
    @isTest
    private static void equalsSameInstance() {
        SwagObjectDetectionResult objectDetectionResult1 = SwagObjectDetectionResult.getExample();
        SwagObjectDetectionResult objectDetectionResult2 = objectDetectionResult1;
        SwagObjectDetectionResult objectDetectionResult3 = new SwagObjectDetectionResult();
        SwagObjectDetectionResult objectDetectionResult4 = objectDetectionResult3;

        System.assert(objectDetectionResult1.equals(objectDetectionResult2));
        System.assert(objectDetectionResult2.equals(objectDetectionResult1));
        System.assert(objectDetectionResult1.equals(objectDetectionResult1));
        System.assert(objectDetectionResult3.equals(objectDetectionResult4));
        System.assert(objectDetectionResult4.equals(objectDetectionResult3));
        System.assert(objectDetectionResult3.equals(objectDetectionResult3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagObjectDetectionResult objectDetectionResult1 = SwagObjectDetectionResult.getExample();
        SwagObjectDetectionResult objectDetectionResult2 = SwagObjectDetectionResult.getExample();
        SwagObjectDetectionResult objectDetectionResult3 = new SwagObjectDetectionResult();
        SwagObjectDetectionResult objectDetectionResult4 = new SwagObjectDetectionResult();

        System.assert(objectDetectionResult1.equals(objectDetectionResult2));
        System.assert(objectDetectionResult2.equals(objectDetectionResult1));
        System.assert(objectDetectionResult3.equals(objectDetectionResult4));
        System.assert(objectDetectionResult4.equals(objectDetectionResult3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagObjectDetectionResult objectDetectionResult1 = SwagObjectDetectionResult.getExample();
        SwagObjectDetectionResult objectDetectionResult2 = new SwagObjectDetectionResult();

        System.assertEquals(false, objectDetectionResult1.equals(objectDetectionResult2));
        System.assertEquals(false, objectDetectionResult2.equals(objectDetectionResult1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagObjectDetectionResult objectDetectionResult1 = SwagObjectDetectionResult.getExample();
        SwagObjectDetectionResult objectDetectionResult2 = new SwagObjectDetectionResult();

        System.assertEquals(false, objectDetectionResult1.equals('foo'));
        System.assertEquals(false, objectDetectionResult2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagObjectDetectionResult objectDetectionResult1 = SwagObjectDetectionResult.getExample();
        SwagObjectDetectionResult objectDetectionResult2 = new SwagObjectDetectionResult();
        SwagObjectDetectionResult objectDetectionResult3;

        System.assertEquals(false, objectDetectionResult1.equals(objectDetectionResult3));
        System.assertEquals(false, objectDetectionResult2.equals(objectDetectionResult3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagObjectDetectionResult objectDetectionResult1 = SwagObjectDetectionResult.getExample();
        SwagObjectDetectionResult objectDetectionResult2 = new SwagObjectDetectionResult();

        System.assertEquals(objectDetectionResult1.hashCode(), objectDetectionResult1.hashCode());
        System.assertEquals(objectDetectionResult2.hashCode(), objectDetectionResult2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagObjectDetectionResult objectDetectionResult1 = SwagObjectDetectionResult.getExample();
        SwagObjectDetectionResult objectDetectionResult2 = SwagObjectDetectionResult.getExample();
        SwagObjectDetectionResult objectDetectionResult3 = new SwagObjectDetectionResult();
        SwagObjectDetectionResult objectDetectionResult4 = new SwagObjectDetectionResult();

        System.assert(objectDetectionResult1.equals(objectDetectionResult2));
        System.assert(objectDetectionResult3.equals(objectDetectionResult4));
        System.assertEquals(objectDetectionResult1.hashCode(), objectDetectionResult2.hashCode());
        System.assertEquals(objectDetectionResult3.hashCode(), objectDetectionResult4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        SwagObjectDetectionResult objectDetectionResult = new SwagObjectDetectionResult();
        Map<String, String> propertyMappings = objectDetectionResult.getPropertyMappings();
        System.assertEquals('successful', propertyMappings.get('Successful'));
        System.assertEquals('objects', propertyMappings.get('Objects'));
        System.assertEquals('objectCount', propertyMappings.get('ObjectCount'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        SwagObjectDetectionResult objectDetectionResult = new SwagObjectDetectionResult();
        System.assertEquals(new List<SwagDetectedObject>(), objectDetectionResult.objects);
        System.assertEquals(null, objectDetectionResult.successful);
        System.assertEquals(null, objectDetectionResult.objectCount);
    }
}

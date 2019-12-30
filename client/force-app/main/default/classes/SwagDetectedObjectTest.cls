@isTest
private class SwagDetectedObjectTest {
    @isTest
    private static void equalsSameInstance() {
        SwagDetectedObject detectedObject1 = SwagDetectedObject.getExample();
        SwagDetectedObject detectedObject2 = detectedObject1;
        SwagDetectedObject detectedObject3 = new SwagDetectedObject();
        SwagDetectedObject detectedObject4 = detectedObject3;

        System.assert(detectedObject1.equals(detectedObject2));
        System.assert(detectedObject2.equals(detectedObject1));
        System.assert(detectedObject1.equals(detectedObject1));
        System.assert(detectedObject3.equals(detectedObject4));
        System.assert(detectedObject4.equals(detectedObject3));
        System.assert(detectedObject3.equals(detectedObject3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagDetectedObject detectedObject1 = SwagDetectedObject.getExample();
        SwagDetectedObject detectedObject2 = SwagDetectedObject.getExample();
        SwagDetectedObject detectedObject3 = new SwagDetectedObject();
        SwagDetectedObject detectedObject4 = new SwagDetectedObject();

        System.assert(detectedObject1.equals(detectedObject2));
        System.assert(detectedObject2.equals(detectedObject1));
        System.assert(detectedObject3.equals(detectedObject4));
        System.assert(detectedObject4.equals(detectedObject3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagDetectedObject detectedObject1 = SwagDetectedObject.getExample();
        SwagDetectedObject detectedObject2 = new SwagDetectedObject();

        System.assertEquals(false, detectedObject1.equals(detectedObject2));
        System.assertEquals(false, detectedObject2.equals(detectedObject1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagDetectedObject detectedObject1 = SwagDetectedObject.getExample();
        SwagDetectedObject detectedObject2 = new SwagDetectedObject();

        System.assertEquals(false, detectedObject1.equals('foo'));
        System.assertEquals(false, detectedObject2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagDetectedObject detectedObject1 = SwagDetectedObject.getExample();
        SwagDetectedObject detectedObject2 = new SwagDetectedObject();
        SwagDetectedObject detectedObject3;

        System.assertEquals(false, detectedObject1.equals(detectedObject3));
        System.assertEquals(false, detectedObject2.equals(detectedObject3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagDetectedObject detectedObject1 = SwagDetectedObject.getExample();
        SwagDetectedObject detectedObject2 = new SwagDetectedObject();

        System.assertEquals(detectedObject1.hashCode(), detectedObject1.hashCode());
        System.assertEquals(detectedObject2.hashCode(), detectedObject2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagDetectedObject detectedObject1 = SwagDetectedObject.getExample();
        SwagDetectedObject detectedObject2 = SwagDetectedObject.getExample();
        SwagDetectedObject detectedObject3 = new SwagDetectedObject();
        SwagDetectedObject detectedObject4 = new SwagDetectedObject();

        System.assert(detectedObject1.equals(detectedObject2));
        System.assert(detectedObject3.equals(detectedObject4));
        System.assertEquals(detectedObject1.hashCode(), detectedObject2.hashCode());
        System.assertEquals(detectedObject3.hashCode(), detectedObject4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        SwagDetectedObject detectedObject = new SwagDetectedObject();
        Map<String, String> propertyMappings = detectedObject.getPropertyMappings();
        System.assertEquals('objectClassName', propertyMappings.get('ObjectClassName'));
        System.assertEquals('height', propertyMappings.get('Height'));
        System.assertEquals('width', propertyMappings.get('Width'));
        System.assertEquals('score', propertyMappings.get('Score'));
    }
}

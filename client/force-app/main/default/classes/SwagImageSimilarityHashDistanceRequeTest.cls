@isTest
private class SwagImageSimilarityHashDistanceRequeTest {
    @isTest
    private static void equalsSameInstance() {
        SwagImageSimilarityHashDistanceReque imageSimilarityHashDistanceRequest1 = SwagImageSimilarityHashDistanceReque.getExample();
        SwagImageSimilarityHashDistanceReque imageSimilarityHashDistanceRequest2 = imageSimilarityHashDistanceRequest1;
        SwagImageSimilarityHashDistanceReque imageSimilarityHashDistanceRequest3 = new SwagImageSimilarityHashDistanceReque();
        SwagImageSimilarityHashDistanceReque imageSimilarityHashDistanceRequest4 = imageSimilarityHashDistanceRequest3;

        System.assert(imageSimilarityHashDistanceRequest1.equals(imageSimilarityHashDistanceRequest2));
        System.assert(imageSimilarityHashDistanceRequest2.equals(imageSimilarityHashDistanceRequest1));
        System.assert(imageSimilarityHashDistanceRequest1.equals(imageSimilarityHashDistanceRequest1));
        System.assert(imageSimilarityHashDistanceRequest3.equals(imageSimilarityHashDistanceRequest4));
        System.assert(imageSimilarityHashDistanceRequest4.equals(imageSimilarityHashDistanceRequest3));
        System.assert(imageSimilarityHashDistanceRequest3.equals(imageSimilarityHashDistanceRequest3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagImageSimilarityHashDistanceReque imageSimilarityHashDistanceRequest1 = SwagImageSimilarityHashDistanceReque.getExample();
        SwagImageSimilarityHashDistanceReque imageSimilarityHashDistanceRequest2 = SwagImageSimilarityHashDistanceReque.getExample();
        SwagImageSimilarityHashDistanceReque imageSimilarityHashDistanceRequest3 = new SwagImageSimilarityHashDistanceReque();
        SwagImageSimilarityHashDistanceReque imageSimilarityHashDistanceRequest4 = new SwagImageSimilarityHashDistanceReque();

        System.assert(imageSimilarityHashDistanceRequest1.equals(imageSimilarityHashDistanceRequest2));
        System.assert(imageSimilarityHashDistanceRequest2.equals(imageSimilarityHashDistanceRequest1));
        System.assert(imageSimilarityHashDistanceRequest3.equals(imageSimilarityHashDistanceRequest4));
        System.assert(imageSimilarityHashDistanceRequest4.equals(imageSimilarityHashDistanceRequest3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagImageSimilarityHashDistanceReque imageSimilarityHashDistanceRequest1 = SwagImageSimilarityHashDistanceReque.getExample();
        SwagImageSimilarityHashDistanceReque imageSimilarityHashDistanceRequest2 = new SwagImageSimilarityHashDistanceReque();

        System.assertEquals(false, imageSimilarityHashDistanceRequest1.equals(imageSimilarityHashDistanceRequest2));
        System.assertEquals(false, imageSimilarityHashDistanceRequest2.equals(imageSimilarityHashDistanceRequest1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagImageSimilarityHashDistanceReque imageSimilarityHashDistanceRequest1 = SwagImageSimilarityHashDistanceReque.getExample();
        SwagImageSimilarityHashDistanceReque imageSimilarityHashDistanceRequest2 = new SwagImageSimilarityHashDistanceReque();

        System.assertEquals(false, imageSimilarityHashDistanceRequest1.equals('foo'));
        System.assertEquals(false, imageSimilarityHashDistanceRequest2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagImageSimilarityHashDistanceReque imageSimilarityHashDistanceRequest1 = SwagImageSimilarityHashDistanceReque.getExample();
        SwagImageSimilarityHashDistanceReque imageSimilarityHashDistanceRequest2 = new SwagImageSimilarityHashDistanceReque();
        SwagImageSimilarityHashDistanceReque imageSimilarityHashDistanceRequest3;

        System.assertEquals(false, imageSimilarityHashDistanceRequest1.equals(imageSimilarityHashDistanceRequest3));
        System.assertEquals(false, imageSimilarityHashDistanceRequest2.equals(imageSimilarityHashDistanceRequest3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagImageSimilarityHashDistanceReque imageSimilarityHashDistanceRequest1 = SwagImageSimilarityHashDistanceReque.getExample();
        SwagImageSimilarityHashDistanceReque imageSimilarityHashDistanceRequest2 = new SwagImageSimilarityHashDistanceReque();

        System.assertEquals(imageSimilarityHashDistanceRequest1.hashCode(), imageSimilarityHashDistanceRequest1.hashCode());
        System.assertEquals(imageSimilarityHashDistanceRequest2.hashCode(), imageSimilarityHashDistanceRequest2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagImageSimilarityHashDistanceReque imageSimilarityHashDistanceRequest1 = SwagImageSimilarityHashDistanceReque.getExample();
        SwagImageSimilarityHashDistanceReque imageSimilarityHashDistanceRequest2 = SwagImageSimilarityHashDistanceReque.getExample();
        SwagImageSimilarityHashDistanceReque imageSimilarityHashDistanceRequest3 = new SwagImageSimilarityHashDistanceReque();
        SwagImageSimilarityHashDistanceReque imageSimilarityHashDistanceRequest4 = new SwagImageSimilarityHashDistanceReque();

        System.assert(imageSimilarityHashDistanceRequest1.equals(imageSimilarityHashDistanceRequest2));
        System.assert(imageSimilarityHashDistanceRequest3.equals(imageSimilarityHashDistanceRequest4));
        System.assertEquals(imageSimilarityHashDistanceRequest1.hashCode(), imageSimilarityHashDistanceRequest2.hashCode());
        System.assertEquals(imageSimilarityHashDistanceRequest3.hashCode(), imageSimilarityHashDistanceRequest4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        SwagImageSimilarityHashDistanceReque imageSimilarityHashDistanceRequest = new SwagImageSimilarityHashDistanceReque();
        Map<String, String> propertyMappings = imageSimilarityHashDistanceRequest.getPropertyMappings();
        System.assertEquals('imageHash1', propertyMappings.get('ImageHash1'));
        System.assertEquals('imageHash2', propertyMappings.get('ImageHash2'));
    }
}

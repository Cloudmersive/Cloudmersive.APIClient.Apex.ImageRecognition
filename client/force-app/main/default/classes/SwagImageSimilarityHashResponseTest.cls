@isTest
private class SwagImageSimilarityHashResponseTest {
    @isTest
    private static void equalsSameInstance() {
        SwagImageSimilarityHashResponse imageSimilarityHashResponse1 = SwagImageSimilarityHashResponse.getExample();
        SwagImageSimilarityHashResponse imageSimilarityHashResponse2 = imageSimilarityHashResponse1;
        SwagImageSimilarityHashResponse imageSimilarityHashResponse3 = new SwagImageSimilarityHashResponse();
        SwagImageSimilarityHashResponse imageSimilarityHashResponse4 = imageSimilarityHashResponse3;

        System.assert(imageSimilarityHashResponse1.equals(imageSimilarityHashResponse2));
        System.assert(imageSimilarityHashResponse2.equals(imageSimilarityHashResponse1));
        System.assert(imageSimilarityHashResponse1.equals(imageSimilarityHashResponse1));
        System.assert(imageSimilarityHashResponse3.equals(imageSimilarityHashResponse4));
        System.assert(imageSimilarityHashResponse4.equals(imageSimilarityHashResponse3));
        System.assert(imageSimilarityHashResponse3.equals(imageSimilarityHashResponse3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagImageSimilarityHashResponse imageSimilarityHashResponse1 = SwagImageSimilarityHashResponse.getExample();
        SwagImageSimilarityHashResponse imageSimilarityHashResponse2 = SwagImageSimilarityHashResponse.getExample();
        SwagImageSimilarityHashResponse imageSimilarityHashResponse3 = new SwagImageSimilarityHashResponse();
        SwagImageSimilarityHashResponse imageSimilarityHashResponse4 = new SwagImageSimilarityHashResponse();

        System.assert(imageSimilarityHashResponse1.equals(imageSimilarityHashResponse2));
        System.assert(imageSimilarityHashResponse2.equals(imageSimilarityHashResponse1));
        System.assert(imageSimilarityHashResponse3.equals(imageSimilarityHashResponse4));
        System.assert(imageSimilarityHashResponse4.equals(imageSimilarityHashResponse3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagImageSimilarityHashResponse imageSimilarityHashResponse1 = SwagImageSimilarityHashResponse.getExample();
        SwagImageSimilarityHashResponse imageSimilarityHashResponse2 = new SwagImageSimilarityHashResponse();

        System.assertEquals(false, imageSimilarityHashResponse1.equals(imageSimilarityHashResponse2));
        System.assertEquals(false, imageSimilarityHashResponse2.equals(imageSimilarityHashResponse1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagImageSimilarityHashResponse imageSimilarityHashResponse1 = SwagImageSimilarityHashResponse.getExample();
        SwagImageSimilarityHashResponse imageSimilarityHashResponse2 = new SwagImageSimilarityHashResponse();

        System.assertEquals(false, imageSimilarityHashResponse1.equals('foo'));
        System.assertEquals(false, imageSimilarityHashResponse2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagImageSimilarityHashResponse imageSimilarityHashResponse1 = SwagImageSimilarityHashResponse.getExample();
        SwagImageSimilarityHashResponse imageSimilarityHashResponse2 = new SwagImageSimilarityHashResponse();
        SwagImageSimilarityHashResponse imageSimilarityHashResponse3;

        System.assertEquals(false, imageSimilarityHashResponse1.equals(imageSimilarityHashResponse3));
        System.assertEquals(false, imageSimilarityHashResponse2.equals(imageSimilarityHashResponse3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagImageSimilarityHashResponse imageSimilarityHashResponse1 = SwagImageSimilarityHashResponse.getExample();
        SwagImageSimilarityHashResponse imageSimilarityHashResponse2 = new SwagImageSimilarityHashResponse();

        System.assertEquals(imageSimilarityHashResponse1.hashCode(), imageSimilarityHashResponse1.hashCode());
        System.assertEquals(imageSimilarityHashResponse2.hashCode(), imageSimilarityHashResponse2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagImageSimilarityHashResponse imageSimilarityHashResponse1 = SwagImageSimilarityHashResponse.getExample();
        SwagImageSimilarityHashResponse imageSimilarityHashResponse2 = SwagImageSimilarityHashResponse.getExample();
        SwagImageSimilarityHashResponse imageSimilarityHashResponse3 = new SwagImageSimilarityHashResponse();
        SwagImageSimilarityHashResponse imageSimilarityHashResponse4 = new SwagImageSimilarityHashResponse();

        System.assert(imageSimilarityHashResponse1.equals(imageSimilarityHashResponse2));
        System.assert(imageSimilarityHashResponse3.equals(imageSimilarityHashResponse4));
        System.assertEquals(imageSimilarityHashResponse1.hashCode(), imageSimilarityHashResponse2.hashCode());
        System.assertEquals(imageSimilarityHashResponse3.hashCode(), imageSimilarityHashResponse4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        SwagImageSimilarityHashResponse imageSimilarityHashResponse = new SwagImageSimilarityHashResponse();
        Map<String, String> propertyMappings = imageSimilarityHashResponse.getPropertyMappings();
        System.assertEquals('successful', propertyMappings.get('Successful'));
        System.assertEquals('imageHash', propertyMappings.get('ImageHash'));
    }
}

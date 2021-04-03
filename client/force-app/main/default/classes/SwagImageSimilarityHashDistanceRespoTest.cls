@isTest
private class SwagImageSimilarityHashDistanceRespoTest {
    @isTest
    private static void equalsSameInstance() {
        SwagImageSimilarityHashDistanceRespo imageSimilarityHashDistanceResponse1 = SwagImageSimilarityHashDistanceRespo.getExample();
        SwagImageSimilarityHashDistanceRespo imageSimilarityHashDistanceResponse2 = imageSimilarityHashDistanceResponse1;
        SwagImageSimilarityHashDistanceRespo imageSimilarityHashDistanceResponse3 = new SwagImageSimilarityHashDistanceRespo();
        SwagImageSimilarityHashDistanceRespo imageSimilarityHashDistanceResponse4 = imageSimilarityHashDistanceResponse3;

        System.assert(imageSimilarityHashDistanceResponse1.equals(imageSimilarityHashDistanceResponse2));
        System.assert(imageSimilarityHashDistanceResponse2.equals(imageSimilarityHashDistanceResponse1));
        System.assert(imageSimilarityHashDistanceResponse1.equals(imageSimilarityHashDistanceResponse1));
        System.assert(imageSimilarityHashDistanceResponse3.equals(imageSimilarityHashDistanceResponse4));
        System.assert(imageSimilarityHashDistanceResponse4.equals(imageSimilarityHashDistanceResponse3));
        System.assert(imageSimilarityHashDistanceResponse3.equals(imageSimilarityHashDistanceResponse3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagImageSimilarityHashDistanceRespo imageSimilarityHashDistanceResponse1 = SwagImageSimilarityHashDistanceRespo.getExample();
        SwagImageSimilarityHashDistanceRespo imageSimilarityHashDistanceResponse2 = SwagImageSimilarityHashDistanceRespo.getExample();
        SwagImageSimilarityHashDistanceRespo imageSimilarityHashDistanceResponse3 = new SwagImageSimilarityHashDistanceRespo();
        SwagImageSimilarityHashDistanceRespo imageSimilarityHashDistanceResponse4 = new SwagImageSimilarityHashDistanceRespo();

        System.assert(imageSimilarityHashDistanceResponse1.equals(imageSimilarityHashDistanceResponse2));
        System.assert(imageSimilarityHashDistanceResponse2.equals(imageSimilarityHashDistanceResponse1));
        System.assert(imageSimilarityHashDistanceResponse3.equals(imageSimilarityHashDistanceResponse4));
        System.assert(imageSimilarityHashDistanceResponse4.equals(imageSimilarityHashDistanceResponse3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagImageSimilarityHashDistanceRespo imageSimilarityHashDistanceResponse1 = SwagImageSimilarityHashDistanceRespo.getExample();
        SwagImageSimilarityHashDistanceRespo imageSimilarityHashDistanceResponse2 = new SwagImageSimilarityHashDistanceRespo();

        System.assertEquals(false, imageSimilarityHashDistanceResponse1.equals(imageSimilarityHashDistanceResponse2));
        System.assertEquals(false, imageSimilarityHashDistanceResponse2.equals(imageSimilarityHashDistanceResponse1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagImageSimilarityHashDistanceRespo imageSimilarityHashDistanceResponse1 = SwagImageSimilarityHashDistanceRespo.getExample();
        SwagImageSimilarityHashDistanceRespo imageSimilarityHashDistanceResponse2 = new SwagImageSimilarityHashDistanceRespo();

        System.assertEquals(false, imageSimilarityHashDistanceResponse1.equals('foo'));
        System.assertEquals(false, imageSimilarityHashDistanceResponse2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagImageSimilarityHashDistanceRespo imageSimilarityHashDistanceResponse1 = SwagImageSimilarityHashDistanceRespo.getExample();
        SwagImageSimilarityHashDistanceRespo imageSimilarityHashDistanceResponse2 = new SwagImageSimilarityHashDistanceRespo();
        SwagImageSimilarityHashDistanceRespo imageSimilarityHashDistanceResponse3;

        System.assertEquals(false, imageSimilarityHashDistanceResponse1.equals(imageSimilarityHashDistanceResponse3));
        System.assertEquals(false, imageSimilarityHashDistanceResponse2.equals(imageSimilarityHashDistanceResponse3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagImageSimilarityHashDistanceRespo imageSimilarityHashDistanceResponse1 = SwagImageSimilarityHashDistanceRespo.getExample();
        SwagImageSimilarityHashDistanceRespo imageSimilarityHashDistanceResponse2 = new SwagImageSimilarityHashDistanceRespo();

        System.assertEquals(imageSimilarityHashDistanceResponse1.hashCode(), imageSimilarityHashDistanceResponse1.hashCode());
        System.assertEquals(imageSimilarityHashDistanceResponse2.hashCode(), imageSimilarityHashDistanceResponse2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagImageSimilarityHashDistanceRespo imageSimilarityHashDistanceResponse1 = SwagImageSimilarityHashDistanceRespo.getExample();
        SwagImageSimilarityHashDistanceRespo imageSimilarityHashDistanceResponse2 = SwagImageSimilarityHashDistanceRespo.getExample();
        SwagImageSimilarityHashDistanceRespo imageSimilarityHashDistanceResponse3 = new SwagImageSimilarityHashDistanceRespo();
        SwagImageSimilarityHashDistanceRespo imageSimilarityHashDistanceResponse4 = new SwagImageSimilarityHashDistanceRespo();

        System.assert(imageSimilarityHashDistanceResponse1.equals(imageSimilarityHashDistanceResponse2));
        System.assert(imageSimilarityHashDistanceResponse3.equals(imageSimilarityHashDistanceResponse4));
        System.assertEquals(imageSimilarityHashDistanceResponse1.hashCode(), imageSimilarityHashDistanceResponse2.hashCode());
        System.assertEquals(imageSimilarityHashDistanceResponse3.hashCode(), imageSimilarityHashDistanceResponse4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        SwagImageSimilarityHashDistanceRespo imageSimilarityHashDistanceResponse = new SwagImageSimilarityHashDistanceRespo();
        Map<String, String> propertyMappings = imageSimilarityHashDistanceResponse.getPropertyMappings();
        System.assertEquals('successful', propertyMappings.get('Successful'));
        System.assertEquals('imageSimilarityScore', propertyMappings.get('ImageSimilarityScore'));
    }
}

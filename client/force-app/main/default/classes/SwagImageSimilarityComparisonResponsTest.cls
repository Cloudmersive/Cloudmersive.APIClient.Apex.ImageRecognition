@isTest
private class SwagImageSimilarityComparisonResponsTest {
    @isTest
    private static void equalsSameInstance() {
        SwagImageSimilarityComparisonRespons imageSimilarityComparisonResponse1 = SwagImageSimilarityComparisonRespons.getExample();
        SwagImageSimilarityComparisonRespons imageSimilarityComparisonResponse2 = imageSimilarityComparisonResponse1;
        SwagImageSimilarityComparisonRespons imageSimilarityComparisonResponse3 = new SwagImageSimilarityComparisonRespons();
        SwagImageSimilarityComparisonRespons imageSimilarityComparisonResponse4 = imageSimilarityComparisonResponse3;

        System.assert(imageSimilarityComparisonResponse1.equals(imageSimilarityComparisonResponse2));
        System.assert(imageSimilarityComparisonResponse2.equals(imageSimilarityComparisonResponse1));
        System.assert(imageSimilarityComparisonResponse1.equals(imageSimilarityComparisonResponse1));
        System.assert(imageSimilarityComparisonResponse3.equals(imageSimilarityComparisonResponse4));
        System.assert(imageSimilarityComparisonResponse4.equals(imageSimilarityComparisonResponse3));
        System.assert(imageSimilarityComparisonResponse3.equals(imageSimilarityComparisonResponse3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagImageSimilarityComparisonRespons imageSimilarityComparisonResponse1 = SwagImageSimilarityComparisonRespons.getExample();
        SwagImageSimilarityComparisonRespons imageSimilarityComparisonResponse2 = SwagImageSimilarityComparisonRespons.getExample();
        SwagImageSimilarityComparisonRespons imageSimilarityComparisonResponse3 = new SwagImageSimilarityComparisonRespons();
        SwagImageSimilarityComparisonRespons imageSimilarityComparisonResponse4 = new SwagImageSimilarityComparisonRespons();

        System.assert(imageSimilarityComparisonResponse1.equals(imageSimilarityComparisonResponse2));
        System.assert(imageSimilarityComparisonResponse2.equals(imageSimilarityComparisonResponse1));
        System.assert(imageSimilarityComparisonResponse3.equals(imageSimilarityComparisonResponse4));
        System.assert(imageSimilarityComparisonResponse4.equals(imageSimilarityComparisonResponse3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagImageSimilarityComparisonRespons imageSimilarityComparisonResponse1 = SwagImageSimilarityComparisonRespons.getExample();
        SwagImageSimilarityComparisonRespons imageSimilarityComparisonResponse2 = new SwagImageSimilarityComparisonRespons();

        System.assertEquals(false, imageSimilarityComparisonResponse1.equals(imageSimilarityComparisonResponse2));
        System.assertEquals(false, imageSimilarityComparisonResponse2.equals(imageSimilarityComparisonResponse1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagImageSimilarityComparisonRespons imageSimilarityComparisonResponse1 = SwagImageSimilarityComparisonRespons.getExample();
        SwagImageSimilarityComparisonRespons imageSimilarityComparisonResponse2 = new SwagImageSimilarityComparisonRespons();

        System.assertEquals(false, imageSimilarityComparisonResponse1.equals('foo'));
        System.assertEquals(false, imageSimilarityComparisonResponse2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagImageSimilarityComparisonRespons imageSimilarityComparisonResponse1 = SwagImageSimilarityComparisonRespons.getExample();
        SwagImageSimilarityComparisonRespons imageSimilarityComparisonResponse2 = new SwagImageSimilarityComparisonRespons();
        SwagImageSimilarityComparisonRespons imageSimilarityComparisonResponse3;

        System.assertEquals(false, imageSimilarityComparisonResponse1.equals(imageSimilarityComparisonResponse3));
        System.assertEquals(false, imageSimilarityComparisonResponse2.equals(imageSimilarityComparisonResponse3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagImageSimilarityComparisonRespons imageSimilarityComparisonResponse1 = SwagImageSimilarityComparisonRespons.getExample();
        SwagImageSimilarityComparisonRespons imageSimilarityComparisonResponse2 = new SwagImageSimilarityComparisonRespons();

        System.assertEquals(imageSimilarityComparisonResponse1.hashCode(), imageSimilarityComparisonResponse1.hashCode());
        System.assertEquals(imageSimilarityComparisonResponse2.hashCode(), imageSimilarityComparisonResponse2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagImageSimilarityComparisonRespons imageSimilarityComparisonResponse1 = SwagImageSimilarityComparisonRespons.getExample();
        SwagImageSimilarityComparisonRespons imageSimilarityComparisonResponse2 = SwagImageSimilarityComparisonRespons.getExample();
        SwagImageSimilarityComparisonRespons imageSimilarityComparisonResponse3 = new SwagImageSimilarityComparisonRespons();
        SwagImageSimilarityComparisonRespons imageSimilarityComparisonResponse4 = new SwagImageSimilarityComparisonRespons();

        System.assert(imageSimilarityComparisonResponse1.equals(imageSimilarityComparisonResponse2));
        System.assert(imageSimilarityComparisonResponse3.equals(imageSimilarityComparisonResponse4));
        System.assertEquals(imageSimilarityComparisonResponse1.hashCode(), imageSimilarityComparisonResponse2.hashCode());
        System.assertEquals(imageSimilarityComparisonResponse3.hashCode(), imageSimilarityComparisonResponse4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        SwagImageSimilarityComparisonRespons imageSimilarityComparisonResponse = new SwagImageSimilarityComparisonRespons();
        Map<String, String> propertyMappings = imageSimilarityComparisonResponse.getPropertyMappings();
        System.assertEquals('successful', propertyMappings.get('Successful'));
        System.assertEquals('areImagesSimilar', propertyMappings.get('AreImagesSimilar'));
        System.assertEquals('imageSimilarityScore', propertyMappings.get('ImageSimilarityScore'));
    }
}

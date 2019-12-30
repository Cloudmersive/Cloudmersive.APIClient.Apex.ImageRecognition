@isTest
private class SwagFaceLocateWithLandmarksResponseTest {
    @isTest
    private static void equalsSameInstance() {
        SwagFaceLocateWithLandmarksResponse faceLocateWithLandmarksResponse1 = SwagFaceLocateWithLandmarksResponse.getExample();
        SwagFaceLocateWithLandmarksResponse faceLocateWithLandmarksResponse2 = faceLocateWithLandmarksResponse1;
        SwagFaceLocateWithLandmarksResponse faceLocateWithLandmarksResponse3 = new SwagFaceLocateWithLandmarksResponse();
        SwagFaceLocateWithLandmarksResponse faceLocateWithLandmarksResponse4 = faceLocateWithLandmarksResponse3;

        System.assert(faceLocateWithLandmarksResponse1.equals(faceLocateWithLandmarksResponse2));
        System.assert(faceLocateWithLandmarksResponse2.equals(faceLocateWithLandmarksResponse1));
        System.assert(faceLocateWithLandmarksResponse1.equals(faceLocateWithLandmarksResponse1));
        System.assert(faceLocateWithLandmarksResponse3.equals(faceLocateWithLandmarksResponse4));
        System.assert(faceLocateWithLandmarksResponse4.equals(faceLocateWithLandmarksResponse3));
        System.assert(faceLocateWithLandmarksResponse3.equals(faceLocateWithLandmarksResponse3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagFaceLocateWithLandmarksResponse faceLocateWithLandmarksResponse1 = SwagFaceLocateWithLandmarksResponse.getExample();
        SwagFaceLocateWithLandmarksResponse faceLocateWithLandmarksResponse2 = SwagFaceLocateWithLandmarksResponse.getExample();
        SwagFaceLocateWithLandmarksResponse faceLocateWithLandmarksResponse3 = new SwagFaceLocateWithLandmarksResponse();
        SwagFaceLocateWithLandmarksResponse faceLocateWithLandmarksResponse4 = new SwagFaceLocateWithLandmarksResponse();

        System.assert(faceLocateWithLandmarksResponse1.equals(faceLocateWithLandmarksResponse2));
        System.assert(faceLocateWithLandmarksResponse2.equals(faceLocateWithLandmarksResponse1));
        System.assert(faceLocateWithLandmarksResponse3.equals(faceLocateWithLandmarksResponse4));
        System.assert(faceLocateWithLandmarksResponse4.equals(faceLocateWithLandmarksResponse3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagFaceLocateWithLandmarksResponse faceLocateWithLandmarksResponse1 = SwagFaceLocateWithLandmarksResponse.getExample();
        SwagFaceLocateWithLandmarksResponse faceLocateWithLandmarksResponse2 = new SwagFaceLocateWithLandmarksResponse();

        System.assertEquals(false, faceLocateWithLandmarksResponse1.equals(faceLocateWithLandmarksResponse2));
        System.assertEquals(false, faceLocateWithLandmarksResponse2.equals(faceLocateWithLandmarksResponse1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagFaceLocateWithLandmarksResponse faceLocateWithLandmarksResponse1 = SwagFaceLocateWithLandmarksResponse.getExample();
        SwagFaceLocateWithLandmarksResponse faceLocateWithLandmarksResponse2 = new SwagFaceLocateWithLandmarksResponse();

        System.assertEquals(false, faceLocateWithLandmarksResponse1.equals('foo'));
        System.assertEquals(false, faceLocateWithLandmarksResponse2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagFaceLocateWithLandmarksResponse faceLocateWithLandmarksResponse1 = SwagFaceLocateWithLandmarksResponse.getExample();
        SwagFaceLocateWithLandmarksResponse faceLocateWithLandmarksResponse2 = new SwagFaceLocateWithLandmarksResponse();
        SwagFaceLocateWithLandmarksResponse faceLocateWithLandmarksResponse3;

        System.assertEquals(false, faceLocateWithLandmarksResponse1.equals(faceLocateWithLandmarksResponse3));
        System.assertEquals(false, faceLocateWithLandmarksResponse2.equals(faceLocateWithLandmarksResponse3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagFaceLocateWithLandmarksResponse faceLocateWithLandmarksResponse1 = SwagFaceLocateWithLandmarksResponse.getExample();
        SwagFaceLocateWithLandmarksResponse faceLocateWithLandmarksResponse2 = new SwagFaceLocateWithLandmarksResponse();

        System.assertEquals(faceLocateWithLandmarksResponse1.hashCode(), faceLocateWithLandmarksResponse1.hashCode());
        System.assertEquals(faceLocateWithLandmarksResponse2.hashCode(), faceLocateWithLandmarksResponse2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagFaceLocateWithLandmarksResponse faceLocateWithLandmarksResponse1 = SwagFaceLocateWithLandmarksResponse.getExample();
        SwagFaceLocateWithLandmarksResponse faceLocateWithLandmarksResponse2 = SwagFaceLocateWithLandmarksResponse.getExample();
        SwagFaceLocateWithLandmarksResponse faceLocateWithLandmarksResponse3 = new SwagFaceLocateWithLandmarksResponse();
        SwagFaceLocateWithLandmarksResponse faceLocateWithLandmarksResponse4 = new SwagFaceLocateWithLandmarksResponse();

        System.assert(faceLocateWithLandmarksResponse1.equals(faceLocateWithLandmarksResponse2));
        System.assert(faceLocateWithLandmarksResponse3.equals(faceLocateWithLandmarksResponse4));
        System.assertEquals(faceLocateWithLandmarksResponse1.hashCode(), faceLocateWithLandmarksResponse2.hashCode());
        System.assertEquals(faceLocateWithLandmarksResponse3.hashCode(), faceLocateWithLandmarksResponse4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        SwagFaceLocateWithLandmarksResponse faceLocateWithLandmarksResponse = new SwagFaceLocateWithLandmarksResponse();
        Map<String, String> propertyMappings = faceLocateWithLandmarksResponse.getPropertyMappings();
        System.assertEquals('successful', propertyMappings.get('Successful'));
        System.assertEquals('faces', propertyMappings.get('Faces'));
        System.assertEquals('faceCount', propertyMappings.get('FaceCount'));
        System.assertEquals('errorDetails', propertyMappings.get('ErrorDetails'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        SwagFaceLocateWithLandmarksResponse faceLocateWithLandmarksResponse = new SwagFaceLocateWithLandmarksResponse();
        System.assertEquals(new List<SwagFaceWithLandmarks>(), faceLocateWithLandmarksResponse.faces);
        System.assertEquals(null, faceLocateWithLandmarksResponse.successful);
        System.assertEquals(null, faceLocateWithLandmarksResponse.faceCount);
        System.assertEquals(null, faceLocateWithLandmarksResponse.errorDetails);
    }
}

@isTest
private class SwagFaceLocateResponseTest {
    @isTest
    private static void equalsSameInstance() {
        SwagFaceLocateResponse faceLocateResponse1 = SwagFaceLocateResponse.getExample();
        SwagFaceLocateResponse faceLocateResponse2 = faceLocateResponse1;
        SwagFaceLocateResponse faceLocateResponse3 = new SwagFaceLocateResponse();
        SwagFaceLocateResponse faceLocateResponse4 = faceLocateResponse3;

        System.assert(faceLocateResponse1.equals(faceLocateResponse2));
        System.assert(faceLocateResponse2.equals(faceLocateResponse1));
        System.assert(faceLocateResponse1.equals(faceLocateResponse1));
        System.assert(faceLocateResponse3.equals(faceLocateResponse4));
        System.assert(faceLocateResponse4.equals(faceLocateResponse3));
        System.assert(faceLocateResponse3.equals(faceLocateResponse3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagFaceLocateResponse faceLocateResponse1 = SwagFaceLocateResponse.getExample();
        SwagFaceLocateResponse faceLocateResponse2 = SwagFaceLocateResponse.getExample();
        SwagFaceLocateResponse faceLocateResponse3 = new SwagFaceLocateResponse();
        SwagFaceLocateResponse faceLocateResponse4 = new SwagFaceLocateResponse();

        System.assert(faceLocateResponse1.equals(faceLocateResponse2));
        System.assert(faceLocateResponse2.equals(faceLocateResponse1));
        System.assert(faceLocateResponse3.equals(faceLocateResponse4));
        System.assert(faceLocateResponse4.equals(faceLocateResponse3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagFaceLocateResponse faceLocateResponse1 = SwagFaceLocateResponse.getExample();
        SwagFaceLocateResponse faceLocateResponse2 = new SwagFaceLocateResponse();

        System.assertEquals(false, faceLocateResponse1.equals(faceLocateResponse2));
        System.assertEquals(false, faceLocateResponse2.equals(faceLocateResponse1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagFaceLocateResponse faceLocateResponse1 = SwagFaceLocateResponse.getExample();
        SwagFaceLocateResponse faceLocateResponse2 = new SwagFaceLocateResponse();

        System.assertEquals(false, faceLocateResponse1.equals('foo'));
        System.assertEquals(false, faceLocateResponse2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagFaceLocateResponse faceLocateResponse1 = SwagFaceLocateResponse.getExample();
        SwagFaceLocateResponse faceLocateResponse2 = new SwagFaceLocateResponse();
        SwagFaceLocateResponse faceLocateResponse3;

        System.assertEquals(false, faceLocateResponse1.equals(faceLocateResponse3));
        System.assertEquals(false, faceLocateResponse2.equals(faceLocateResponse3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagFaceLocateResponse faceLocateResponse1 = SwagFaceLocateResponse.getExample();
        SwagFaceLocateResponse faceLocateResponse2 = new SwagFaceLocateResponse();

        System.assertEquals(faceLocateResponse1.hashCode(), faceLocateResponse1.hashCode());
        System.assertEquals(faceLocateResponse2.hashCode(), faceLocateResponse2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagFaceLocateResponse faceLocateResponse1 = SwagFaceLocateResponse.getExample();
        SwagFaceLocateResponse faceLocateResponse2 = SwagFaceLocateResponse.getExample();
        SwagFaceLocateResponse faceLocateResponse3 = new SwagFaceLocateResponse();
        SwagFaceLocateResponse faceLocateResponse4 = new SwagFaceLocateResponse();

        System.assert(faceLocateResponse1.equals(faceLocateResponse2));
        System.assert(faceLocateResponse3.equals(faceLocateResponse4));
        System.assertEquals(faceLocateResponse1.hashCode(), faceLocateResponse2.hashCode());
        System.assertEquals(faceLocateResponse3.hashCode(), faceLocateResponse4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        SwagFaceLocateResponse faceLocateResponse = new SwagFaceLocateResponse();
        Map<String, String> propertyMappings = faceLocateResponse.getPropertyMappings();
        System.assertEquals('successful', propertyMappings.get('Successful'));
        System.assertEquals('faces', propertyMappings.get('Faces'));
        System.assertEquals('faceCount', propertyMappings.get('FaceCount'));
        System.assertEquals('errorDetails', propertyMappings.get('ErrorDetails'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        SwagFaceLocateResponse faceLocateResponse = new SwagFaceLocateResponse();
        System.assertEquals(new List<SwagFace>(), faceLocateResponse.faces);
        System.assertEquals(null, faceLocateResponse.successful);
        System.assertEquals(null, faceLocateResponse.faceCount);
        System.assertEquals(null, faceLocateResponse.errorDetails);
    }
}

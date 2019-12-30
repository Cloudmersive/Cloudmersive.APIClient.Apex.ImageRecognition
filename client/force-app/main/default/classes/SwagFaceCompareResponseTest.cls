@isTest
private class SwagFaceCompareResponseTest {
    @isTest
    private static void equalsSameInstance() {
        SwagFaceCompareResponse faceCompareResponse1 = SwagFaceCompareResponse.getExample();
        SwagFaceCompareResponse faceCompareResponse2 = faceCompareResponse1;
        SwagFaceCompareResponse faceCompareResponse3 = new SwagFaceCompareResponse();
        SwagFaceCompareResponse faceCompareResponse4 = faceCompareResponse3;

        System.assert(faceCompareResponse1.equals(faceCompareResponse2));
        System.assert(faceCompareResponse2.equals(faceCompareResponse1));
        System.assert(faceCompareResponse1.equals(faceCompareResponse1));
        System.assert(faceCompareResponse3.equals(faceCompareResponse4));
        System.assert(faceCompareResponse4.equals(faceCompareResponse3));
        System.assert(faceCompareResponse3.equals(faceCompareResponse3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagFaceCompareResponse faceCompareResponse1 = SwagFaceCompareResponse.getExample();
        SwagFaceCompareResponse faceCompareResponse2 = SwagFaceCompareResponse.getExample();
        SwagFaceCompareResponse faceCompareResponse3 = new SwagFaceCompareResponse();
        SwagFaceCompareResponse faceCompareResponse4 = new SwagFaceCompareResponse();

        System.assert(faceCompareResponse1.equals(faceCompareResponse2));
        System.assert(faceCompareResponse2.equals(faceCompareResponse1));
        System.assert(faceCompareResponse3.equals(faceCompareResponse4));
        System.assert(faceCompareResponse4.equals(faceCompareResponse3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagFaceCompareResponse faceCompareResponse1 = SwagFaceCompareResponse.getExample();
        SwagFaceCompareResponse faceCompareResponse2 = new SwagFaceCompareResponse();

        System.assertEquals(false, faceCompareResponse1.equals(faceCompareResponse2));
        System.assertEquals(false, faceCompareResponse2.equals(faceCompareResponse1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagFaceCompareResponse faceCompareResponse1 = SwagFaceCompareResponse.getExample();
        SwagFaceCompareResponse faceCompareResponse2 = new SwagFaceCompareResponse();

        System.assertEquals(false, faceCompareResponse1.equals('foo'));
        System.assertEquals(false, faceCompareResponse2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagFaceCompareResponse faceCompareResponse1 = SwagFaceCompareResponse.getExample();
        SwagFaceCompareResponse faceCompareResponse2 = new SwagFaceCompareResponse();
        SwagFaceCompareResponse faceCompareResponse3;

        System.assertEquals(false, faceCompareResponse1.equals(faceCompareResponse3));
        System.assertEquals(false, faceCompareResponse2.equals(faceCompareResponse3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagFaceCompareResponse faceCompareResponse1 = SwagFaceCompareResponse.getExample();
        SwagFaceCompareResponse faceCompareResponse2 = new SwagFaceCompareResponse();

        System.assertEquals(faceCompareResponse1.hashCode(), faceCompareResponse1.hashCode());
        System.assertEquals(faceCompareResponse2.hashCode(), faceCompareResponse2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagFaceCompareResponse faceCompareResponse1 = SwagFaceCompareResponse.getExample();
        SwagFaceCompareResponse faceCompareResponse2 = SwagFaceCompareResponse.getExample();
        SwagFaceCompareResponse faceCompareResponse3 = new SwagFaceCompareResponse();
        SwagFaceCompareResponse faceCompareResponse4 = new SwagFaceCompareResponse();

        System.assert(faceCompareResponse1.equals(faceCompareResponse2));
        System.assert(faceCompareResponse3.equals(faceCompareResponse4));
        System.assertEquals(faceCompareResponse1.hashCode(), faceCompareResponse2.hashCode());
        System.assertEquals(faceCompareResponse3.hashCode(), faceCompareResponse4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        SwagFaceCompareResponse faceCompareResponse = new SwagFaceCompareResponse();
        Map<String, String> propertyMappings = faceCompareResponse.getPropertyMappings();
        System.assertEquals('successful', propertyMappings.get('Successful'));
        System.assertEquals('faces', propertyMappings.get('Faces'));
        System.assertEquals('faceCount', propertyMappings.get('FaceCount'));
        System.assertEquals('errorDetails', propertyMappings.get('ErrorDetails'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        SwagFaceCompareResponse faceCompareResponse = new SwagFaceCompareResponse();
        System.assertEquals(new List<SwagFaceMatch>(), faceCompareResponse.faces);
        System.assertEquals(null, faceCompareResponse.successful);
        System.assertEquals(null, faceCompareResponse.faceCount);
        System.assertEquals(null, faceCompareResponse.errorDetails);
    }
}

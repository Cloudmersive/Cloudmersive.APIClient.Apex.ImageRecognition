@isTest
private class SwagCreateHandwritingRequestTest {
    @isTest
    private static void equalsSameInstance() {
        SwagCreateHandwritingRequest createHandwritingRequest1 = SwagCreateHandwritingRequest.getExample();
        SwagCreateHandwritingRequest createHandwritingRequest2 = createHandwritingRequest1;
        SwagCreateHandwritingRequest createHandwritingRequest3 = new SwagCreateHandwritingRequest();
        SwagCreateHandwritingRequest createHandwritingRequest4 = createHandwritingRequest3;

        System.assert(createHandwritingRequest1.equals(createHandwritingRequest2));
        System.assert(createHandwritingRequest2.equals(createHandwritingRequest1));
        System.assert(createHandwritingRequest1.equals(createHandwritingRequest1));
        System.assert(createHandwritingRequest3.equals(createHandwritingRequest4));
        System.assert(createHandwritingRequest4.equals(createHandwritingRequest3));
        System.assert(createHandwritingRequest3.equals(createHandwritingRequest3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagCreateHandwritingRequest createHandwritingRequest1 = SwagCreateHandwritingRequest.getExample();
        SwagCreateHandwritingRequest createHandwritingRequest2 = SwagCreateHandwritingRequest.getExample();
        SwagCreateHandwritingRequest createHandwritingRequest3 = new SwagCreateHandwritingRequest();
        SwagCreateHandwritingRequest createHandwritingRequest4 = new SwagCreateHandwritingRequest();

        System.assert(createHandwritingRequest1.equals(createHandwritingRequest2));
        System.assert(createHandwritingRequest2.equals(createHandwritingRequest1));
        System.assert(createHandwritingRequest3.equals(createHandwritingRequest4));
        System.assert(createHandwritingRequest4.equals(createHandwritingRequest3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagCreateHandwritingRequest createHandwritingRequest1 = SwagCreateHandwritingRequest.getExample();
        SwagCreateHandwritingRequest createHandwritingRequest2 = new SwagCreateHandwritingRequest();

        System.assertEquals(false, createHandwritingRequest1.equals(createHandwritingRequest2));
        System.assertEquals(false, createHandwritingRequest2.equals(createHandwritingRequest1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagCreateHandwritingRequest createHandwritingRequest1 = SwagCreateHandwritingRequest.getExample();
        SwagCreateHandwritingRequest createHandwritingRequest2 = new SwagCreateHandwritingRequest();

        System.assertEquals(false, createHandwritingRequest1.equals('foo'));
        System.assertEquals(false, createHandwritingRequest2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagCreateHandwritingRequest createHandwritingRequest1 = SwagCreateHandwritingRequest.getExample();
        SwagCreateHandwritingRequest createHandwritingRequest2 = new SwagCreateHandwritingRequest();
        SwagCreateHandwritingRequest createHandwritingRequest3;

        System.assertEquals(false, createHandwritingRequest1.equals(createHandwritingRequest3));
        System.assertEquals(false, createHandwritingRequest2.equals(createHandwritingRequest3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagCreateHandwritingRequest createHandwritingRequest1 = SwagCreateHandwritingRequest.getExample();
        SwagCreateHandwritingRequest createHandwritingRequest2 = new SwagCreateHandwritingRequest();

        System.assertEquals(createHandwritingRequest1.hashCode(), createHandwritingRequest1.hashCode());
        System.assertEquals(createHandwritingRequest2.hashCode(), createHandwritingRequest2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagCreateHandwritingRequest createHandwritingRequest1 = SwagCreateHandwritingRequest.getExample();
        SwagCreateHandwritingRequest createHandwritingRequest2 = SwagCreateHandwritingRequest.getExample();
        SwagCreateHandwritingRequest createHandwritingRequest3 = new SwagCreateHandwritingRequest();
        SwagCreateHandwritingRequest createHandwritingRequest4 = new SwagCreateHandwritingRequest();

        System.assert(createHandwritingRequest1.equals(createHandwritingRequest2));
        System.assert(createHandwritingRequest3.equals(createHandwritingRequest4));
        System.assertEquals(createHandwritingRequest1.hashCode(), createHandwritingRequest2.hashCode());
        System.assertEquals(createHandwritingRequest3.hashCode(), createHandwritingRequest4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        SwagCreateHandwritingRequest createHandwritingRequest = new SwagCreateHandwritingRequest();
        Map<String, String> propertyMappings = createHandwritingRequest.getPropertyMappings();
        System.assertEquals('textInput', propertyMappings.get('TextInput'));
        System.assertEquals('targetWidth', propertyMappings.get('TargetWidth'));
        System.assertEquals('strokeWidth', propertyMappings.get('StrokeWidth'));
        System.assertEquals('color', propertyMappings.get('Color'));
    }
}

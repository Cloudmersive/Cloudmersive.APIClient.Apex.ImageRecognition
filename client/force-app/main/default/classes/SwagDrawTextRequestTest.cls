@isTest
private class SwagDrawTextRequestTest {
    @isTest
    private static void equalsSameInstance() {
        SwagDrawTextRequest drawTextRequest1 = SwagDrawTextRequest.getExample();
        SwagDrawTextRequest drawTextRequest2 = drawTextRequest1;
        SwagDrawTextRequest drawTextRequest3 = new SwagDrawTextRequest();
        SwagDrawTextRequest drawTextRequest4 = drawTextRequest3;

        System.assert(drawTextRequest1.equals(drawTextRequest2));
        System.assert(drawTextRequest2.equals(drawTextRequest1));
        System.assert(drawTextRequest1.equals(drawTextRequest1));
        System.assert(drawTextRequest3.equals(drawTextRequest4));
        System.assert(drawTextRequest4.equals(drawTextRequest3));
        System.assert(drawTextRequest3.equals(drawTextRequest3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagDrawTextRequest drawTextRequest1 = SwagDrawTextRequest.getExample();
        SwagDrawTextRequest drawTextRequest2 = SwagDrawTextRequest.getExample();
        SwagDrawTextRequest drawTextRequest3 = new SwagDrawTextRequest();
        SwagDrawTextRequest drawTextRequest4 = new SwagDrawTextRequest();

        System.assert(drawTextRequest1.equals(drawTextRequest2));
        System.assert(drawTextRequest2.equals(drawTextRequest1));
        System.assert(drawTextRequest3.equals(drawTextRequest4));
        System.assert(drawTextRequest4.equals(drawTextRequest3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagDrawTextRequest drawTextRequest1 = SwagDrawTextRequest.getExample();
        SwagDrawTextRequest drawTextRequest2 = new SwagDrawTextRequest();

        System.assertEquals(false, drawTextRequest1.equals(drawTextRequest2));
        System.assertEquals(false, drawTextRequest2.equals(drawTextRequest1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagDrawTextRequest drawTextRequest1 = SwagDrawTextRequest.getExample();
        SwagDrawTextRequest drawTextRequest2 = new SwagDrawTextRequest();

        System.assertEquals(false, drawTextRequest1.equals('foo'));
        System.assertEquals(false, drawTextRequest2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagDrawTextRequest drawTextRequest1 = SwagDrawTextRequest.getExample();
        SwagDrawTextRequest drawTextRequest2 = new SwagDrawTextRequest();
        SwagDrawTextRequest drawTextRequest3;

        System.assertEquals(false, drawTextRequest1.equals(drawTextRequest3));
        System.assertEquals(false, drawTextRequest2.equals(drawTextRequest3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagDrawTextRequest drawTextRequest1 = SwagDrawTextRequest.getExample();
        SwagDrawTextRequest drawTextRequest2 = new SwagDrawTextRequest();

        System.assertEquals(drawTextRequest1.hashCode(), drawTextRequest1.hashCode());
        System.assertEquals(drawTextRequest2.hashCode(), drawTextRequest2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagDrawTextRequest drawTextRequest1 = SwagDrawTextRequest.getExample();
        SwagDrawTextRequest drawTextRequest2 = SwagDrawTextRequest.getExample();
        SwagDrawTextRequest drawTextRequest3 = new SwagDrawTextRequest();
        SwagDrawTextRequest drawTextRequest4 = new SwagDrawTextRequest();

        System.assert(drawTextRequest1.equals(drawTextRequest2));
        System.assert(drawTextRequest3.equals(drawTextRequest4));
        System.assertEquals(drawTextRequest1.hashCode(), drawTextRequest2.hashCode());
        System.assertEquals(drawTextRequest3.hashCode(), drawTextRequest4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        SwagDrawTextRequest drawTextRequest = new SwagDrawTextRequest();
        Map<String, String> propertyMappings = drawTextRequest.getPropertyMappings();
        System.assertEquals('baseImageBytes', propertyMappings.get('BaseImageBytes'));
        System.assertEquals('baseImageUrl', propertyMappings.get('BaseImageUrl'));
        System.assertEquals('textToDraw', propertyMappings.get('TextToDraw'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        SwagDrawTextRequest drawTextRequest = new SwagDrawTextRequest();
        System.assertEquals(new List<SwagDrawTextInstance>(), drawTextRequest.textToDraw);
        System.assertEquals(null, drawTextRequest.baseImageBytes);
        System.assertEquals(null, drawTextRequest.baseImageUrl);
    }
}

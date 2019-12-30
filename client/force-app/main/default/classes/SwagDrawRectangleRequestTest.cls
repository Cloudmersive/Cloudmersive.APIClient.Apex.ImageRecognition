@isTest
private class SwagDrawRectangleRequestTest {
    @isTest
    private static void equalsSameInstance() {
        SwagDrawRectangleRequest drawRectangleRequest1 = SwagDrawRectangleRequest.getExample();
        SwagDrawRectangleRequest drawRectangleRequest2 = drawRectangleRequest1;
        SwagDrawRectangleRequest drawRectangleRequest3 = new SwagDrawRectangleRequest();
        SwagDrawRectangleRequest drawRectangleRequest4 = drawRectangleRequest3;

        System.assert(drawRectangleRequest1.equals(drawRectangleRequest2));
        System.assert(drawRectangleRequest2.equals(drawRectangleRequest1));
        System.assert(drawRectangleRequest1.equals(drawRectangleRequest1));
        System.assert(drawRectangleRequest3.equals(drawRectangleRequest4));
        System.assert(drawRectangleRequest4.equals(drawRectangleRequest3));
        System.assert(drawRectangleRequest3.equals(drawRectangleRequest3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagDrawRectangleRequest drawRectangleRequest1 = SwagDrawRectangleRequest.getExample();
        SwagDrawRectangleRequest drawRectangleRequest2 = SwagDrawRectangleRequest.getExample();
        SwagDrawRectangleRequest drawRectangleRequest3 = new SwagDrawRectangleRequest();
        SwagDrawRectangleRequest drawRectangleRequest4 = new SwagDrawRectangleRequest();

        System.assert(drawRectangleRequest1.equals(drawRectangleRequest2));
        System.assert(drawRectangleRequest2.equals(drawRectangleRequest1));
        System.assert(drawRectangleRequest3.equals(drawRectangleRequest4));
        System.assert(drawRectangleRequest4.equals(drawRectangleRequest3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagDrawRectangleRequest drawRectangleRequest1 = SwagDrawRectangleRequest.getExample();
        SwagDrawRectangleRequest drawRectangleRequest2 = new SwagDrawRectangleRequest();

        System.assertEquals(false, drawRectangleRequest1.equals(drawRectangleRequest2));
        System.assertEquals(false, drawRectangleRequest2.equals(drawRectangleRequest1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagDrawRectangleRequest drawRectangleRequest1 = SwagDrawRectangleRequest.getExample();
        SwagDrawRectangleRequest drawRectangleRequest2 = new SwagDrawRectangleRequest();

        System.assertEquals(false, drawRectangleRequest1.equals('foo'));
        System.assertEquals(false, drawRectangleRequest2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagDrawRectangleRequest drawRectangleRequest1 = SwagDrawRectangleRequest.getExample();
        SwagDrawRectangleRequest drawRectangleRequest2 = new SwagDrawRectangleRequest();
        SwagDrawRectangleRequest drawRectangleRequest3;

        System.assertEquals(false, drawRectangleRequest1.equals(drawRectangleRequest3));
        System.assertEquals(false, drawRectangleRequest2.equals(drawRectangleRequest3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagDrawRectangleRequest drawRectangleRequest1 = SwagDrawRectangleRequest.getExample();
        SwagDrawRectangleRequest drawRectangleRequest2 = new SwagDrawRectangleRequest();

        System.assertEquals(drawRectangleRequest1.hashCode(), drawRectangleRequest1.hashCode());
        System.assertEquals(drawRectangleRequest2.hashCode(), drawRectangleRequest2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagDrawRectangleRequest drawRectangleRequest1 = SwagDrawRectangleRequest.getExample();
        SwagDrawRectangleRequest drawRectangleRequest2 = SwagDrawRectangleRequest.getExample();
        SwagDrawRectangleRequest drawRectangleRequest3 = new SwagDrawRectangleRequest();
        SwagDrawRectangleRequest drawRectangleRequest4 = new SwagDrawRectangleRequest();

        System.assert(drawRectangleRequest1.equals(drawRectangleRequest2));
        System.assert(drawRectangleRequest3.equals(drawRectangleRequest4));
        System.assertEquals(drawRectangleRequest1.hashCode(), drawRectangleRequest2.hashCode());
        System.assertEquals(drawRectangleRequest3.hashCode(), drawRectangleRequest4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        SwagDrawRectangleRequest drawRectangleRequest = new SwagDrawRectangleRequest();
        Map<String, String> propertyMappings = drawRectangleRequest.getPropertyMappings();
        System.assertEquals('baseImageBytes', propertyMappings.get('BaseImageBytes'));
        System.assertEquals('baseImageUrl', propertyMappings.get('BaseImageUrl'));
        System.assertEquals('rectanglesToDraw', propertyMappings.get('RectanglesToDraw'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        SwagDrawRectangleRequest drawRectangleRequest = new SwagDrawRectangleRequest();
        System.assertEquals(new List<SwagDrawRectangleInstance>(), drawRectangleRequest.rectanglesToDraw);
        System.assertEquals(null, drawRectangleRequest.baseImageBytes);
        System.assertEquals(null, drawRectangleRequest.baseImageUrl);
    }
}

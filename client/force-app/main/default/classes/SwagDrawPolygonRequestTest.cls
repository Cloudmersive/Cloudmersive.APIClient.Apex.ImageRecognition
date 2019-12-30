@isTest
private class SwagDrawPolygonRequestTest {
    @isTest
    private static void equalsSameInstance() {
        SwagDrawPolygonRequest drawPolygonRequest1 = SwagDrawPolygonRequest.getExample();
        SwagDrawPolygonRequest drawPolygonRequest2 = drawPolygonRequest1;
        SwagDrawPolygonRequest drawPolygonRequest3 = new SwagDrawPolygonRequest();
        SwagDrawPolygonRequest drawPolygonRequest4 = drawPolygonRequest3;

        System.assert(drawPolygonRequest1.equals(drawPolygonRequest2));
        System.assert(drawPolygonRequest2.equals(drawPolygonRequest1));
        System.assert(drawPolygonRequest1.equals(drawPolygonRequest1));
        System.assert(drawPolygonRequest3.equals(drawPolygonRequest4));
        System.assert(drawPolygonRequest4.equals(drawPolygonRequest3));
        System.assert(drawPolygonRequest3.equals(drawPolygonRequest3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagDrawPolygonRequest drawPolygonRequest1 = SwagDrawPolygonRequest.getExample();
        SwagDrawPolygonRequest drawPolygonRequest2 = SwagDrawPolygonRequest.getExample();
        SwagDrawPolygonRequest drawPolygonRequest3 = new SwagDrawPolygonRequest();
        SwagDrawPolygonRequest drawPolygonRequest4 = new SwagDrawPolygonRequest();

        System.assert(drawPolygonRequest1.equals(drawPolygonRequest2));
        System.assert(drawPolygonRequest2.equals(drawPolygonRequest1));
        System.assert(drawPolygonRequest3.equals(drawPolygonRequest4));
        System.assert(drawPolygonRequest4.equals(drawPolygonRequest3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagDrawPolygonRequest drawPolygonRequest1 = SwagDrawPolygonRequest.getExample();
        SwagDrawPolygonRequest drawPolygonRequest2 = new SwagDrawPolygonRequest();

        System.assertEquals(false, drawPolygonRequest1.equals(drawPolygonRequest2));
        System.assertEquals(false, drawPolygonRequest2.equals(drawPolygonRequest1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagDrawPolygonRequest drawPolygonRequest1 = SwagDrawPolygonRequest.getExample();
        SwagDrawPolygonRequest drawPolygonRequest2 = new SwagDrawPolygonRequest();

        System.assertEquals(false, drawPolygonRequest1.equals('foo'));
        System.assertEquals(false, drawPolygonRequest2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagDrawPolygonRequest drawPolygonRequest1 = SwagDrawPolygonRequest.getExample();
        SwagDrawPolygonRequest drawPolygonRequest2 = new SwagDrawPolygonRequest();
        SwagDrawPolygonRequest drawPolygonRequest3;

        System.assertEquals(false, drawPolygonRequest1.equals(drawPolygonRequest3));
        System.assertEquals(false, drawPolygonRequest2.equals(drawPolygonRequest3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagDrawPolygonRequest drawPolygonRequest1 = SwagDrawPolygonRequest.getExample();
        SwagDrawPolygonRequest drawPolygonRequest2 = new SwagDrawPolygonRequest();

        System.assertEquals(drawPolygonRequest1.hashCode(), drawPolygonRequest1.hashCode());
        System.assertEquals(drawPolygonRequest2.hashCode(), drawPolygonRequest2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagDrawPolygonRequest drawPolygonRequest1 = SwagDrawPolygonRequest.getExample();
        SwagDrawPolygonRequest drawPolygonRequest2 = SwagDrawPolygonRequest.getExample();
        SwagDrawPolygonRequest drawPolygonRequest3 = new SwagDrawPolygonRequest();
        SwagDrawPolygonRequest drawPolygonRequest4 = new SwagDrawPolygonRequest();

        System.assert(drawPolygonRequest1.equals(drawPolygonRequest2));
        System.assert(drawPolygonRequest3.equals(drawPolygonRequest4));
        System.assertEquals(drawPolygonRequest1.hashCode(), drawPolygonRequest2.hashCode());
        System.assertEquals(drawPolygonRequest3.hashCode(), drawPolygonRequest4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        SwagDrawPolygonRequest drawPolygonRequest = new SwagDrawPolygonRequest();
        Map<String, String> propertyMappings = drawPolygonRequest.getPropertyMappings();
        System.assertEquals('baseImageBytes', propertyMappings.get('BaseImageBytes'));
        System.assertEquals('baseImageUrl', propertyMappings.get('BaseImageUrl'));
        System.assertEquals('polygonsToDraw', propertyMappings.get('PolygonsToDraw'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        SwagDrawPolygonRequest drawPolygonRequest = new SwagDrawPolygonRequest();
        System.assertEquals(new List<SwagDrawPolygonInstance>(), drawPolygonRequest.polygonsToDraw);
        System.assertEquals(null, drawPolygonRequest.baseImageBytes);
        System.assertEquals(null, drawPolygonRequest.baseImageUrl);
    }
}

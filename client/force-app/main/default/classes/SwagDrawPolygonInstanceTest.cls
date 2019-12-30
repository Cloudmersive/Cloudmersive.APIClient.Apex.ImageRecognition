@isTest
private class SwagDrawPolygonInstanceTest {
    @isTest
    private static void equalsSameInstance() {
        SwagDrawPolygonInstance drawPolygonInstance1 = SwagDrawPolygonInstance.getExample();
        SwagDrawPolygonInstance drawPolygonInstance2 = drawPolygonInstance1;
        SwagDrawPolygonInstance drawPolygonInstance3 = new SwagDrawPolygonInstance();
        SwagDrawPolygonInstance drawPolygonInstance4 = drawPolygonInstance3;

        System.assert(drawPolygonInstance1.equals(drawPolygonInstance2));
        System.assert(drawPolygonInstance2.equals(drawPolygonInstance1));
        System.assert(drawPolygonInstance1.equals(drawPolygonInstance1));
        System.assert(drawPolygonInstance3.equals(drawPolygonInstance4));
        System.assert(drawPolygonInstance4.equals(drawPolygonInstance3));
        System.assert(drawPolygonInstance3.equals(drawPolygonInstance3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagDrawPolygonInstance drawPolygonInstance1 = SwagDrawPolygonInstance.getExample();
        SwagDrawPolygonInstance drawPolygonInstance2 = SwagDrawPolygonInstance.getExample();
        SwagDrawPolygonInstance drawPolygonInstance3 = new SwagDrawPolygonInstance();
        SwagDrawPolygonInstance drawPolygonInstance4 = new SwagDrawPolygonInstance();

        System.assert(drawPolygonInstance1.equals(drawPolygonInstance2));
        System.assert(drawPolygonInstance2.equals(drawPolygonInstance1));
        System.assert(drawPolygonInstance3.equals(drawPolygonInstance4));
        System.assert(drawPolygonInstance4.equals(drawPolygonInstance3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagDrawPolygonInstance drawPolygonInstance1 = SwagDrawPolygonInstance.getExample();
        SwagDrawPolygonInstance drawPolygonInstance2 = new SwagDrawPolygonInstance();

        System.assertEquals(false, drawPolygonInstance1.equals(drawPolygonInstance2));
        System.assertEquals(false, drawPolygonInstance2.equals(drawPolygonInstance1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagDrawPolygonInstance drawPolygonInstance1 = SwagDrawPolygonInstance.getExample();
        SwagDrawPolygonInstance drawPolygonInstance2 = new SwagDrawPolygonInstance();

        System.assertEquals(false, drawPolygonInstance1.equals('foo'));
        System.assertEquals(false, drawPolygonInstance2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagDrawPolygonInstance drawPolygonInstance1 = SwagDrawPolygonInstance.getExample();
        SwagDrawPolygonInstance drawPolygonInstance2 = new SwagDrawPolygonInstance();
        SwagDrawPolygonInstance drawPolygonInstance3;

        System.assertEquals(false, drawPolygonInstance1.equals(drawPolygonInstance3));
        System.assertEquals(false, drawPolygonInstance2.equals(drawPolygonInstance3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagDrawPolygonInstance drawPolygonInstance1 = SwagDrawPolygonInstance.getExample();
        SwagDrawPolygonInstance drawPolygonInstance2 = new SwagDrawPolygonInstance();

        System.assertEquals(drawPolygonInstance1.hashCode(), drawPolygonInstance1.hashCode());
        System.assertEquals(drawPolygonInstance2.hashCode(), drawPolygonInstance2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagDrawPolygonInstance drawPolygonInstance1 = SwagDrawPolygonInstance.getExample();
        SwagDrawPolygonInstance drawPolygonInstance2 = SwagDrawPolygonInstance.getExample();
        SwagDrawPolygonInstance drawPolygonInstance3 = new SwagDrawPolygonInstance();
        SwagDrawPolygonInstance drawPolygonInstance4 = new SwagDrawPolygonInstance();

        System.assert(drawPolygonInstance1.equals(drawPolygonInstance2));
        System.assert(drawPolygonInstance3.equals(drawPolygonInstance4));
        System.assertEquals(drawPolygonInstance1.hashCode(), drawPolygonInstance2.hashCode());
        System.assertEquals(drawPolygonInstance3.hashCode(), drawPolygonInstance4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        SwagDrawPolygonInstance drawPolygonInstance = new SwagDrawPolygonInstance();
        Map<String, String> propertyMappings = drawPolygonInstance.getPropertyMappings();
        System.assertEquals('borderColor', propertyMappings.get('BorderColor'));
        System.assertEquals('borderWidth', propertyMappings.get('BorderWidth'));
        System.assertEquals('fillColor', propertyMappings.get('FillColor'));
        System.assertEquals('points', propertyMappings.get('Points'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        SwagDrawPolygonInstance drawPolygonInstance = new SwagDrawPolygonInstance();
        System.assertEquals(new List<SwagPolygonPoint>(), drawPolygonInstance.points);
        System.assertEquals(null, drawPolygonInstance.borderColor);
        System.assertEquals(null, drawPolygonInstance.borderWidth);
        System.assertEquals(null, drawPolygonInstance.fillColor);
    }
}

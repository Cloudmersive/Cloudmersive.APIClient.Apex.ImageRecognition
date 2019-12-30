@isTest
private class SwagDrawRectangleInstanceTest {
    @isTest
    private static void equalsSameInstance() {
        SwagDrawRectangleInstance drawRectangleInstance1 = SwagDrawRectangleInstance.getExample();
        SwagDrawRectangleInstance drawRectangleInstance2 = drawRectangleInstance1;
        SwagDrawRectangleInstance drawRectangleInstance3 = new SwagDrawRectangleInstance();
        SwagDrawRectangleInstance drawRectangleInstance4 = drawRectangleInstance3;

        System.assert(drawRectangleInstance1.equals(drawRectangleInstance2));
        System.assert(drawRectangleInstance2.equals(drawRectangleInstance1));
        System.assert(drawRectangleInstance1.equals(drawRectangleInstance1));
        System.assert(drawRectangleInstance3.equals(drawRectangleInstance4));
        System.assert(drawRectangleInstance4.equals(drawRectangleInstance3));
        System.assert(drawRectangleInstance3.equals(drawRectangleInstance3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagDrawRectangleInstance drawRectangleInstance1 = SwagDrawRectangleInstance.getExample();
        SwagDrawRectangleInstance drawRectangleInstance2 = SwagDrawRectangleInstance.getExample();
        SwagDrawRectangleInstance drawRectangleInstance3 = new SwagDrawRectangleInstance();
        SwagDrawRectangleInstance drawRectangleInstance4 = new SwagDrawRectangleInstance();

        System.assert(drawRectangleInstance1.equals(drawRectangleInstance2));
        System.assert(drawRectangleInstance2.equals(drawRectangleInstance1));
        System.assert(drawRectangleInstance3.equals(drawRectangleInstance4));
        System.assert(drawRectangleInstance4.equals(drawRectangleInstance3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagDrawRectangleInstance drawRectangleInstance1 = SwagDrawRectangleInstance.getExample();
        SwagDrawRectangleInstance drawRectangleInstance2 = new SwagDrawRectangleInstance();

        System.assertEquals(false, drawRectangleInstance1.equals(drawRectangleInstance2));
        System.assertEquals(false, drawRectangleInstance2.equals(drawRectangleInstance1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagDrawRectangleInstance drawRectangleInstance1 = SwagDrawRectangleInstance.getExample();
        SwagDrawRectangleInstance drawRectangleInstance2 = new SwagDrawRectangleInstance();

        System.assertEquals(false, drawRectangleInstance1.equals('foo'));
        System.assertEquals(false, drawRectangleInstance2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagDrawRectangleInstance drawRectangleInstance1 = SwagDrawRectangleInstance.getExample();
        SwagDrawRectangleInstance drawRectangleInstance2 = new SwagDrawRectangleInstance();
        SwagDrawRectangleInstance drawRectangleInstance3;

        System.assertEquals(false, drawRectangleInstance1.equals(drawRectangleInstance3));
        System.assertEquals(false, drawRectangleInstance2.equals(drawRectangleInstance3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagDrawRectangleInstance drawRectangleInstance1 = SwagDrawRectangleInstance.getExample();
        SwagDrawRectangleInstance drawRectangleInstance2 = new SwagDrawRectangleInstance();

        System.assertEquals(drawRectangleInstance1.hashCode(), drawRectangleInstance1.hashCode());
        System.assertEquals(drawRectangleInstance2.hashCode(), drawRectangleInstance2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagDrawRectangleInstance drawRectangleInstance1 = SwagDrawRectangleInstance.getExample();
        SwagDrawRectangleInstance drawRectangleInstance2 = SwagDrawRectangleInstance.getExample();
        SwagDrawRectangleInstance drawRectangleInstance3 = new SwagDrawRectangleInstance();
        SwagDrawRectangleInstance drawRectangleInstance4 = new SwagDrawRectangleInstance();

        System.assert(drawRectangleInstance1.equals(drawRectangleInstance2));
        System.assert(drawRectangleInstance3.equals(drawRectangleInstance4));
        System.assertEquals(drawRectangleInstance1.hashCode(), drawRectangleInstance2.hashCode());
        System.assertEquals(drawRectangleInstance3.hashCode(), drawRectangleInstance4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        SwagDrawRectangleInstance drawRectangleInstance = new SwagDrawRectangleInstance();
        Map<String, String> propertyMappings = drawRectangleInstance.getPropertyMappings();
        System.assertEquals('borderColor', propertyMappings.get('BorderColor'));
        System.assertEquals('borderWidth', propertyMappings.get('BorderWidth'));
        System.assertEquals('fillColor', propertyMappings.get('FillColor'));
        System.assertEquals('width', propertyMappings.get('Width'));
        System.assertEquals('height', propertyMappings.get('Height'));
    }
}

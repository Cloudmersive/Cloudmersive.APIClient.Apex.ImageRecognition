@isTest
private class SwagDrawTextInstanceTest {
    @isTest
    private static void equalsSameInstance() {
        SwagDrawTextInstance drawTextInstance1 = SwagDrawTextInstance.getExample();
        SwagDrawTextInstance drawTextInstance2 = drawTextInstance1;
        SwagDrawTextInstance drawTextInstance3 = new SwagDrawTextInstance();
        SwagDrawTextInstance drawTextInstance4 = drawTextInstance3;

        System.assert(drawTextInstance1.equals(drawTextInstance2));
        System.assert(drawTextInstance2.equals(drawTextInstance1));
        System.assert(drawTextInstance1.equals(drawTextInstance1));
        System.assert(drawTextInstance3.equals(drawTextInstance4));
        System.assert(drawTextInstance4.equals(drawTextInstance3));
        System.assert(drawTextInstance3.equals(drawTextInstance3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagDrawTextInstance drawTextInstance1 = SwagDrawTextInstance.getExample();
        SwagDrawTextInstance drawTextInstance2 = SwagDrawTextInstance.getExample();
        SwagDrawTextInstance drawTextInstance3 = new SwagDrawTextInstance();
        SwagDrawTextInstance drawTextInstance4 = new SwagDrawTextInstance();

        System.assert(drawTextInstance1.equals(drawTextInstance2));
        System.assert(drawTextInstance2.equals(drawTextInstance1));
        System.assert(drawTextInstance3.equals(drawTextInstance4));
        System.assert(drawTextInstance4.equals(drawTextInstance3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagDrawTextInstance drawTextInstance1 = SwagDrawTextInstance.getExample();
        SwagDrawTextInstance drawTextInstance2 = new SwagDrawTextInstance();

        System.assertEquals(false, drawTextInstance1.equals(drawTextInstance2));
        System.assertEquals(false, drawTextInstance2.equals(drawTextInstance1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagDrawTextInstance drawTextInstance1 = SwagDrawTextInstance.getExample();
        SwagDrawTextInstance drawTextInstance2 = new SwagDrawTextInstance();

        System.assertEquals(false, drawTextInstance1.equals('foo'));
        System.assertEquals(false, drawTextInstance2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagDrawTextInstance drawTextInstance1 = SwagDrawTextInstance.getExample();
        SwagDrawTextInstance drawTextInstance2 = new SwagDrawTextInstance();
        SwagDrawTextInstance drawTextInstance3;

        System.assertEquals(false, drawTextInstance1.equals(drawTextInstance3));
        System.assertEquals(false, drawTextInstance2.equals(drawTextInstance3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagDrawTextInstance drawTextInstance1 = SwagDrawTextInstance.getExample();
        SwagDrawTextInstance drawTextInstance2 = new SwagDrawTextInstance();

        System.assertEquals(drawTextInstance1.hashCode(), drawTextInstance1.hashCode());
        System.assertEquals(drawTextInstance2.hashCode(), drawTextInstance2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagDrawTextInstance drawTextInstance1 = SwagDrawTextInstance.getExample();
        SwagDrawTextInstance drawTextInstance2 = SwagDrawTextInstance.getExample();
        SwagDrawTextInstance drawTextInstance3 = new SwagDrawTextInstance();
        SwagDrawTextInstance drawTextInstance4 = new SwagDrawTextInstance();

        System.assert(drawTextInstance1.equals(drawTextInstance2));
        System.assert(drawTextInstance3.equals(drawTextInstance4));
        System.assertEquals(drawTextInstance1.hashCode(), drawTextInstance2.hashCode());
        System.assertEquals(drawTextInstance3.hashCode(), drawTextInstance4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        SwagDrawTextInstance drawTextInstance = new SwagDrawTextInstance();
        Map<String, String> propertyMappings = drawTextInstance.getPropertyMappings();
        System.assertEquals('text', propertyMappings.get('Text'));
        System.assertEquals('fontFamilyName', propertyMappings.get('FontFamilyName'));
        System.assertEquals('fontSize', propertyMappings.get('FontSize'));
        System.assertEquals('color', propertyMappings.get('Color'));
        System.assertEquals('width', propertyMappings.get('Width'));
        System.assertEquals('height', propertyMappings.get('Height'));
    }
}

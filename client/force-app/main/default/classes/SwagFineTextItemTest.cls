@isTest
private class SwagFineTextItemTest {
    @isTest
    private static void equalsSameInstance() {
        SwagFineTextItem fineTextItem1 = SwagFineTextItem.getExample();
        SwagFineTextItem fineTextItem2 = fineTextItem1;
        SwagFineTextItem fineTextItem3 = new SwagFineTextItem();
        SwagFineTextItem fineTextItem4 = fineTextItem3;

        System.assert(fineTextItem1.equals(fineTextItem2));
        System.assert(fineTextItem2.equals(fineTextItem1));
        System.assert(fineTextItem1.equals(fineTextItem1));
        System.assert(fineTextItem3.equals(fineTextItem4));
        System.assert(fineTextItem4.equals(fineTextItem3));
        System.assert(fineTextItem3.equals(fineTextItem3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagFineTextItem fineTextItem1 = SwagFineTextItem.getExample();
        SwagFineTextItem fineTextItem2 = SwagFineTextItem.getExample();
        SwagFineTextItem fineTextItem3 = new SwagFineTextItem();
        SwagFineTextItem fineTextItem4 = new SwagFineTextItem();

        System.assert(fineTextItem1.equals(fineTextItem2));
        System.assert(fineTextItem2.equals(fineTextItem1));
        System.assert(fineTextItem3.equals(fineTextItem4));
        System.assert(fineTextItem4.equals(fineTextItem3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagFineTextItem fineTextItem1 = SwagFineTextItem.getExample();
        SwagFineTextItem fineTextItem2 = new SwagFineTextItem();

        System.assertEquals(false, fineTextItem1.equals(fineTextItem2));
        System.assertEquals(false, fineTextItem2.equals(fineTextItem1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagFineTextItem fineTextItem1 = SwagFineTextItem.getExample();
        SwagFineTextItem fineTextItem2 = new SwagFineTextItem();

        System.assertEquals(false, fineTextItem1.equals('foo'));
        System.assertEquals(false, fineTextItem2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagFineTextItem fineTextItem1 = SwagFineTextItem.getExample();
        SwagFineTextItem fineTextItem2 = new SwagFineTextItem();
        SwagFineTextItem fineTextItem3;

        System.assertEquals(false, fineTextItem1.equals(fineTextItem3));
        System.assertEquals(false, fineTextItem2.equals(fineTextItem3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagFineTextItem fineTextItem1 = SwagFineTextItem.getExample();
        SwagFineTextItem fineTextItem2 = new SwagFineTextItem();

        System.assertEquals(fineTextItem1.hashCode(), fineTextItem1.hashCode());
        System.assertEquals(fineTextItem2.hashCode(), fineTextItem2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagFineTextItem fineTextItem1 = SwagFineTextItem.getExample();
        SwagFineTextItem fineTextItem2 = SwagFineTextItem.getExample();
        SwagFineTextItem fineTextItem3 = new SwagFineTextItem();
        SwagFineTextItem fineTextItem4 = new SwagFineTextItem();

        System.assert(fineTextItem1.equals(fineTextItem2));
        System.assert(fineTextItem3.equals(fineTextItem4));
        System.assertEquals(fineTextItem1.hashCode(), fineTextItem2.hashCode());
        System.assertEquals(fineTextItem3.hashCode(), fineTextItem4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        SwagFineTextItem fineTextItem = new SwagFineTextItem();
        Map<String, String> propertyMappings = fineTextItem.getPropertyMappings();
        System.assertEquals('topLeftX', propertyMappings.get('TopLeftX'));
        System.assertEquals('topLeftY', propertyMappings.get('TopLeftY'));
        System.assertEquals('topRightX', propertyMappings.get('TopRightX'));
        System.assertEquals('topRightY', propertyMappings.get('TopRightY'));
        System.assertEquals('bottomLeftX', propertyMappings.get('BottomLeftX'));
        System.assertEquals('bottomLeftY', propertyMappings.get('BottomLeftY'));
        System.assertEquals('bottomRightX', propertyMappings.get('BottomRightX'));
        System.assertEquals('bottomRightY', propertyMappings.get('BottomRightY'));
        System.assertEquals('width', propertyMappings.get('Width'));
        System.assertEquals('height', propertyMappings.get('Height'));
        System.assertEquals('angle', propertyMappings.get('Angle'));
    }
}

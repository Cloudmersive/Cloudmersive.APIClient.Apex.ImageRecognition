@isTest
private class SwagTextItemTest {
    @isTest
    private static void equalsSameInstance() {
        SwagTextItem textItem1 = SwagTextItem.getExample();
        SwagTextItem textItem2 = textItem1;
        SwagTextItem textItem3 = new SwagTextItem();
        SwagTextItem textItem4 = textItem3;

        System.assert(textItem1.equals(textItem2));
        System.assert(textItem2.equals(textItem1));
        System.assert(textItem1.equals(textItem1));
        System.assert(textItem3.equals(textItem4));
        System.assert(textItem4.equals(textItem3));
        System.assert(textItem3.equals(textItem3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagTextItem textItem1 = SwagTextItem.getExample();
        SwagTextItem textItem2 = SwagTextItem.getExample();
        SwagTextItem textItem3 = new SwagTextItem();
        SwagTextItem textItem4 = new SwagTextItem();

        System.assert(textItem1.equals(textItem2));
        System.assert(textItem2.equals(textItem1));
        System.assert(textItem3.equals(textItem4));
        System.assert(textItem4.equals(textItem3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagTextItem textItem1 = SwagTextItem.getExample();
        SwagTextItem textItem2 = new SwagTextItem();

        System.assertEquals(false, textItem1.equals(textItem2));
        System.assertEquals(false, textItem2.equals(textItem1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagTextItem textItem1 = SwagTextItem.getExample();
        SwagTextItem textItem2 = new SwagTextItem();

        System.assertEquals(false, textItem1.equals('foo'));
        System.assertEquals(false, textItem2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagTextItem textItem1 = SwagTextItem.getExample();
        SwagTextItem textItem2 = new SwagTextItem();
        SwagTextItem textItem3;

        System.assertEquals(false, textItem1.equals(textItem3));
        System.assertEquals(false, textItem2.equals(textItem3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagTextItem textItem1 = SwagTextItem.getExample();
        SwagTextItem textItem2 = new SwagTextItem();

        System.assertEquals(textItem1.hashCode(), textItem1.hashCode());
        System.assertEquals(textItem2.hashCode(), textItem2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagTextItem textItem1 = SwagTextItem.getExample();
        SwagTextItem textItem2 = SwagTextItem.getExample();
        SwagTextItem textItem3 = new SwagTextItem();
        SwagTextItem textItem4 = new SwagTextItem();

        System.assert(textItem1.equals(textItem2));
        System.assert(textItem3.equals(textItem4));
        System.assertEquals(textItem1.hashCode(), textItem2.hashCode());
        System.assertEquals(textItem3.hashCode(), textItem4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        SwagTextItem textItem = new SwagTextItem();
        Map<String, String> propertyMappings = textItem.getPropertyMappings();
        System.assertEquals('leftX', propertyMappings.get('LeftX'));
        System.assertEquals('topY', propertyMappings.get('TopY'));
        System.assertEquals('width', propertyMappings.get('Width'));
        System.assertEquals('height', propertyMappings.get('Height'));
    }
}

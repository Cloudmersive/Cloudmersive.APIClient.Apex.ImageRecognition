@isTest
private class SwagImageMetadataExifValueTest {
    @isTest
    private static void equalsSameInstance() {
        SwagImageMetadataExifValue imageMetadataExifValue1 = SwagImageMetadataExifValue.getExample();
        SwagImageMetadataExifValue imageMetadataExifValue2 = imageMetadataExifValue1;
        SwagImageMetadataExifValue imageMetadataExifValue3 = new SwagImageMetadataExifValue();
        SwagImageMetadataExifValue imageMetadataExifValue4 = imageMetadataExifValue3;

        System.assert(imageMetadataExifValue1.equals(imageMetadataExifValue2));
        System.assert(imageMetadataExifValue2.equals(imageMetadataExifValue1));
        System.assert(imageMetadataExifValue1.equals(imageMetadataExifValue1));
        System.assert(imageMetadataExifValue3.equals(imageMetadataExifValue4));
        System.assert(imageMetadataExifValue4.equals(imageMetadataExifValue3));
        System.assert(imageMetadataExifValue3.equals(imageMetadataExifValue3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagImageMetadataExifValue imageMetadataExifValue1 = SwagImageMetadataExifValue.getExample();
        SwagImageMetadataExifValue imageMetadataExifValue2 = SwagImageMetadataExifValue.getExample();
        SwagImageMetadataExifValue imageMetadataExifValue3 = new SwagImageMetadataExifValue();
        SwagImageMetadataExifValue imageMetadataExifValue4 = new SwagImageMetadataExifValue();

        System.assert(imageMetadataExifValue1.equals(imageMetadataExifValue2));
        System.assert(imageMetadataExifValue2.equals(imageMetadataExifValue1));
        System.assert(imageMetadataExifValue3.equals(imageMetadataExifValue4));
        System.assert(imageMetadataExifValue4.equals(imageMetadataExifValue3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagImageMetadataExifValue imageMetadataExifValue1 = SwagImageMetadataExifValue.getExample();
        SwagImageMetadataExifValue imageMetadataExifValue2 = new SwagImageMetadataExifValue();

        System.assertEquals(false, imageMetadataExifValue1.equals(imageMetadataExifValue2));
        System.assertEquals(false, imageMetadataExifValue2.equals(imageMetadataExifValue1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagImageMetadataExifValue imageMetadataExifValue1 = SwagImageMetadataExifValue.getExample();
        SwagImageMetadataExifValue imageMetadataExifValue2 = new SwagImageMetadataExifValue();

        System.assertEquals(false, imageMetadataExifValue1.equals('foo'));
        System.assertEquals(false, imageMetadataExifValue2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagImageMetadataExifValue imageMetadataExifValue1 = SwagImageMetadataExifValue.getExample();
        SwagImageMetadataExifValue imageMetadataExifValue2 = new SwagImageMetadataExifValue();
        SwagImageMetadataExifValue imageMetadataExifValue3;

        System.assertEquals(false, imageMetadataExifValue1.equals(imageMetadataExifValue3));
        System.assertEquals(false, imageMetadataExifValue2.equals(imageMetadataExifValue3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagImageMetadataExifValue imageMetadataExifValue1 = SwagImageMetadataExifValue.getExample();
        SwagImageMetadataExifValue imageMetadataExifValue2 = new SwagImageMetadataExifValue();

        System.assertEquals(imageMetadataExifValue1.hashCode(), imageMetadataExifValue1.hashCode());
        System.assertEquals(imageMetadataExifValue2.hashCode(), imageMetadataExifValue2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagImageMetadataExifValue imageMetadataExifValue1 = SwagImageMetadataExifValue.getExample();
        SwagImageMetadataExifValue imageMetadataExifValue2 = SwagImageMetadataExifValue.getExample();
        SwagImageMetadataExifValue imageMetadataExifValue3 = new SwagImageMetadataExifValue();
        SwagImageMetadataExifValue imageMetadataExifValue4 = new SwagImageMetadataExifValue();

        System.assert(imageMetadataExifValue1.equals(imageMetadataExifValue2));
        System.assert(imageMetadataExifValue3.equals(imageMetadataExifValue4));
        System.assertEquals(imageMetadataExifValue1.hashCode(), imageMetadataExifValue2.hashCode());
        System.assertEquals(imageMetadataExifValue3.hashCode(), imageMetadataExifValue4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        SwagImageMetadataExifValue imageMetadataExifValue = new SwagImageMetadataExifValue();
        Map<String, String> propertyMappings = imageMetadataExifValue.getPropertyMappings();
        System.assertEquals('tag', propertyMappings.get('Tag'));
        System.assertEquals('dataType', propertyMappings.get('DataType'));
        System.assertEquals('dataValue', propertyMappings.get('DataValue'));
    }
}

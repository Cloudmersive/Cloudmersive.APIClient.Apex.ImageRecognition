@isTest
private class SwagImageMetadataTest {
    @isTest
    private static void equalsSameInstance() {
        SwagImageMetadata imageMetadata1 = SwagImageMetadata.getExample();
        SwagImageMetadata imageMetadata2 = imageMetadata1;
        SwagImageMetadata imageMetadata3 = new SwagImageMetadata();
        SwagImageMetadata imageMetadata4 = imageMetadata3;

        System.assert(imageMetadata1.equals(imageMetadata2));
        System.assert(imageMetadata2.equals(imageMetadata1));
        System.assert(imageMetadata1.equals(imageMetadata1));
        System.assert(imageMetadata3.equals(imageMetadata4));
        System.assert(imageMetadata4.equals(imageMetadata3));
        System.assert(imageMetadata3.equals(imageMetadata3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagImageMetadata imageMetadata1 = SwagImageMetadata.getExample();
        SwagImageMetadata imageMetadata2 = SwagImageMetadata.getExample();
        SwagImageMetadata imageMetadata3 = new SwagImageMetadata();
        SwagImageMetadata imageMetadata4 = new SwagImageMetadata();

        System.assert(imageMetadata1.equals(imageMetadata2));
        System.assert(imageMetadata2.equals(imageMetadata1));
        System.assert(imageMetadata3.equals(imageMetadata4));
        System.assert(imageMetadata4.equals(imageMetadata3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagImageMetadata imageMetadata1 = SwagImageMetadata.getExample();
        SwagImageMetadata imageMetadata2 = new SwagImageMetadata();

        System.assertEquals(false, imageMetadata1.equals(imageMetadata2));
        System.assertEquals(false, imageMetadata2.equals(imageMetadata1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagImageMetadata imageMetadata1 = SwagImageMetadata.getExample();
        SwagImageMetadata imageMetadata2 = new SwagImageMetadata();

        System.assertEquals(false, imageMetadata1.equals('foo'));
        System.assertEquals(false, imageMetadata2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagImageMetadata imageMetadata1 = SwagImageMetadata.getExample();
        SwagImageMetadata imageMetadata2 = new SwagImageMetadata();
        SwagImageMetadata imageMetadata3;

        System.assertEquals(false, imageMetadata1.equals(imageMetadata3));
        System.assertEquals(false, imageMetadata2.equals(imageMetadata3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagImageMetadata imageMetadata1 = SwagImageMetadata.getExample();
        SwagImageMetadata imageMetadata2 = new SwagImageMetadata();

        System.assertEquals(imageMetadata1.hashCode(), imageMetadata1.hashCode());
        System.assertEquals(imageMetadata2.hashCode(), imageMetadata2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagImageMetadata imageMetadata1 = SwagImageMetadata.getExample();
        SwagImageMetadata imageMetadata2 = SwagImageMetadata.getExample();
        SwagImageMetadata imageMetadata3 = new SwagImageMetadata();
        SwagImageMetadata imageMetadata4 = new SwagImageMetadata();

        System.assert(imageMetadata1.equals(imageMetadata2));
        System.assert(imageMetadata3.equals(imageMetadata4));
        System.assertEquals(imageMetadata1.hashCode(), imageMetadata2.hashCode());
        System.assertEquals(imageMetadata3.hashCode(), imageMetadata4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        SwagImageMetadata imageMetadata = new SwagImageMetadata();
        Map<String, String> propertyMappings = imageMetadata.getPropertyMappings();
        System.assertEquals('successful', propertyMappings.get('Successful'));
        System.assertEquals('isValidImage', propertyMappings.get('IsValidImage'));
        System.assertEquals('fileFormat', propertyMappings.get('FileFormat'));
        System.assertEquals('width', propertyMappings.get('Width'));
        System.assertEquals('height', propertyMappings.get('Height'));
        System.assertEquals('bitDepth', propertyMappings.get('BitDepth'));
        System.assertEquals('hasTransparency', propertyMappings.get('HasTransparency'));
        System.assertEquals('colorSpace', propertyMappings.get('ColorSpace'));
        System.assertEquals('exifProfileName', propertyMappings.get('ExifProfileName'));
        System.assertEquals('exifValues', propertyMappings.get('ExifValues'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        SwagImageMetadata imageMetadata = new SwagImageMetadata();
        System.assertEquals(new List<SwagImageMetadataExifValue>(), imageMetadata.exifValues);
        System.assertEquals(null, imageMetadata.successful);
        System.assertEquals(null, imageMetadata.isValidImage);
        System.assertEquals(null, imageMetadata.fileFormat);
        System.assertEquals(null, imageMetadata.width);
        System.assertEquals(null, imageMetadata.height);
        System.assertEquals(null, imageMetadata.bitDepth);
        System.assertEquals(null, imageMetadata.hasTransparency);
        System.assertEquals(null, imageMetadata.colorSpace);
        System.assertEquals(null, imageMetadata.exifProfileName);
    }
}

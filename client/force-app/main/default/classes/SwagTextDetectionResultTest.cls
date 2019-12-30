@isTest
private class SwagTextDetectionResultTest {
    @isTest
    private static void equalsSameInstance() {
        SwagTextDetectionResult textDetectionResult1 = SwagTextDetectionResult.getExample();
        SwagTextDetectionResult textDetectionResult2 = textDetectionResult1;
        SwagTextDetectionResult textDetectionResult3 = new SwagTextDetectionResult();
        SwagTextDetectionResult textDetectionResult4 = textDetectionResult3;

        System.assert(textDetectionResult1.equals(textDetectionResult2));
        System.assert(textDetectionResult2.equals(textDetectionResult1));
        System.assert(textDetectionResult1.equals(textDetectionResult1));
        System.assert(textDetectionResult3.equals(textDetectionResult4));
        System.assert(textDetectionResult4.equals(textDetectionResult3));
        System.assert(textDetectionResult3.equals(textDetectionResult3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagTextDetectionResult textDetectionResult1 = SwagTextDetectionResult.getExample();
        SwagTextDetectionResult textDetectionResult2 = SwagTextDetectionResult.getExample();
        SwagTextDetectionResult textDetectionResult3 = new SwagTextDetectionResult();
        SwagTextDetectionResult textDetectionResult4 = new SwagTextDetectionResult();

        System.assert(textDetectionResult1.equals(textDetectionResult2));
        System.assert(textDetectionResult2.equals(textDetectionResult1));
        System.assert(textDetectionResult3.equals(textDetectionResult4));
        System.assert(textDetectionResult4.equals(textDetectionResult3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagTextDetectionResult textDetectionResult1 = SwagTextDetectionResult.getExample();
        SwagTextDetectionResult textDetectionResult2 = new SwagTextDetectionResult();

        System.assertEquals(false, textDetectionResult1.equals(textDetectionResult2));
        System.assertEquals(false, textDetectionResult2.equals(textDetectionResult1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagTextDetectionResult textDetectionResult1 = SwagTextDetectionResult.getExample();
        SwagTextDetectionResult textDetectionResult2 = new SwagTextDetectionResult();

        System.assertEquals(false, textDetectionResult1.equals('foo'));
        System.assertEquals(false, textDetectionResult2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagTextDetectionResult textDetectionResult1 = SwagTextDetectionResult.getExample();
        SwagTextDetectionResult textDetectionResult2 = new SwagTextDetectionResult();
        SwagTextDetectionResult textDetectionResult3;

        System.assertEquals(false, textDetectionResult1.equals(textDetectionResult3));
        System.assertEquals(false, textDetectionResult2.equals(textDetectionResult3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagTextDetectionResult textDetectionResult1 = SwagTextDetectionResult.getExample();
        SwagTextDetectionResult textDetectionResult2 = new SwagTextDetectionResult();

        System.assertEquals(textDetectionResult1.hashCode(), textDetectionResult1.hashCode());
        System.assertEquals(textDetectionResult2.hashCode(), textDetectionResult2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagTextDetectionResult textDetectionResult1 = SwagTextDetectionResult.getExample();
        SwagTextDetectionResult textDetectionResult2 = SwagTextDetectionResult.getExample();
        SwagTextDetectionResult textDetectionResult3 = new SwagTextDetectionResult();
        SwagTextDetectionResult textDetectionResult4 = new SwagTextDetectionResult();

        System.assert(textDetectionResult1.equals(textDetectionResult2));
        System.assert(textDetectionResult3.equals(textDetectionResult4));
        System.assertEquals(textDetectionResult1.hashCode(), textDetectionResult2.hashCode());
        System.assertEquals(textDetectionResult3.hashCode(), textDetectionResult4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        SwagTextDetectionResult textDetectionResult = new SwagTextDetectionResult();
        Map<String, String> propertyMappings = textDetectionResult.getPropertyMappings();
        System.assertEquals('successful', propertyMappings.get('Successful'));
        System.assertEquals('textItems', propertyMappings.get('TextItems'));
        System.assertEquals('textItemsCount', propertyMappings.get('TextItemsCount'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        SwagTextDetectionResult textDetectionResult = new SwagTextDetectionResult();
        System.assertEquals(new List<SwagTextItem>(), textDetectionResult.textItems);
        System.assertEquals(null, textDetectionResult.successful);
        System.assertEquals(null, textDetectionResult.textItemsCount);
    }
}

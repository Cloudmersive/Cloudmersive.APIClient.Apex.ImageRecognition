@isTest
private class SwagFineTextDetectionResultTest {
    @isTest
    private static void equalsSameInstance() {
        SwagFineTextDetectionResult fineTextDetectionResult1 = SwagFineTextDetectionResult.getExample();
        SwagFineTextDetectionResult fineTextDetectionResult2 = fineTextDetectionResult1;
        SwagFineTextDetectionResult fineTextDetectionResult3 = new SwagFineTextDetectionResult();
        SwagFineTextDetectionResult fineTextDetectionResult4 = fineTextDetectionResult3;

        System.assert(fineTextDetectionResult1.equals(fineTextDetectionResult2));
        System.assert(fineTextDetectionResult2.equals(fineTextDetectionResult1));
        System.assert(fineTextDetectionResult1.equals(fineTextDetectionResult1));
        System.assert(fineTextDetectionResult3.equals(fineTextDetectionResult4));
        System.assert(fineTextDetectionResult4.equals(fineTextDetectionResult3));
        System.assert(fineTextDetectionResult3.equals(fineTextDetectionResult3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagFineTextDetectionResult fineTextDetectionResult1 = SwagFineTextDetectionResult.getExample();
        SwagFineTextDetectionResult fineTextDetectionResult2 = SwagFineTextDetectionResult.getExample();
        SwagFineTextDetectionResult fineTextDetectionResult3 = new SwagFineTextDetectionResult();
        SwagFineTextDetectionResult fineTextDetectionResult4 = new SwagFineTextDetectionResult();

        System.assert(fineTextDetectionResult1.equals(fineTextDetectionResult2));
        System.assert(fineTextDetectionResult2.equals(fineTextDetectionResult1));
        System.assert(fineTextDetectionResult3.equals(fineTextDetectionResult4));
        System.assert(fineTextDetectionResult4.equals(fineTextDetectionResult3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagFineTextDetectionResult fineTextDetectionResult1 = SwagFineTextDetectionResult.getExample();
        SwagFineTextDetectionResult fineTextDetectionResult2 = new SwagFineTextDetectionResult();

        System.assertEquals(false, fineTextDetectionResult1.equals(fineTextDetectionResult2));
        System.assertEquals(false, fineTextDetectionResult2.equals(fineTextDetectionResult1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagFineTextDetectionResult fineTextDetectionResult1 = SwagFineTextDetectionResult.getExample();
        SwagFineTextDetectionResult fineTextDetectionResult2 = new SwagFineTextDetectionResult();

        System.assertEquals(false, fineTextDetectionResult1.equals('foo'));
        System.assertEquals(false, fineTextDetectionResult2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagFineTextDetectionResult fineTextDetectionResult1 = SwagFineTextDetectionResult.getExample();
        SwagFineTextDetectionResult fineTextDetectionResult2 = new SwagFineTextDetectionResult();
        SwagFineTextDetectionResult fineTextDetectionResult3;

        System.assertEquals(false, fineTextDetectionResult1.equals(fineTextDetectionResult3));
        System.assertEquals(false, fineTextDetectionResult2.equals(fineTextDetectionResult3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagFineTextDetectionResult fineTextDetectionResult1 = SwagFineTextDetectionResult.getExample();
        SwagFineTextDetectionResult fineTextDetectionResult2 = new SwagFineTextDetectionResult();

        System.assertEquals(fineTextDetectionResult1.hashCode(), fineTextDetectionResult1.hashCode());
        System.assertEquals(fineTextDetectionResult2.hashCode(), fineTextDetectionResult2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagFineTextDetectionResult fineTextDetectionResult1 = SwagFineTextDetectionResult.getExample();
        SwagFineTextDetectionResult fineTextDetectionResult2 = SwagFineTextDetectionResult.getExample();
        SwagFineTextDetectionResult fineTextDetectionResult3 = new SwagFineTextDetectionResult();
        SwagFineTextDetectionResult fineTextDetectionResult4 = new SwagFineTextDetectionResult();

        System.assert(fineTextDetectionResult1.equals(fineTextDetectionResult2));
        System.assert(fineTextDetectionResult3.equals(fineTextDetectionResult4));
        System.assertEquals(fineTextDetectionResult1.hashCode(), fineTextDetectionResult2.hashCode());
        System.assertEquals(fineTextDetectionResult3.hashCode(), fineTextDetectionResult4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        SwagFineTextDetectionResult fineTextDetectionResult = new SwagFineTextDetectionResult();
        Map<String, String> propertyMappings = fineTextDetectionResult.getPropertyMappings();
        System.assertEquals('successful', propertyMappings.get('Successful'));
        System.assertEquals('textItems', propertyMappings.get('TextItems'));
        System.assertEquals('textItemsCount', propertyMappings.get('TextItemsCount'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        SwagFineTextDetectionResult fineTextDetectionResult = new SwagFineTextDetectionResult();
        System.assertEquals(new List<SwagFineTextItem>(), fineTextDetectionResult.textItems);
        System.assertEquals(null, fineTextDetectionResult.successful);
        System.assertEquals(null, fineTextDetectionResult.textItemsCount);
    }
}

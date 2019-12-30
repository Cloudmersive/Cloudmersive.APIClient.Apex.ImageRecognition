@isTest
private class SwagRecognitionOutcomeTest {
    @isTest
    private static void equalsSameInstance() {
        SwagRecognitionOutcome recognitionOutcome1 = SwagRecognitionOutcome.getExample();
        SwagRecognitionOutcome recognitionOutcome2 = recognitionOutcome1;
        SwagRecognitionOutcome recognitionOutcome3 = new SwagRecognitionOutcome();
        SwagRecognitionOutcome recognitionOutcome4 = recognitionOutcome3;

        System.assert(recognitionOutcome1.equals(recognitionOutcome2));
        System.assert(recognitionOutcome2.equals(recognitionOutcome1));
        System.assert(recognitionOutcome1.equals(recognitionOutcome1));
        System.assert(recognitionOutcome3.equals(recognitionOutcome4));
        System.assert(recognitionOutcome4.equals(recognitionOutcome3));
        System.assert(recognitionOutcome3.equals(recognitionOutcome3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagRecognitionOutcome recognitionOutcome1 = SwagRecognitionOutcome.getExample();
        SwagRecognitionOutcome recognitionOutcome2 = SwagRecognitionOutcome.getExample();
        SwagRecognitionOutcome recognitionOutcome3 = new SwagRecognitionOutcome();
        SwagRecognitionOutcome recognitionOutcome4 = new SwagRecognitionOutcome();

        System.assert(recognitionOutcome1.equals(recognitionOutcome2));
        System.assert(recognitionOutcome2.equals(recognitionOutcome1));
        System.assert(recognitionOutcome3.equals(recognitionOutcome4));
        System.assert(recognitionOutcome4.equals(recognitionOutcome3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagRecognitionOutcome recognitionOutcome1 = SwagRecognitionOutcome.getExample();
        SwagRecognitionOutcome recognitionOutcome2 = new SwagRecognitionOutcome();

        System.assertEquals(false, recognitionOutcome1.equals(recognitionOutcome2));
        System.assertEquals(false, recognitionOutcome2.equals(recognitionOutcome1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagRecognitionOutcome recognitionOutcome1 = SwagRecognitionOutcome.getExample();
        SwagRecognitionOutcome recognitionOutcome2 = new SwagRecognitionOutcome();

        System.assertEquals(false, recognitionOutcome1.equals('foo'));
        System.assertEquals(false, recognitionOutcome2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagRecognitionOutcome recognitionOutcome1 = SwagRecognitionOutcome.getExample();
        SwagRecognitionOutcome recognitionOutcome2 = new SwagRecognitionOutcome();
        SwagRecognitionOutcome recognitionOutcome3;

        System.assertEquals(false, recognitionOutcome1.equals(recognitionOutcome3));
        System.assertEquals(false, recognitionOutcome2.equals(recognitionOutcome3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagRecognitionOutcome recognitionOutcome1 = SwagRecognitionOutcome.getExample();
        SwagRecognitionOutcome recognitionOutcome2 = new SwagRecognitionOutcome();

        System.assertEquals(recognitionOutcome1.hashCode(), recognitionOutcome1.hashCode());
        System.assertEquals(recognitionOutcome2.hashCode(), recognitionOutcome2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagRecognitionOutcome recognitionOutcome1 = SwagRecognitionOutcome.getExample();
        SwagRecognitionOutcome recognitionOutcome2 = SwagRecognitionOutcome.getExample();
        SwagRecognitionOutcome recognitionOutcome3 = new SwagRecognitionOutcome();
        SwagRecognitionOutcome recognitionOutcome4 = new SwagRecognitionOutcome();

        System.assert(recognitionOutcome1.equals(recognitionOutcome2));
        System.assert(recognitionOutcome3.equals(recognitionOutcome4));
        System.assertEquals(recognitionOutcome1.hashCode(), recognitionOutcome2.hashCode());
        System.assertEquals(recognitionOutcome3.hashCode(), recognitionOutcome4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        SwagRecognitionOutcome recognitionOutcome = new SwagRecognitionOutcome();
        Map<String, String> propertyMappings = recognitionOutcome.getPropertyMappings();
        System.assertEquals('confidenceScore', propertyMappings.get('ConfidenceScore'));
        System.assertEquals('description', propertyMappings.get('Description'));
    }
}

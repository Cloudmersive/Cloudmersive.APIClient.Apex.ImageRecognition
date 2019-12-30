@isTest
private class SwagDetectedLicensePlateTest {
    @isTest
    private static void equalsSameInstance() {
        SwagDetectedLicensePlate detectedLicensePlate1 = SwagDetectedLicensePlate.getExample();
        SwagDetectedLicensePlate detectedLicensePlate2 = detectedLicensePlate1;
        SwagDetectedLicensePlate detectedLicensePlate3 = new SwagDetectedLicensePlate();
        SwagDetectedLicensePlate detectedLicensePlate4 = detectedLicensePlate3;

        System.assert(detectedLicensePlate1.equals(detectedLicensePlate2));
        System.assert(detectedLicensePlate2.equals(detectedLicensePlate1));
        System.assert(detectedLicensePlate1.equals(detectedLicensePlate1));
        System.assert(detectedLicensePlate3.equals(detectedLicensePlate4));
        System.assert(detectedLicensePlate4.equals(detectedLicensePlate3));
        System.assert(detectedLicensePlate3.equals(detectedLicensePlate3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagDetectedLicensePlate detectedLicensePlate1 = SwagDetectedLicensePlate.getExample();
        SwagDetectedLicensePlate detectedLicensePlate2 = SwagDetectedLicensePlate.getExample();
        SwagDetectedLicensePlate detectedLicensePlate3 = new SwagDetectedLicensePlate();
        SwagDetectedLicensePlate detectedLicensePlate4 = new SwagDetectedLicensePlate();

        System.assert(detectedLicensePlate1.equals(detectedLicensePlate2));
        System.assert(detectedLicensePlate2.equals(detectedLicensePlate1));
        System.assert(detectedLicensePlate3.equals(detectedLicensePlate4));
        System.assert(detectedLicensePlate4.equals(detectedLicensePlate3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagDetectedLicensePlate detectedLicensePlate1 = SwagDetectedLicensePlate.getExample();
        SwagDetectedLicensePlate detectedLicensePlate2 = new SwagDetectedLicensePlate();

        System.assertEquals(false, detectedLicensePlate1.equals(detectedLicensePlate2));
        System.assertEquals(false, detectedLicensePlate2.equals(detectedLicensePlate1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagDetectedLicensePlate detectedLicensePlate1 = SwagDetectedLicensePlate.getExample();
        SwagDetectedLicensePlate detectedLicensePlate2 = new SwagDetectedLicensePlate();

        System.assertEquals(false, detectedLicensePlate1.equals('foo'));
        System.assertEquals(false, detectedLicensePlate2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagDetectedLicensePlate detectedLicensePlate1 = SwagDetectedLicensePlate.getExample();
        SwagDetectedLicensePlate detectedLicensePlate2 = new SwagDetectedLicensePlate();
        SwagDetectedLicensePlate detectedLicensePlate3;

        System.assertEquals(false, detectedLicensePlate1.equals(detectedLicensePlate3));
        System.assertEquals(false, detectedLicensePlate2.equals(detectedLicensePlate3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagDetectedLicensePlate detectedLicensePlate1 = SwagDetectedLicensePlate.getExample();
        SwagDetectedLicensePlate detectedLicensePlate2 = new SwagDetectedLicensePlate();

        System.assertEquals(detectedLicensePlate1.hashCode(), detectedLicensePlate1.hashCode());
        System.assertEquals(detectedLicensePlate2.hashCode(), detectedLicensePlate2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagDetectedLicensePlate detectedLicensePlate1 = SwagDetectedLicensePlate.getExample();
        SwagDetectedLicensePlate detectedLicensePlate2 = SwagDetectedLicensePlate.getExample();
        SwagDetectedLicensePlate detectedLicensePlate3 = new SwagDetectedLicensePlate();
        SwagDetectedLicensePlate detectedLicensePlate4 = new SwagDetectedLicensePlate();

        System.assert(detectedLicensePlate1.equals(detectedLicensePlate2));
        System.assert(detectedLicensePlate3.equals(detectedLicensePlate4));
        System.assertEquals(detectedLicensePlate1.hashCode(), detectedLicensePlate2.hashCode());
        System.assertEquals(detectedLicensePlate3.hashCode(), detectedLicensePlate4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        SwagDetectedLicensePlate detectedLicensePlate = new SwagDetectedLicensePlate();
        Map<String, String> propertyMappings = detectedLicensePlate.getPropertyMappings();
        System.assertEquals('licensePlateTextBestMatch', propertyMappings.get('LicensePlateText_BestMatch'));
        System.assertEquals('licensePlateTextRunnerUp', propertyMappings.get('LicensePlateText_RunnerUp'));
        System.assertEquals('locationX', propertyMappings.get('LocationX'));
        System.assertEquals('locationY', propertyMappings.get('LocationY'));
        System.assertEquals('width', propertyMappings.get('Width'));
        System.assertEquals('height', propertyMappings.get('Height'));
        System.assertEquals('licensePlateRecognitionConfidenceLevel', propertyMappings.get('LicensePlateRecognitionConfidenceLevel'));
    }
}

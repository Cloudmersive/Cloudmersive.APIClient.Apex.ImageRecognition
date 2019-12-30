@isTest
private class SwagVehicleLicensePlateDetectionResuTest {
    @isTest
    private static void equalsSameInstance() {
        SwagVehicleLicensePlateDetectionResu vehicleLicensePlateDetectionResult1 = SwagVehicleLicensePlateDetectionResu.getExample();
        SwagVehicleLicensePlateDetectionResu vehicleLicensePlateDetectionResult2 = vehicleLicensePlateDetectionResult1;
        SwagVehicleLicensePlateDetectionResu vehicleLicensePlateDetectionResult3 = new SwagVehicleLicensePlateDetectionResu();
        SwagVehicleLicensePlateDetectionResu vehicleLicensePlateDetectionResult4 = vehicleLicensePlateDetectionResult3;

        System.assert(vehicleLicensePlateDetectionResult1.equals(vehicleLicensePlateDetectionResult2));
        System.assert(vehicleLicensePlateDetectionResult2.equals(vehicleLicensePlateDetectionResult1));
        System.assert(vehicleLicensePlateDetectionResult1.equals(vehicleLicensePlateDetectionResult1));
        System.assert(vehicleLicensePlateDetectionResult3.equals(vehicleLicensePlateDetectionResult4));
        System.assert(vehicleLicensePlateDetectionResult4.equals(vehicleLicensePlateDetectionResult3));
        System.assert(vehicleLicensePlateDetectionResult3.equals(vehicleLicensePlateDetectionResult3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagVehicleLicensePlateDetectionResu vehicleLicensePlateDetectionResult1 = SwagVehicleLicensePlateDetectionResu.getExample();
        SwagVehicleLicensePlateDetectionResu vehicleLicensePlateDetectionResult2 = SwagVehicleLicensePlateDetectionResu.getExample();
        SwagVehicleLicensePlateDetectionResu vehicleLicensePlateDetectionResult3 = new SwagVehicleLicensePlateDetectionResu();
        SwagVehicleLicensePlateDetectionResu vehicleLicensePlateDetectionResult4 = new SwagVehicleLicensePlateDetectionResu();

        System.assert(vehicleLicensePlateDetectionResult1.equals(vehicleLicensePlateDetectionResult2));
        System.assert(vehicleLicensePlateDetectionResult2.equals(vehicleLicensePlateDetectionResult1));
        System.assert(vehicleLicensePlateDetectionResult3.equals(vehicleLicensePlateDetectionResult4));
        System.assert(vehicleLicensePlateDetectionResult4.equals(vehicleLicensePlateDetectionResult3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagVehicleLicensePlateDetectionResu vehicleLicensePlateDetectionResult1 = SwagVehicleLicensePlateDetectionResu.getExample();
        SwagVehicleLicensePlateDetectionResu vehicleLicensePlateDetectionResult2 = new SwagVehicleLicensePlateDetectionResu();

        System.assertEquals(false, vehicleLicensePlateDetectionResult1.equals(vehicleLicensePlateDetectionResult2));
        System.assertEquals(false, vehicleLicensePlateDetectionResult2.equals(vehicleLicensePlateDetectionResult1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagVehicleLicensePlateDetectionResu vehicleLicensePlateDetectionResult1 = SwagVehicleLicensePlateDetectionResu.getExample();
        SwagVehicleLicensePlateDetectionResu vehicleLicensePlateDetectionResult2 = new SwagVehicleLicensePlateDetectionResu();

        System.assertEquals(false, vehicleLicensePlateDetectionResult1.equals('foo'));
        System.assertEquals(false, vehicleLicensePlateDetectionResult2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagVehicleLicensePlateDetectionResu vehicleLicensePlateDetectionResult1 = SwagVehicleLicensePlateDetectionResu.getExample();
        SwagVehicleLicensePlateDetectionResu vehicleLicensePlateDetectionResult2 = new SwagVehicleLicensePlateDetectionResu();
        SwagVehicleLicensePlateDetectionResu vehicleLicensePlateDetectionResult3;

        System.assertEquals(false, vehicleLicensePlateDetectionResult1.equals(vehicleLicensePlateDetectionResult3));
        System.assertEquals(false, vehicleLicensePlateDetectionResult2.equals(vehicleLicensePlateDetectionResult3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagVehicleLicensePlateDetectionResu vehicleLicensePlateDetectionResult1 = SwagVehicleLicensePlateDetectionResu.getExample();
        SwagVehicleLicensePlateDetectionResu vehicleLicensePlateDetectionResult2 = new SwagVehicleLicensePlateDetectionResu();

        System.assertEquals(vehicleLicensePlateDetectionResult1.hashCode(), vehicleLicensePlateDetectionResult1.hashCode());
        System.assertEquals(vehicleLicensePlateDetectionResult2.hashCode(), vehicleLicensePlateDetectionResult2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagVehicleLicensePlateDetectionResu vehicleLicensePlateDetectionResult1 = SwagVehicleLicensePlateDetectionResu.getExample();
        SwagVehicleLicensePlateDetectionResu vehicleLicensePlateDetectionResult2 = SwagVehicleLicensePlateDetectionResu.getExample();
        SwagVehicleLicensePlateDetectionResu vehicleLicensePlateDetectionResult3 = new SwagVehicleLicensePlateDetectionResu();
        SwagVehicleLicensePlateDetectionResu vehicleLicensePlateDetectionResult4 = new SwagVehicleLicensePlateDetectionResu();

        System.assert(vehicleLicensePlateDetectionResult1.equals(vehicleLicensePlateDetectionResult2));
        System.assert(vehicleLicensePlateDetectionResult3.equals(vehicleLicensePlateDetectionResult4));
        System.assertEquals(vehicleLicensePlateDetectionResult1.hashCode(), vehicleLicensePlateDetectionResult2.hashCode());
        System.assertEquals(vehicleLicensePlateDetectionResult3.hashCode(), vehicleLicensePlateDetectionResult4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        SwagVehicleLicensePlateDetectionResu vehicleLicensePlateDetectionResult = new SwagVehicleLicensePlateDetectionResu();
        Map<String, String> propertyMappings = vehicleLicensePlateDetectionResult.getPropertyMappings();
        System.assertEquals('successful', propertyMappings.get('Successful'));
        System.assertEquals('detectedLicensePlates', propertyMappings.get('DetectedLicensePlates'));
        System.assertEquals('detectedLicensePlateCount', propertyMappings.get('DetectedLicensePlateCount'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        SwagVehicleLicensePlateDetectionResu vehicleLicensePlateDetectionResult = new SwagVehicleLicensePlateDetectionResu();
        System.assertEquals(new List<SwagDetectedLicensePlate>(), vehicleLicensePlateDetectionResult.detectedLicensePlates);
        System.assertEquals(null, vehicleLicensePlateDetectionResult.successful);
        System.assertEquals(null, vehicleLicensePlateDetectionResult.detectedLicensePlateCount);
    }
}

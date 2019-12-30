@isTest
private class SwagFaceMatchTest {
    @isTest
    private static void equalsSameInstance() {
        SwagFaceMatch faceMatch1 = SwagFaceMatch.getExample();
        SwagFaceMatch faceMatch2 = faceMatch1;
        SwagFaceMatch faceMatch3 = new SwagFaceMatch();
        SwagFaceMatch faceMatch4 = faceMatch3;

        System.assert(faceMatch1.equals(faceMatch2));
        System.assert(faceMatch2.equals(faceMatch1));
        System.assert(faceMatch1.equals(faceMatch1));
        System.assert(faceMatch3.equals(faceMatch4));
        System.assert(faceMatch4.equals(faceMatch3));
        System.assert(faceMatch3.equals(faceMatch3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagFaceMatch faceMatch1 = SwagFaceMatch.getExample();
        SwagFaceMatch faceMatch2 = SwagFaceMatch.getExample();
        SwagFaceMatch faceMatch3 = new SwagFaceMatch();
        SwagFaceMatch faceMatch4 = new SwagFaceMatch();

        System.assert(faceMatch1.equals(faceMatch2));
        System.assert(faceMatch2.equals(faceMatch1));
        System.assert(faceMatch3.equals(faceMatch4));
        System.assert(faceMatch4.equals(faceMatch3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagFaceMatch faceMatch1 = SwagFaceMatch.getExample();
        SwagFaceMatch faceMatch2 = new SwagFaceMatch();

        System.assertEquals(false, faceMatch1.equals(faceMatch2));
        System.assertEquals(false, faceMatch2.equals(faceMatch1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagFaceMatch faceMatch1 = SwagFaceMatch.getExample();
        SwagFaceMatch faceMatch2 = new SwagFaceMatch();

        System.assertEquals(false, faceMatch1.equals('foo'));
        System.assertEquals(false, faceMatch2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagFaceMatch faceMatch1 = SwagFaceMatch.getExample();
        SwagFaceMatch faceMatch2 = new SwagFaceMatch();
        SwagFaceMatch faceMatch3;

        System.assertEquals(false, faceMatch1.equals(faceMatch3));
        System.assertEquals(false, faceMatch2.equals(faceMatch3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagFaceMatch faceMatch1 = SwagFaceMatch.getExample();
        SwagFaceMatch faceMatch2 = new SwagFaceMatch();

        System.assertEquals(faceMatch1.hashCode(), faceMatch1.hashCode());
        System.assertEquals(faceMatch2.hashCode(), faceMatch2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagFaceMatch faceMatch1 = SwagFaceMatch.getExample();
        SwagFaceMatch faceMatch2 = SwagFaceMatch.getExample();
        SwagFaceMatch faceMatch3 = new SwagFaceMatch();
        SwagFaceMatch faceMatch4 = new SwagFaceMatch();

        System.assert(faceMatch1.equals(faceMatch2));
        System.assert(faceMatch3.equals(faceMatch4));
        System.assertEquals(faceMatch1.hashCode(), faceMatch2.hashCode());
        System.assertEquals(faceMatch3.hashCode(), faceMatch4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        SwagFaceMatch faceMatch = new SwagFaceMatch();
        Map<String, String> propertyMappings = faceMatch.getPropertyMappings();
        System.assertEquals('leftX', propertyMappings.get('LeftX'));
        System.assertEquals('topY', propertyMappings.get('TopY'));
        System.assertEquals('rightX', propertyMappings.get('RightX'));
        System.assertEquals('bottomY', propertyMappings.get('BottomY'));
        System.assertEquals('highConfidenceMatch', propertyMappings.get('HighConfidenceMatch'));
        System.assertEquals('matchScore', propertyMappings.get('MatchScore'));
    }
}

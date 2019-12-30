@isTest
private class SwagFaceWithLandmarksTest {
    @isTest
    private static void equalsSameInstance() {
        SwagFaceWithLandmarks faceWithLandmarks1 = SwagFaceWithLandmarks.getExample();
        SwagFaceWithLandmarks faceWithLandmarks2 = faceWithLandmarks1;
        SwagFaceWithLandmarks faceWithLandmarks3 = new SwagFaceWithLandmarks();
        SwagFaceWithLandmarks faceWithLandmarks4 = faceWithLandmarks3;

        System.assert(faceWithLandmarks1.equals(faceWithLandmarks2));
        System.assert(faceWithLandmarks2.equals(faceWithLandmarks1));
        System.assert(faceWithLandmarks1.equals(faceWithLandmarks1));
        System.assert(faceWithLandmarks3.equals(faceWithLandmarks4));
        System.assert(faceWithLandmarks4.equals(faceWithLandmarks3));
        System.assert(faceWithLandmarks3.equals(faceWithLandmarks3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagFaceWithLandmarks faceWithLandmarks1 = SwagFaceWithLandmarks.getExample();
        SwagFaceWithLandmarks faceWithLandmarks2 = SwagFaceWithLandmarks.getExample();
        SwagFaceWithLandmarks faceWithLandmarks3 = new SwagFaceWithLandmarks();
        SwagFaceWithLandmarks faceWithLandmarks4 = new SwagFaceWithLandmarks();

        System.assert(faceWithLandmarks1.equals(faceWithLandmarks2));
        System.assert(faceWithLandmarks2.equals(faceWithLandmarks1));
        System.assert(faceWithLandmarks3.equals(faceWithLandmarks4));
        System.assert(faceWithLandmarks4.equals(faceWithLandmarks3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagFaceWithLandmarks faceWithLandmarks1 = SwagFaceWithLandmarks.getExample();
        SwagFaceWithLandmarks faceWithLandmarks2 = new SwagFaceWithLandmarks();

        System.assertEquals(false, faceWithLandmarks1.equals(faceWithLandmarks2));
        System.assertEquals(false, faceWithLandmarks2.equals(faceWithLandmarks1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagFaceWithLandmarks faceWithLandmarks1 = SwagFaceWithLandmarks.getExample();
        SwagFaceWithLandmarks faceWithLandmarks2 = new SwagFaceWithLandmarks();

        System.assertEquals(false, faceWithLandmarks1.equals('foo'));
        System.assertEquals(false, faceWithLandmarks2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagFaceWithLandmarks faceWithLandmarks1 = SwagFaceWithLandmarks.getExample();
        SwagFaceWithLandmarks faceWithLandmarks2 = new SwagFaceWithLandmarks();
        SwagFaceWithLandmarks faceWithLandmarks3;

        System.assertEquals(false, faceWithLandmarks1.equals(faceWithLandmarks3));
        System.assertEquals(false, faceWithLandmarks2.equals(faceWithLandmarks3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagFaceWithLandmarks faceWithLandmarks1 = SwagFaceWithLandmarks.getExample();
        SwagFaceWithLandmarks faceWithLandmarks2 = new SwagFaceWithLandmarks();

        System.assertEquals(faceWithLandmarks1.hashCode(), faceWithLandmarks1.hashCode());
        System.assertEquals(faceWithLandmarks2.hashCode(), faceWithLandmarks2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagFaceWithLandmarks faceWithLandmarks1 = SwagFaceWithLandmarks.getExample();
        SwagFaceWithLandmarks faceWithLandmarks2 = SwagFaceWithLandmarks.getExample();
        SwagFaceWithLandmarks faceWithLandmarks3 = new SwagFaceWithLandmarks();
        SwagFaceWithLandmarks faceWithLandmarks4 = new SwagFaceWithLandmarks();

        System.assert(faceWithLandmarks1.equals(faceWithLandmarks2));
        System.assert(faceWithLandmarks3.equals(faceWithLandmarks4));
        System.assertEquals(faceWithLandmarks1.hashCode(), faceWithLandmarks2.hashCode());
        System.assertEquals(faceWithLandmarks3.hashCode(), faceWithLandmarks4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        SwagFaceWithLandmarks faceWithLandmarks = new SwagFaceWithLandmarks();
        Map<String, String> propertyMappings = faceWithLandmarks.getPropertyMappings();
        System.assertEquals('leftX', propertyMappings.get('LeftX'));
        System.assertEquals('topY', propertyMappings.get('TopY'));
        System.assertEquals('rightX', propertyMappings.get('RightX'));
        System.assertEquals('bottomY', propertyMappings.get('BottomY'));
        System.assertEquals('leftEyebrow', propertyMappings.get('LeftEyebrow'));
        System.assertEquals('rightEyebrow', propertyMappings.get('RightEyebrow'));
        System.assertEquals('leftEye', propertyMappings.get('LeftEye'));
        System.assertEquals('rightEye', propertyMappings.get('RightEye'));
        System.assertEquals('bottomAndSidesOfFace', propertyMappings.get('BottomAndSidesOfFace'));
        System.assertEquals('noseBridge', propertyMappings.get('NoseBridge'));
        System.assertEquals('noseBottom', propertyMappings.get('NoseBottom'));
        System.assertEquals('lipsInnerOutline', propertyMappings.get('LipsInnerOutline'));
        System.assertEquals('lipsOuterOutline', propertyMappings.get('LipsOuterOutline'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        SwagFaceWithLandmarks faceWithLandmarks = new SwagFaceWithLandmarks();
        System.assertEquals(new List<SwagFacePoint>(), faceWithLandmarks.leftEyebrow);
        System.assertEquals(new List<SwagFacePoint>(), faceWithLandmarks.rightEyebrow);
        System.assertEquals(new List<SwagFacePoint>(), faceWithLandmarks.leftEye);
        System.assertEquals(new List<SwagFacePoint>(), faceWithLandmarks.rightEye);
        System.assertEquals(new List<SwagFacePoint>(), faceWithLandmarks.bottomAndSidesOfFace);
        System.assertEquals(new List<SwagFacePoint>(), faceWithLandmarks.noseBridge);
        System.assertEquals(new List<SwagFacePoint>(), faceWithLandmarks.noseBottom);
        System.assertEquals(new List<SwagFacePoint>(), faceWithLandmarks.lipsInnerOutline);
        System.assertEquals(new List<SwagFacePoint>(), faceWithLandmarks.lipsOuterOutline);
        System.assertEquals(null, faceWithLandmarks.leftX);
        System.assertEquals(null, faceWithLandmarks.topY);
        System.assertEquals(null, faceWithLandmarks.rightX);
        System.assertEquals(null, faceWithLandmarks.bottomY);
    }
}

@isTest
private class SwagFaceTest {
    @isTest
    private static void equalsSameInstance() {
        SwagFace face1 = SwagFace.getExample();
        SwagFace face2 = face1;
        SwagFace face3 = new SwagFace();
        SwagFace face4 = face3;

        System.assert(face1.equals(face2));
        System.assert(face2.equals(face1));
        System.assert(face1.equals(face1));
        System.assert(face3.equals(face4));
        System.assert(face4.equals(face3));
        System.assert(face3.equals(face3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagFace face1 = SwagFace.getExample();
        SwagFace face2 = SwagFace.getExample();
        SwagFace face3 = new SwagFace();
        SwagFace face4 = new SwagFace();

        System.assert(face1.equals(face2));
        System.assert(face2.equals(face1));
        System.assert(face3.equals(face4));
        System.assert(face4.equals(face3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagFace face1 = SwagFace.getExample();
        SwagFace face2 = new SwagFace();

        System.assertEquals(false, face1.equals(face2));
        System.assertEquals(false, face2.equals(face1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagFace face1 = SwagFace.getExample();
        SwagFace face2 = new SwagFace();

        System.assertEquals(false, face1.equals('foo'));
        System.assertEquals(false, face2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagFace face1 = SwagFace.getExample();
        SwagFace face2 = new SwagFace();
        SwagFace face3;

        System.assertEquals(false, face1.equals(face3));
        System.assertEquals(false, face2.equals(face3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagFace face1 = SwagFace.getExample();
        SwagFace face2 = new SwagFace();

        System.assertEquals(face1.hashCode(), face1.hashCode());
        System.assertEquals(face2.hashCode(), face2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagFace face1 = SwagFace.getExample();
        SwagFace face2 = SwagFace.getExample();
        SwagFace face3 = new SwagFace();
        SwagFace face4 = new SwagFace();

        System.assert(face1.equals(face2));
        System.assert(face3.equals(face4));
        System.assertEquals(face1.hashCode(), face2.hashCode());
        System.assertEquals(face3.hashCode(), face4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        SwagFace face = new SwagFace();
        Map<String, String> propertyMappings = face.getPropertyMappings();
        System.assertEquals('leftX', propertyMappings.get('LeftX'));
        System.assertEquals('topY', propertyMappings.get('TopY'));
        System.assertEquals('rightX', propertyMappings.get('RightX'));
        System.assertEquals('bottomY', propertyMappings.get('BottomY'));
    }
}

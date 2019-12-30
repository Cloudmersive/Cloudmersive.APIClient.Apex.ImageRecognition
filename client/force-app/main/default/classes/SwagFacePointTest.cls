@isTest
private class SwagFacePointTest {
    @isTest
    private static void equalsSameInstance() {
        SwagFacePoint facePoint1 = SwagFacePoint.getExample();
        SwagFacePoint facePoint2 = facePoint1;
        SwagFacePoint facePoint3 = new SwagFacePoint();
        SwagFacePoint facePoint4 = facePoint3;

        System.assert(facePoint1.equals(facePoint2));
        System.assert(facePoint2.equals(facePoint1));
        System.assert(facePoint1.equals(facePoint1));
        System.assert(facePoint3.equals(facePoint4));
        System.assert(facePoint4.equals(facePoint3));
        System.assert(facePoint3.equals(facePoint3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagFacePoint facePoint1 = SwagFacePoint.getExample();
        SwagFacePoint facePoint2 = SwagFacePoint.getExample();
        SwagFacePoint facePoint3 = new SwagFacePoint();
        SwagFacePoint facePoint4 = new SwagFacePoint();

        System.assert(facePoint1.equals(facePoint2));
        System.assert(facePoint2.equals(facePoint1));
        System.assert(facePoint3.equals(facePoint4));
        System.assert(facePoint4.equals(facePoint3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagFacePoint facePoint1 = SwagFacePoint.getExample();
        SwagFacePoint facePoint2 = new SwagFacePoint();

        System.assertEquals(false, facePoint1.equals(facePoint2));
        System.assertEquals(false, facePoint2.equals(facePoint1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagFacePoint facePoint1 = SwagFacePoint.getExample();
        SwagFacePoint facePoint2 = new SwagFacePoint();

        System.assertEquals(false, facePoint1.equals('foo'));
        System.assertEquals(false, facePoint2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagFacePoint facePoint1 = SwagFacePoint.getExample();
        SwagFacePoint facePoint2 = new SwagFacePoint();
        SwagFacePoint facePoint3;

        System.assertEquals(false, facePoint1.equals(facePoint3));
        System.assertEquals(false, facePoint2.equals(facePoint3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagFacePoint facePoint1 = SwagFacePoint.getExample();
        SwagFacePoint facePoint2 = new SwagFacePoint();

        System.assertEquals(facePoint1.hashCode(), facePoint1.hashCode());
        System.assertEquals(facePoint2.hashCode(), facePoint2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagFacePoint facePoint1 = SwagFacePoint.getExample();
        SwagFacePoint facePoint2 = SwagFacePoint.getExample();
        SwagFacePoint facePoint3 = new SwagFacePoint();
        SwagFacePoint facePoint4 = new SwagFacePoint();

        System.assert(facePoint1.equals(facePoint2));
        System.assert(facePoint3.equals(facePoint4));
        System.assertEquals(facePoint1.hashCode(), facePoint2.hashCode());
        System.assertEquals(facePoint3.hashCode(), facePoint4.hashCode());
    }
}

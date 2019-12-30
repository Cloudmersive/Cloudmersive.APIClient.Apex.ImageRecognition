@isTest
private class SwagPolygonPointTest {
    @isTest
    private static void equalsSameInstance() {
        SwagPolygonPoint polygonPoint1 = SwagPolygonPoint.getExample();
        SwagPolygonPoint polygonPoint2 = polygonPoint1;
        SwagPolygonPoint polygonPoint3 = new SwagPolygonPoint();
        SwagPolygonPoint polygonPoint4 = polygonPoint3;

        System.assert(polygonPoint1.equals(polygonPoint2));
        System.assert(polygonPoint2.equals(polygonPoint1));
        System.assert(polygonPoint1.equals(polygonPoint1));
        System.assert(polygonPoint3.equals(polygonPoint4));
        System.assert(polygonPoint4.equals(polygonPoint3));
        System.assert(polygonPoint3.equals(polygonPoint3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagPolygonPoint polygonPoint1 = SwagPolygonPoint.getExample();
        SwagPolygonPoint polygonPoint2 = SwagPolygonPoint.getExample();
        SwagPolygonPoint polygonPoint3 = new SwagPolygonPoint();
        SwagPolygonPoint polygonPoint4 = new SwagPolygonPoint();

        System.assert(polygonPoint1.equals(polygonPoint2));
        System.assert(polygonPoint2.equals(polygonPoint1));
        System.assert(polygonPoint3.equals(polygonPoint4));
        System.assert(polygonPoint4.equals(polygonPoint3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagPolygonPoint polygonPoint1 = SwagPolygonPoint.getExample();
        SwagPolygonPoint polygonPoint2 = new SwagPolygonPoint();

        System.assertEquals(false, polygonPoint1.equals(polygonPoint2));
        System.assertEquals(false, polygonPoint2.equals(polygonPoint1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagPolygonPoint polygonPoint1 = SwagPolygonPoint.getExample();
        SwagPolygonPoint polygonPoint2 = new SwagPolygonPoint();

        System.assertEquals(false, polygonPoint1.equals('foo'));
        System.assertEquals(false, polygonPoint2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagPolygonPoint polygonPoint1 = SwagPolygonPoint.getExample();
        SwagPolygonPoint polygonPoint2 = new SwagPolygonPoint();
        SwagPolygonPoint polygonPoint3;

        System.assertEquals(false, polygonPoint1.equals(polygonPoint3));
        System.assertEquals(false, polygonPoint2.equals(polygonPoint3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagPolygonPoint polygonPoint1 = SwagPolygonPoint.getExample();
        SwagPolygonPoint polygonPoint2 = new SwagPolygonPoint();

        System.assertEquals(polygonPoint1.hashCode(), polygonPoint1.hashCode());
        System.assertEquals(polygonPoint2.hashCode(), polygonPoint2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagPolygonPoint polygonPoint1 = SwagPolygonPoint.getExample();
        SwagPolygonPoint polygonPoint2 = SwagPolygonPoint.getExample();
        SwagPolygonPoint polygonPoint3 = new SwagPolygonPoint();
        SwagPolygonPoint polygonPoint4 = new SwagPolygonPoint();

        System.assert(polygonPoint1.equals(polygonPoint2));
        System.assert(polygonPoint3.equals(polygonPoint4));
        System.assertEquals(polygonPoint1.hashCode(), polygonPoint2.hashCode());
        System.assertEquals(polygonPoint3.hashCode(), polygonPoint4.hashCode());
    }
}

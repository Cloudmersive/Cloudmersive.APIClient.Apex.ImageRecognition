@isTest
private class SwagColorResultTest {
    @isTest
    private static void equalsSameInstance() {
        SwagColorResult colorResult1 = SwagColorResult.getExample();
        SwagColorResult colorResult2 = colorResult1;
        SwagColorResult colorResult3 = new SwagColorResult();
        SwagColorResult colorResult4 = colorResult3;

        System.assert(colorResult1.equals(colorResult2));
        System.assert(colorResult2.equals(colorResult1));
        System.assert(colorResult1.equals(colorResult1));
        System.assert(colorResult3.equals(colorResult4));
        System.assert(colorResult4.equals(colorResult3));
        System.assert(colorResult3.equals(colorResult3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagColorResult colorResult1 = SwagColorResult.getExample();
        SwagColorResult colorResult2 = SwagColorResult.getExample();
        SwagColorResult colorResult3 = new SwagColorResult();
        SwagColorResult colorResult4 = new SwagColorResult();

        System.assert(colorResult1.equals(colorResult2));
        System.assert(colorResult2.equals(colorResult1));
        System.assert(colorResult3.equals(colorResult4));
        System.assert(colorResult4.equals(colorResult3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagColorResult colorResult1 = SwagColorResult.getExample();
        SwagColorResult colorResult2 = new SwagColorResult();

        System.assertEquals(false, colorResult1.equals(colorResult2));
        System.assertEquals(false, colorResult2.equals(colorResult1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagColorResult colorResult1 = SwagColorResult.getExample();
        SwagColorResult colorResult2 = new SwagColorResult();

        System.assertEquals(false, colorResult1.equals('foo'));
        System.assertEquals(false, colorResult2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagColorResult colorResult1 = SwagColorResult.getExample();
        SwagColorResult colorResult2 = new SwagColorResult();
        SwagColorResult colorResult3;

        System.assertEquals(false, colorResult1.equals(colorResult3));
        System.assertEquals(false, colorResult2.equals(colorResult3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagColorResult colorResult1 = SwagColorResult.getExample();
        SwagColorResult colorResult2 = new SwagColorResult();

        System.assertEquals(colorResult1.hashCode(), colorResult1.hashCode());
        System.assertEquals(colorResult2.hashCode(), colorResult2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagColorResult colorResult1 = SwagColorResult.getExample();
        SwagColorResult colorResult2 = SwagColorResult.getExample();
        SwagColorResult colorResult3 = new SwagColorResult();
        SwagColorResult colorResult4 = new SwagColorResult();

        System.assert(colorResult1.equals(colorResult2));
        System.assert(colorResult3.equals(colorResult4));
        System.assertEquals(colorResult1.hashCode(), colorResult2.hashCode());
        System.assertEquals(colorResult3.hashCode(), colorResult4.hashCode());
    }
}

@isTest
private class SwagImageDescriptionResponseTest {
    @isTest
    private static void equalsSameInstance() {
        SwagImageDescriptionResponse imageDescriptionResponse1 = SwagImageDescriptionResponse.getExample();
        SwagImageDescriptionResponse imageDescriptionResponse2 = imageDescriptionResponse1;
        SwagImageDescriptionResponse imageDescriptionResponse3 = new SwagImageDescriptionResponse();
        SwagImageDescriptionResponse imageDescriptionResponse4 = imageDescriptionResponse3;

        System.assert(imageDescriptionResponse1.equals(imageDescriptionResponse2));
        System.assert(imageDescriptionResponse2.equals(imageDescriptionResponse1));
        System.assert(imageDescriptionResponse1.equals(imageDescriptionResponse1));
        System.assert(imageDescriptionResponse3.equals(imageDescriptionResponse4));
        System.assert(imageDescriptionResponse4.equals(imageDescriptionResponse3));
        System.assert(imageDescriptionResponse3.equals(imageDescriptionResponse3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagImageDescriptionResponse imageDescriptionResponse1 = SwagImageDescriptionResponse.getExample();
        SwagImageDescriptionResponse imageDescriptionResponse2 = SwagImageDescriptionResponse.getExample();
        SwagImageDescriptionResponse imageDescriptionResponse3 = new SwagImageDescriptionResponse();
        SwagImageDescriptionResponse imageDescriptionResponse4 = new SwagImageDescriptionResponse();

        System.assert(imageDescriptionResponse1.equals(imageDescriptionResponse2));
        System.assert(imageDescriptionResponse2.equals(imageDescriptionResponse1));
        System.assert(imageDescriptionResponse3.equals(imageDescriptionResponse4));
        System.assert(imageDescriptionResponse4.equals(imageDescriptionResponse3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagImageDescriptionResponse imageDescriptionResponse1 = SwagImageDescriptionResponse.getExample();
        SwagImageDescriptionResponse imageDescriptionResponse2 = new SwagImageDescriptionResponse();

        System.assertEquals(false, imageDescriptionResponse1.equals(imageDescriptionResponse2));
        System.assertEquals(false, imageDescriptionResponse2.equals(imageDescriptionResponse1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagImageDescriptionResponse imageDescriptionResponse1 = SwagImageDescriptionResponse.getExample();
        SwagImageDescriptionResponse imageDescriptionResponse2 = new SwagImageDescriptionResponse();

        System.assertEquals(false, imageDescriptionResponse1.equals('foo'));
        System.assertEquals(false, imageDescriptionResponse2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagImageDescriptionResponse imageDescriptionResponse1 = SwagImageDescriptionResponse.getExample();
        SwagImageDescriptionResponse imageDescriptionResponse2 = new SwagImageDescriptionResponse();
        SwagImageDescriptionResponse imageDescriptionResponse3;

        System.assertEquals(false, imageDescriptionResponse1.equals(imageDescriptionResponse3));
        System.assertEquals(false, imageDescriptionResponse2.equals(imageDescriptionResponse3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagImageDescriptionResponse imageDescriptionResponse1 = SwagImageDescriptionResponse.getExample();
        SwagImageDescriptionResponse imageDescriptionResponse2 = new SwagImageDescriptionResponse();

        System.assertEquals(imageDescriptionResponse1.hashCode(), imageDescriptionResponse1.hashCode());
        System.assertEquals(imageDescriptionResponse2.hashCode(), imageDescriptionResponse2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagImageDescriptionResponse imageDescriptionResponse1 = SwagImageDescriptionResponse.getExample();
        SwagImageDescriptionResponse imageDescriptionResponse2 = SwagImageDescriptionResponse.getExample();
        SwagImageDescriptionResponse imageDescriptionResponse3 = new SwagImageDescriptionResponse();
        SwagImageDescriptionResponse imageDescriptionResponse4 = new SwagImageDescriptionResponse();

        System.assert(imageDescriptionResponse1.equals(imageDescriptionResponse2));
        System.assert(imageDescriptionResponse3.equals(imageDescriptionResponse4));
        System.assertEquals(imageDescriptionResponse1.hashCode(), imageDescriptionResponse2.hashCode());
        System.assertEquals(imageDescriptionResponse3.hashCode(), imageDescriptionResponse4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        SwagImageDescriptionResponse imageDescriptionResponse = new SwagImageDescriptionResponse();
        Map<String, String> propertyMappings = imageDescriptionResponse.getPropertyMappings();
        System.assertEquals('successful', propertyMappings.get('Successful'));
        System.assertEquals('highconfidence', propertyMappings.get('Highconfidence'));
        System.assertEquals('bestOutcome', propertyMappings.get('BestOutcome'));
        System.assertEquals('runnerUpOutcome', propertyMappings.get('RunnerUpOutcome'));
    }
}

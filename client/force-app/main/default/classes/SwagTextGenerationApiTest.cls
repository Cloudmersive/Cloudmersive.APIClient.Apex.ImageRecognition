@isTest
private class SwagTextGenerationApiTest {
    /**
     * Create an image of handwriting in PNG format
     *
     * Uses Deep Learning to generate realistic handwriting and returns the result as a PNG image
     */
    @isTest
    private static void textGenerationCreateHandwritingPngTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new SwaggerResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'request' => SwagCreateHandwritingRequest.getExample()
        };

        SwagClient client;
        SwagTextGenerationApi api;
        Object response;
        Object expectedResponse;

        client = new SwagClient();
        api = new SwagTextGenerationApi(client);
        ((Swagger.ApiKeyAuth) client.getAuthentication('Apikey');
            client.setApiKey('foo-bar-api-key');

        res.setHeader('Content-Type', 'application/json');
        res.setBody('"{}"');
        expectedResponse = null;
        response = (Object) api.textGenerationCreateHandwritingPng(params);
        System.assertEquals(expectedResponse, response);
    }
}
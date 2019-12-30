@isTest
private class SwagNsfwApiTest {
    /**
     * Not safe for work NSFW racy content classification
     *
     * Classify an image into Not Safe For Work (NSFW)/Porn/Racy content and Safe Content.
     */
    @isTest
    private static void nsfwClassifyTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new SwaggerResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'imageFile' => Blob.valueOf('Sample text file\nContents')
        };

        SwagClient client;
        SwagNsfwApi api;
        SwagNsfwResult response;
        SwagNsfwResult expectedResponse;

        client = new SwagClient();
        api = new SwagNsfwApi(client);
        ((Swagger.ApiKeyAuth) client.getAuthentication('Apikey');
            client.setApiKey('foo-bar-api-key');

        res.setHeader('Content-Type', 'application/json');
        res.setBody('{\r\n  "Score" : 0.8008281904610115,\r\n  "ClassificationOutcome" : "ClassificationOutcome",\r\n  "Successful" : true\r\n}');
        expectedResponse = SwagNsfwResult.getExample();
        response = (SwagNsfwResult) api.nsfwClassify(params);
        System.assertEquals(expectedResponse, response);
    }
}
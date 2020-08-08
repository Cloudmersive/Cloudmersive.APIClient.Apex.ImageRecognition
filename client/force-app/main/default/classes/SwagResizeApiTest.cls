@isTest
private class SwagResizeApiTest {
    /**
     * Resize an image while preserving aspect ratio
     *
     * Resize an image to a maximum width and maximum height, while preserving the image\&#39;s original aspect ratio.  Resize is EXIF-aware.
     */
    @isTest
    private static void resizePostTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new SwaggerResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'maxWidth' => 56,
            'maxHeight' => 56,
            'imageFile' => Blob.valueOf('Sample text file\nContents')
        };

        SwagClient client;
        SwagResizeApi api;
        Blob response;
        Blob expectedResponse;

        client = new SwagClient();
        api = new SwagResizeApi(client);
        ((Swagger.ApiKeyAuth) client.getAuthentication('Apikey');
            client.setApiKey('foo-bar-api-key');

        res.setHeader('Content-Type', 'application/json');
        res.setBody('"VGhlIHF1aWNrIGJyb3duIGZveCBqdW1wZWQgb3ZlciB0aGUgbGF6eSBkb2cu"');
        expectedResponse = EncodingUtil.base64Decode('VGhlIHF1aWNrIGJyb3duIGZveCBqdW1wZWQgb3ZlciB0aGUgbGF6eSBkb2cu');
        response = (Blob) api.resizePost(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Resize an image
     *
     * Resize an image to a specific width and specific height.  Resize is EXIF-aware.
     */
    @isTest
    private static void resizeResizeSimpleTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new SwaggerResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'width' => 56,
            'height' => 56,
            'imageFile' => Blob.valueOf('Sample text file\nContents')
        };

        SwagClient client;
        SwagResizeApi api;
        Blob response;
        Blob expectedResponse;

        client = new SwagClient();
        api = new SwagResizeApi(client);
        ((Swagger.ApiKeyAuth) client.getAuthentication('Apikey');
            client.setApiKey('foo-bar-api-key');

        res.setHeader('Content-Type', 'application/json');
        res.setBody('"VGhlIHF1aWNrIGJyb3duIGZveCBqdW1wZWQgb3ZlciB0aGUgbGF6eSBkb2cu"');
        expectedResponse = EncodingUtil.base64Decode('VGhlIHF1aWNrIGJyb3duIGZveCBqdW1wZWQgb3ZlciB0aGUgbGF6eSBkb2cu');
        response = (Blob) api.resizeResizeSimple(params);
        System.assertEquals(expectedResponse, response);
    }
}
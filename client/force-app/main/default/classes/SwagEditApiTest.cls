@isTest
private class SwagEditApiTest {
    /**
     * Normalizes image rotation and removes EXIF rotation data
     *
     * Automatically orients the input image based on EXIF information and then removes the EXIF information.  EXIF is an additional set of information stored in some images taken with cell phone cameras based on the orientation of the camera.  By normalizing rotation and removing EXIF data these images become much easier to process.
     */
    @isTest
    private static void editAutoOrientTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new SwaggerResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'imageFile' => Blob.valueOf('Sample text file\nContents')
        };

        SwagClient client;
        SwagEditApi api;
        Blob response;
        Blob expectedResponse;

        client = new SwagClient();
        api = new SwagEditApi(client);
        ((Swagger.ApiKeyAuth) client.getAuthentication('Apikey');
            client.setApiKey('foo-bar-api-key');

        res.setHeader('Content-Type', 'application/json');
        res.setBody('"VGhlIHF1aWNrIGJyb3duIGZveCBqdW1wZWQgb3ZlciB0aGUgbGF6eSBkb2cu"');
        expectedResponse = EncodingUtil.base64Decode('VGhlIHF1aWNrIGJyb3duIGZveCBqdW1wZWQgb3ZlciB0aGUgbGF6eSBkb2cu');
        response = (Blob) api.editAutoOrient(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Composite two images together
     *
     * Composites two input images together; a layered image onto a base image.  The first image you input is the base image.  The second image (the layered image) will be composited on top of this base image.  Supports PNG transparency.  To control padding you can include transparent pixels at the border(s) of your layered images as appropriate.
     */
    @isTest
    private static void editCompositeBasicTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new SwaggerResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'location' => 'location_example',
            'baseImage' => Blob.valueOf('Sample text file\nContents'),
            'layeredImage' => Blob.valueOf('Sample text file\nContents')
        };

        SwagClient client;
        SwagEditApi api;
        Blob response;
        Blob expectedResponse;

        client = new SwagClient();
        api = new SwagEditApi(client);
        ((Swagger.ApiKeyAuth) client.getAuthentication('Apikey');
            client.setApiKey('foo-bar-api-key');

        res.setHeader('Content-Type', 'application/json');
        res.setBody('"VGhlIHF1aWNrIGJyb3duIGZveCBqdW1wZWQgb3ZlciB0aGUgbGF6eSBkb2cu"');
        expectedResponse = EncodingUtil.base64Decode('VGhlIHF1aWNrIGJyb3duIGZveCBqdW1wZWQgb3ZlciB0aGUgbGF6eSBkb2cu');
        response = (Blob) api.editCompositeBasic(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Composite two images together precisely
     *
     * Composites two input images together; a layered image onto a base image. Position is based on distance in pixels from each side.  The first image you input is the base image.  The second image (the layered image) will be composited on top of this base image.  Supports PNG transparency.  To control padding you can include transparent pixels at the border(s) of your layered images as appropriate.  Providing multiple parameters in a single axis (for example top and bottom) is not recommended, since only one of the parameters will be used per axis.
     */
    @isTest
    private static void editCompositePreciseTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new SwaggerResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'baseImage' => Blob.valueOf('Sample text file\nContents'),
            'layeredImage' => Blob.valueOf('Sample text file\nContents'),
            'top' => 56,
            'bottom' => 56,
            'left' => 56,
            'right' => 56,
            'width' => 56,
            'height' => 56
        };

        SwagClient client;
        SwagEditApi api;
        Blob response;
        Blob expectedResponse;

        client = new SwagClient();
        api = new SwagEditApi(client);
        ((Swagger.ApiKeyAuth) client.getAuthentication('Apikey');
            client.setApiKey('foo-bar-api-key');

        res.setHeader('Content-Type', 'application/json');
        res.setBody('"VGhlIHF1aWNrIGJyb3duIGZveCBqdW1wZWQgb3ZlciB0aGUgbGF6eSBkb2cu"');
        expectedResponse = EncodingUtil.base64Decode('VGhlIHF1aWNrIGJyb3duIGZveCBqdW1wZWQgb3ZlciB0aGUgbGF6eSBkb2cu');
        response = (Blob) api.editCompositePrecise(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Adaptively adjust the contrast of the image to be more appealing and easy to see
     *
     * Uses Gamma to adjust the contrast adaptively the way the human eye sees the world.  Results significantly improve the viewability and visual appeal of the image.
     */
    @isTest
    private static void editContrastAdaptiveTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new SwaggerResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'gamma' => 1.2,
            'imageFile' => Blob.valueOf('Sample text file\nContents')
        };

        SwagClient client;
        SwagEditApi api;
        Blob response;
        Blob expectedResponse;

        client = new SwagClient();
        api = new SwagEditApi(client);
        ((Swagger.ApiKeyAuth) client.getAuthentication('Apikey');
            client.setApiKey('foo-bar-api-key');

        res.setHeader('Content-Type', 'application/json');
        res.setBody('"VGhlIHF1aWNrIGJyb3duIGZveCBqdW1wZWQgb3ZlciB0aGUgbGF6eSBkb2cu"');
        expectedResponse = EncodingUtil.base64Decode('VGhlIHF1aWNrIGJyb3duIGZveCBqdW1wZWQgb3ZlciB0aGUgbGF6eSBkb2cu');
        response = (Blob) api.editContrastAdaptive(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Crop an image to an circular area
     *
     * Crop an image to a target circular area
     */
    @isTest
    private static void editCropCircleTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new SwaggerResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'left' => 56,
            'top' => 56,
            'radius' => 56,
            'imageFile' => Blob.valueOf('Sample text file\nContents')
        };

        SwagClient client;
        SwagEditApi api;
        Blob response;
        Blob expectedResponse;

        client = new SwagClient();
        api = new SwagEditApi(client);
        ((Swagger.ApiKeyAuth) client.getAuthentication('Apikey');
            client.setApiKey('foo-bar-api-key');

        res.setHeader('Content-Type', 'application/json');
        res.setBody('"VGhlIHF1aWNrIGJyb3duIGZveCBqdW1wZWQgb3ZlciB0aGUgbGF6eSBkb2cu"');
        expectedResponse = EncodingUtil.base64Decode('VGhlIHF1aWNrIGJyb3duIGZveCBqdW1wZWQgb3ZlciB0aGUgbGF6eSBkb2cu');
        response = (Blob) api.editCropCircle(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Crop an image to a rectangular area
     *
     * Crop an image to a target rectangular area
     */
    @isTest
    private static void editCropRectangleTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new SwaggerResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'left' => 56,
            'top' => 56,
            'width' => 56,
            'height' => 56,
            'imageFile' => Blob.valueOf('Sample text file\nContents')
        };

        SwagClient client;
        SwagEditApi api;
        Blob response;
        Blob expectedResponse;

        client = new SwagClient();
        api = new SwagEditApi(client);
        ((Swagger.ApiKeyAuth) client.getAuthentication('Apikey');
            client.setApiKey('foo-bar-api-key');

        res.setHeader('Content-Type', 'application/json');
        res.setBody('"VGhlIHF1aWNrIGJyb3duIGZveCBqdW1wZWQgb3ZlciB0aGUgbGF6eSBkb2cu"');
        expectedResponse = EncodingUtil.base64Decode('VGhlIHF1aWNrIGJyb3duIGZveCBqdW1wZWQgb3ZlciB0aGUgbGF6eSBkb2cu');
        response = (Blob) api.editCropRectangle(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Draw a polygon onto an image
     *
     * Draw one or more polygons, with customized visuals, onto an image
     */
    @isTest
    private static void editDrawPolygonTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new SwaggerResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'request' => SwagDrawPolygonRequest.getExample()
        };

        SwagClient client;
        SwagEditApi api;
        Blob response;
        Blob expectedResponse;

        client = new SwagClient();
        api = new SwagEditApi(client);
        ((Swagger.ApiKeyAuth) client.getAuthentication('Apikey');
            client.setApiKey('foo-bar-api-key');

        res.setHeader('Content-Type', 'application/json');
        res.setBody('"VGhlIHF1aWNrIGJyb3duIGZveCBqdW1wZWQgb3ZlciB0aGUgbGF6eSBkb2cu"');
        expectedResponse = EncodingUtil.base64Decode('VGhlIHF1aWNrIGJyb3duIGZveCBqdW1wZWQgb3ZlciB0aGUgbGF6eSBkb2cu');
        response = (Blob) api.editDrawPolygon(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Draw a rectangle onto an image
     *
     * Draw one or more rectangles, with customized visuals, onto an image
     */
    @isTest
    private static void editDrawRectangleTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new SwaggerResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'request' => SwagDrawRectangleRequest.getExample()
        };

        SwagClient client;
        SwagEditApi api;
        Blob response;
        Blob expectedResponse;

        client = new SwagClient();
        api = new SwagEditApi(client);
        ((Swagger.ApiKeyAuth) client.getAuthentication('Apikey');
            client.setApiKey('foo-bar-api-key');

        res.setHeader('Content-Type', 'application/json');
        res.setBody('"VGhlIHF1aWNrIGJyb3duIGZveCBqdW1wZWQgb3ZlciB0aGUgbGF6eSBkb2cu"');
        expectedResponse = EncodingUtil.base64Decode('VGhlIHF1aWNrIGJyb3duIGZveCBqdW1wZWQgb3ZlciB0aGUgbGF6eSBkb2cu');
        response = (Blob) api.editDrawRectangle(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Draw text onto an image
     *
     * Draw one or more pieces of text, with customized visuals, onto an image
     */
    @isTest
    private static void editDrawTextTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new SwaggerResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'request' => SwagDrawTextRequest.getExample()
        };

        SwagClient client;
        SwagEditApi api;
        Blob response;
        Blob expectedResponse;

        client = new SwagClient();
        api = new SwagEditApi(client);
        ((Swagger.ApiKeyAuth) client.getAuthentication('Apikey');
            client.setApiKey('foo-bar-api-key');

        res.setHeader('Content-Type', 'application/json');
        res.setBody('"VGhlIHF1aWNrIGJyb3duIGZveCBqdW1wZWQgb3ZlciB0aGUgbGF6eSBkb2cu"');
        expectedResponse = EncodingUtil.base64Decode('VGhlIHF1aWNrIGJyb3duIGZveCBqdW1wZWQgb3ZlciB0aGUgbGF6eSBkb2cu');
        response = (Blob) api.editDrawText(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Add a customizeable drop shadow to an image
     *
     * Add a customizeable drop shadow to the image
     */
    @isTest
    private static void editDropShadowTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new SwaggerResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'X' => 56,
            'Y' => 56,
            'sigma' => 56,
            'opacity' => 56,
            'imageFile' => Blob.valueOf('Sample text file\nContents')
        };

        SwagClient client;
        SwagEditApi api;
        Blob response;
        Blob expectedResponse;

        client = new SwagClient();
        api = new SwagEditApi(client);
        ((Swagger.ApiKeyAuth) client.getAuthentication('Apikey');
            client.setApiKey('foo-bar-api-key');

        res.setHeader('Content-Type', 'application/json');
        res.setBody('"VGhlIHF1aWNrIGJyb3duIGZveCBqdW1wZWQgb3ZlciB0aGUgbGF6eSBkb2cu"');
        expectedResponse = EncodingUtil.base64Decode('VGhlIHF1aWNrIGJyb3duIGZveCBqdW1wZWQgb3ZlciB0aGUgbGF6eSBkb2cu');
        response = (Blob) api.editDropShadow(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Invert, negate the colors in the image
     *
     * Inverts (negates) all of the colors in the image.  If the image contains transparency, the transparency will first be removed prior to inverting the image.
     */
    @isTest
    private static void editInvertTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new SwaggerResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'imageFile' => Blob.valueOf('Sample text file\nContents')
        };

        SwagClient client;
        SwagEditApi api;
        Blob response;
        Blob expectedResponse;

        client = new SwagClient();
        api = new SwagEditApi(client);
        ((Swagger.ApiKeyAuth) client.getAuthentication('Apikey');
            client.setApiKey('foo-bar-api-key');

        res.setHeader('Content-Type', 'application/json');
        res.setBody('"VGhlIHF1aWNrIGJyb3duIGZveCBqdW1wZWQgb3ZlciB0aGUgbGF6eSBkb2cu"');
        expectedResponse = EncodingUtil.base64Decode('VGhlIHF1aWNrIGJyb3duIGZveCBqdW1wZWQgb3ZlciB0aGUgbGF6eSBkb2cu');
        response = (Blob) api.editInvert(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Remove EXIF data from the image
     *
     * Removes any EXIF data and profiles .
     */
    @isTest
    private static void editRemoveExifDataTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new SwaggerResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'imageFile' => Blob.valueOf('Sample text file\nContents')
        };

        SwagClient client;
        SwagEditApi api;
        Blob response;
        Blob expectedResponse;

        client = new SwagClient();
        api = new SwagEditApi(client);
        ((Swagger.ApiKeyAuth) client.getAuthentication('Apikey');
            client.setApiKey('foo-bar-api-key');

        res.setHeader('Content-Type', 'application/json');
        res.setBody('"VGhlIHF1aWNrIGJyb3duIGZveCBqdW1wZWQgb3ZlciB0aGUgbGF6eSBkb2cu"');
        expectedResponse = EncodingUtil.base64Decode('VGhlIHF1aWNrIGJyb3duIGZveCBqdW1wZWQgb3ZlciB0aGUgbGF6eSBkb2cu');
        response = (Blob) api.editRemoveExifData(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Remove transparency from the image
     *
     * Removes any active transparency in the image.  Effectively renders the image at the same resolution, in the same file format, over a white background, thus removing transparency.
     */
    @isTest
    private static void editRemoveTransparencyTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new SwaggerResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'imageFile' => Blob.valueOf('Sample text file\nContents')
        };

        SwagClient client;
        SwagEditApi api;
        Blob response;
        Blob expectedResponse;

        client = new SwagClient();
        api = new SwagEditApi(client);
        ((Swagger.ApiKeyAuth) client.getAuthentication('Apikey');
            client.setApiKey('foo-bar-api-key');

        res.setHeader('Content-Type', 'application/json');
        res.setBody('"VGhlIHF1aWNrIGJyb3duIGZveCBqdW1wZWQgb3ZlciB0aGUgbGF6eSBkb2cu"');
        expectedResponse = EncodingUtil.base64Decode('VGhlIHF1aWNrIGJyb3duIGZveCBqdW1wZWQgb3ZlciB0aGUgbGF6eSBkb2cu');
        response = (Blob) api.editRemoveTransparency(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Rotate an image any number of degrees
     *
     * Rotates an image by an arbitrary number of degrees
     */
    @isTest
    private static void editRotateTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new SwaggerResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'degrees' => 1.2,
            'imageFile' => Blob.valueOf('Sample text file\nContents')
        };

        SwagClient client;
        SwagEditApi api;
        Blob response;
        Blob expectedResponse;

        client = new SwagClient();
        api = new SwagEditApi(client);
        ((Swagger.ApiKeyAuth) client.getAuthentication('Apikey');
            client.setApiKey('foo-bar-api-key');

        res.setHeader('Content-Type', 'application/json');
        res.setBody('"VGhlIHF1aWNrIGJyb3duIGZveCBqdW1wZWQgb3ZlciB0aGUgbGF6eSBkb2cu"');
        expectedResponse = EncodingUtil.base64Decode('VGhlIHF1aWNrIGJyb3duIGZveCBqdW1wZWQgb3ZlciB0aGUgbGF6eSBkb2cu');
        response = (Blob) api.editRotate(params);
        System.assertEquals(expectedResponse, response);
    }
}
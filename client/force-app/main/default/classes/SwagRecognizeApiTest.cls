@isTest
private class SwagRecognizeApiTest {
    /**
     * Describe an image in natural language
     *
     * Generate an English language text description of the image as a sentence.
     */
    @isTest
    private static void recognizeDescribeTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new SwaggerResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'imageFile' => Blob.valueOf('Sample text file\nContents')
        };

        SwagClient client;
        SwagRecognizeApi api;
        SwagImageDescriptionResponse response;
        SwagImageDescriptionResponse expectedResponse;

        client = new SwagClient();
        api = new SwagRecognizeApi(client);
        ((Swagger.ApiKeyAuth) client.getAuthentication('Apikey');
            client.setApiKey('foo-bar-api-key');

        res.setHeader('Content-Type', 'application/json');
        res.setBody('{\r\n  "RunnerUpOutcome" : {\r\n    "Description" : "Description",\r\n    "ConfidenceScore" : 0.8008281904610115\r\n  },\r\n  "Highconfidence" : true,\r\n  "BestOutcome" : {\r\n    "Description" : "Description",\r\n    "ConfidenceScore" : 0.8008281904610115\r\n  },\r\n  "Successful" : true\r\n}');
        expectedResponse = SwagImageDescriptionResponse.getExample();
        response = (SwagImageDescriptionResponse) api.recognizeDescribe(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Detect and unskew a photo of a document
     *
     * Detect and unskew a photo of a document (e.g. taken on a cell phone) into a perfectly square image.  Great for document scanning applications; once unskewed, this image is perfect for converting to PDF using the Convert API or optical character recognition using the OCR API.
     */
    @isTest
    private static void recognizeDetectAndUnskewDocumentTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new SwaggerResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'imageFile' => Blob.valueOf('Sample text file\nContents'),
            'postProcessingEffect' => 'postProcessingEffect_example'
        };

        SwagClient client;
        SwagRecognizeApi api;
        Blob response;
        Blob expectedResponse;

        client = new SwagClient();
        api = new SwagRecognizeApi(client);
        ((Swagger.ApiKeyAuth) client.getAuthentication('Apikey');
            client.setApiKey('foo-bar-api-key');

        res.setHeader('Content-Type', 'application/json');
        res.setBody('"VGhlIHF1aWNrIGJyb3duIGZveCBqdW1wZWQgb3ZlciB0aGUgbGF6eSBkb2cu"');
        expectedResponse = EncodingUtil.base64Decode('VGhlIHF1aWNrIGJyb3duIGZveCBqdW1wZWQgb3ZlciB0aGUgbGF6eSBkb2cu');
        response = (Blob) api.recognizeDetectAndUnskewDocument(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Detect objects including types and locations in an image
     *
     * Identify the position, size and description of objects in an image, along with a recognition confidence level.  Detects both human people and objects in an image.
     */
    @isTest
    private static void recognizeDetectObjectsTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new SwaggerResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'imageFile' => Blob.valueOf('Sample text file\nContents')
        };

        SwagClient client;
        SwagRecognizeApi api;
        SwagObjectDetectionResult response;
        SwagObjectDetectionResult expectedResponse;

        client = new SwagClient();
        api = new SwagRecognizeApi(client);
        ((Swagger.ApiKeyAuth) client.getAuthentication('Apikey');
            client.setApiKey('foo-bar-api-key');

        res.setHeader('Content-Type', 'application/json');
        res.setBody('{\r\n  "Objects" : [ {\r\n    "Score" : 1.4658129805029452,\r\n    "ObjectClassName" : "ObjectClassName",\r\n    "X" : 5,\r\n    "Y" : 5,\r\n    "Height" : 0,\r\n    "Width" : 6\r\n  }, {\r\n    "Score" : 1.4658129805029452,\r\n    "ObjectClassName" : "ObjectClassName",\r\n    "X" : 5,\r\n    "Y" : 5,\r\n    "Height" : 0,\r\n    "Width" : 6\r\n  } ],\r\n  "ObjectCount" : 2,\r\n  "Successful" : true\r\n}');
        expectedResponse = SwagObjectDetectionResult.getExample();
        response = (SwagObjectDetectionResult) api.recognizeDetectObjects(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Detect people including locations in an image
     *
     * Identify the position, and size of human people in an image, along with a recognition confidence level.  People in the image do NOT need to be facing the camera; they can be facing away, edge-on, etc.
     */
    @isTest
    private static void recognizeDetectPeopleTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new SwaggerResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'imageFile' => Blob.valueOf('Sample text file\nContents')
        };

        SwagClient client;
        SwagRecognizeApi api;
        SwagObjectDetectionResult response;
        SwagObjectDetectionResult expectedResponse;

        client = new SwagClient();
        api = new SwagRecognizeApi(client);
        ((Swagger.ApiKeyAuth) client.getAuthentication('Apikey');
            client.setApiKey('foo-bar-api-key');

        res.setHeader('Content-Type', 'application/json');
        res.setBody('{\r\n  "Objects" : [ {\r\n    "Score" : 1.4658129805029452,\r\n    "ObjectClassName" : "ObjectClassName",\r\n    "X" : 5,\r\n    "Y" : 5,\r\n    "Height" : 0,\r\n    "Width" : 6\r\n  }, {\r\n    "Score" : 1.4658129805029452,\r\n    "ObjectClassName" : "ObjectClassName",\r\n    "X" : 5,\r\n    "Y" : 5,\r\n    "Height" : 0,\r\n    "Width" : 6\r\n  } ],\r\n  "ObjectCount" : 2,\r\n  "Successful" : true\r\n}');
        expectedResponse = SwagObjectDetectionResult.getExample();
        response = (SwagObjectDetectionResult) api.recognizeDetectPeople(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Detect fine text in a photo of a document
     *
     * Identify the position, and size of small/fine text within a photograph of a document.  Identify the location of small text in a photo - such as words and other forms of high density text.  Can be used on a scan of a document or a photograph (e.g. smartphone camera) of a document, page or receipt.  For OCR purposes - please see our Deep Learning OCR APIs.
     */
    @isTest
    private static void recognizeDetectTextFineTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new SwaggerResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'imageFile' => Blob.valueOf('Sample text file\nContents')
        };

        SwagClient client;
        SwagRecognizeApi api;
        SwagFineTextDetectionResult response;
        SwagFineTextDetectionResult expectedResponse;

        client = new SwagClient();
        api = new SwagRecognizeApi(client);
        ((Swagger.ApiKeyAuth) client.getAuthentication('Apikey');
            client.setApiKey('foo-bar-api-key');

        res.setHeader('Content-Type', 'application/json');
        res.setBody('{\r\n  "TextItems" : [ {\r\n    "TopRightY" : 5,\r\n    "Angle" : 4.145608029883936,\r\n    "BottomRightY" : 9,\r\n    "TopRightX" : 1,\r\n    "BottomRightX" : 7,\r\n    "Height" : 2,\r\n    "BottomLeftY" : 2,\r\n    "BottomLeftX" : 5,\r\n    "Width" : 3,\r\n    "TopLeftY" : 6,\r\n    "TopLeftX" : 0\r\n  }, {\r\n    "TopRightY" : 5,\r\n    "Angle" : 4.145608029883936,\r\n    "BottomRightY" : 9,\r\n    "TopRightX" : 1,\r\n    "BottomRightX" : 7,\r\n    "Height" : 2,\r\n    "BottomLeftY" : 2,\r\n    "BottomLeftX" : 5,\r\n    "Width" : 3,\r\n    "TopLeftY" : 6,\r\n    "TopLeftX" : 0\r\n  } ],\r\n  "Successful" : true,\r\n  "TextItemsCount" : 7\r\n}');
        expectedResponse = SwagFineTextDetectionResult.getExample();
        response = (SwagFineTextDetectionResult) api.recognizeDetectTextFine(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Detect large text in a photo
     *
     * Identify the position, and size of large text within a photograph.  Identify the location of large text in a photo - such as signs, titles, etc. and other forms of large, low-density text.  Not suitable for high-density text (e.g. scans of documents, receipts, etc.) for OCR purposes - for OCR, please see our Deep Learning OCR APIs.
     */
    @isTest
    private static void recognizeDetectTextLargeTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new SwaggerResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'imageFile' => Blob.valueOf('Sample text file\nContents')
        };

        SwagClient client;
        SwagRecognizeApi api;
        SwagTextDetectionResult response;
        SwagTextDetectionResult expectedResponse;

        client = new SwagClient();
        api = new SwagRecognizeApi(client);
        ((Swagger.ApiKeyAuth) client.getAuthentication('Apikey');
            client.setApiKey('foo-bar-api-key');

        res.setHeader('Content-Type', 'application/json');
        res.setBody('{\r\n  "TextItems" : [ {\r\n    "TopY" : 6,\r\n    "Height" : 5,\r\n    "Width" : 1,\r\n    "LeftX" : 0\r\n  }, {\r\n    "TopY" : 6,\r\n    "Height" : 5,\r\n    "Width" : 1,\r\n    "LeftX" : 0\r\n  } ],\r\n  "Successful" : true,\r\n  "TextItemsCount" : 5\r\n}');
        expectedResponse = SwagTextDetectionResult.getExample();
        response = (SwagTextDetectionResult) api.recognizeDetectTextLarge(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Detect vehicle license plates in an image
     *
     * Identify the position, and size, and content of vehicle license plates in an image.  License plates should be within 15-20 degrees on-axis to the camera.
     */
    @isTest
    private static void recognizeDetectVehicleLicensePlatesTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new SwaggerResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'imageFile' => Blob.valueOf('Sample text file\nContents')
        };

        SwagClient client;
        SwagRecognizeApi api;
        SwagVehicleLicensePlateDetectionResu response;
        SwagVehicleLicensePlateDetectionResu expectedResponse;

        client = new SwagClient();
        api = new SwagRecognizeApi(client);
        ((Swagger.ApiKeyAuth) client.getAuthentication('Apikey');
            client.setApiKey('foo-bar-api-key');

        res.setHeader('Content-Type', 'application/json');
        res.setBody('{\r\n  "DetectedLicensePlates" : [ {\r\n    "LocationY" : 6,\r\n    "LocationX" : 0,\r\n    "Height" : 5,\r\n    "LicensePlateText_RunnerUp" : "LicensePlateText_RunnerUp",\r\n    "LicensePlateRecognitionConfidenceLevel" : 5.637376656633329,\r\n    "Width" : 1,\r\n    "LicensePlateText_BestMatch" : "LicensePlateText_BestMatch"\r\n  }, {\r\n    "LocationY" : 6,\r\n    "LocationX" : 0,\r\n    "Height" : 5,\r\n    "LicensePlateText_RunnerUp" : "LicensePlateText_RunnerUp",\r\n    "LicensePlateRecognitionConfidenceLevel" : 5.637376656633329,\r\n    "Width" : 1,\r\n    "LicensePlateText_BestMatch" : "LicensePlateText_BestMatch"\r\n  } ],\r\n  "DetectedLicensePlateCount" : 2,\r\n  "Successful" : true\r\n}');
        expectedResponse = SwagVehicleLicensePlateDetectionResu.getExample();
        response = (SwagVehicleLicensePlateDetectionResu) api.recognizeDetectVehicleLicensePlates(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Find the location of a symbol in an image
     *
     * Determine if an image contains a symbol, and if so, the location of that symbol in the image.
     */
    @isTest
    private static void recognizeFindSymbolTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new SwaggerResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'inputImage' => Blob.valueOf('Sample text file\nContents'),
            'targetImage' => Blob.valueOf('Sample text file\nContents')
        };

        SwagClient client;
        SwagRecognizeApi api;
        SwagFindSymbolResult response;
        SwagFindSymbolResult expectedResponse;

        client = new SwagClient();
        api = new SwagRecognizeApi(client);
        ((Swagger.ApiKeyAuth) client.getAuthentication('Apikey');
            client.setApiKey('foo-bar-api-key');

        res.setHeader('Content-Type', 'application/json');
        res.setBody('{\r\n  "MatchScore" : 0.8008281904610115,\r\n  "XLeft" : 6,\r\n  "YTop" : 1,\r\n  "Height" : 5,\r\n  "Successful" : true,\r\n  "Width" : 5\r\n}');
        expectedResponse = SwagFindSymbolResult.getExample();
        response = (SwagFindSymbolResult) api.recognizeFindSymbol(params);
        System.assertEquals(expectedResponse, response);
    }
}
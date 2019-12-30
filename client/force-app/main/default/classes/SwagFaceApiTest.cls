@isTest
private class SwagFaceApiTest {
    /**
     * Compare and match faces
     *
     * Find the faces in an input image, and compare against a reference image to determine if there is a match against the face in the reference image.  The reference image (second parameter) should contain exactly one face.
     */
    @isTest
    private static void faceCompareTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new SwaggerResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'inputImage' => Blob.valueOf('Sample text file\nContents'),
            'matchFace' => Blob.valueOf('Sample text file\nContents')
        };

        SwagClient client;
        SwagFaceApi api;
        SwagFaceCompareResponse response;
        SwagFaceCompareResponse expectedResponse;

        client = new SwagClient();
        api = new SwagFaceApi(client);
        ((Swagger.ApiKeyAuth) client.getAuthentication('Apikey');
            client.setApiKey('foo-bar-api-key');

        res.setHeader('Content-Type', 'application/json');
        res.setBody('{\r\n  "ErrorDetails" : "ErrorDetails",\r\n  "Successful" : true,\r\n  "FaceCount" : 2,\r\n  "Faces" : [ {\r\n    "BottomY" : 5,\r\n    "TopY" : 6,\r\n    "MatchScore" : 5.637376656633329,\r\n    "RightX" : 1,\r\n    "HighConfidenceMatch" : true,\r\n    "LeftX" : 0\r\n  }, {\r\n    "BottomY" : 5,\r\n    "TopY" : 6,\r\n    "MatchScore" : 5.637376656633329,\r\n    "RightX" : 1,\r\n    "HighConfidenceMatch" : true,\r\n    "LeftX" : 0\r\n  } ]\r\n}');
        expectedResponse = SwagFaceCompareResponse.getExample();
        response = (SwagFaceCompareResponse) api.faceCompare(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Crop image to face with square crop
     *
     * Crop an image to the face (rectangular crop).  If there is more than one face present, choose the first one.
     */
    @isTest
    private static void faceCropFirstTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new SwaggerResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'imageFile' => Blob.valueOf('Sample text file\nContents')
        };

        SwagClient client;
        SwagFaceApi api;
        Blob response;
        Blob expectedResponse;

        client = new SwagClient();
        api = new SwagFaceApi(client);
        ((Swagger.ApiKeyAuth) client.getAuthentication('Apikey');
            client.setApiKey('foo-bar-api-key');

        res.setHeader('Content-Type', 'application/json');
        res.setBody('"VGhlIHF1aWNrIGJyb3duIGZveCBqdW1wZWQgb3ZlciB0aGUgbGF6eSBkb2cu"');
        expectedResponse = EncodingUtil.base64Decode('VGhlIHF1aWNrIGJyb3duIGZveCBqdW1wZWQgb3ZlciB0aGUgbGF6eSBkb2cu');
        response = (Blob) api.faceCropFirst(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Crop image to face with round crop
     *
     * Crop an image to the face (circular/round crop).  If there is more than one face present, choose the first one.
     */
    @isTest
    private static void faceCropFirstRoundTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new SwaggerResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'imageFile' => Blob.valueOf('Sample text file\nContents')
        };

        SwagClient client;
        SwagFaceApi api;
        Blob response;
        Blob expectedResponse;

        client = new SwagClient();
        api = new SwagFaceApi(client);
        ((Swagger.ApiKeyAuth) client.getAuthentication('Apikey');
            client.setApiKey('foo-bar-api-key');

        res.setHeader('Content-Type', 'application/json');
        res.setBody('"VGhlIHF1aWNrIGJyb3duIGZveCBqdW1wZWQgb3ZlciB0aGUgbGF6eSBkb2cu"');
        expectedResponse = EncodingUtil.base64Decode('VGhlIHF1aWNrIGJyb3duIGZveCBqdW1wZWQgb3ZlciB0aGUgbGF6eSBkb2cu');
        response = (Blob) api.faceCropFirstRound(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Detect the age of people in an image
     *
     * Identify the age, position, and size of human faces in an image, along with a recognition confidence level.  People in the image do NOT need to be facing the camera; they can be facing away, edge-on, etc.
     */
    @isTest
    private static void faceDetectAgeTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new SwaggerResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'imageFile' => Blob.valueOf('Sample text file\nContents')
        };

        SwagClient client;
        SwagFaceApi api;
        SwagAgeDetectionResult response;
        SwagAgeDetectionResult expectedResponse;

        client = new SwagClient();
        api = new SwagFaceApi(client);
        ((Swagger.ApiKeyAuth) client.getAuthentication('Apikey');
            client.setApiKey('foo-bar-api-key');

        res.setHeader('Content-Type', 'application/json');
        res.setBody('{\r\n  "PeopleIdentified" : 1,\r\n  "PeopleWithAge" : [ {\r\n    "AgeClass" : "AgeClass",\r\n    "FaceLocation" : {\r\n      "BottomY" : 5,\r\n      "TopY" : 6,\r\n      "RightX" : 1,\r\n      "LeftX" : 0\r\n    },\r\n    "Age" : 6.027456183070403,\r\n    "AgeClassificationConfidence" : 0.8008281904610115\r\n  }, {\r\n    "AgeClass" : "AgeClass",\r\n    "FaceLocation" : {\r\n      "BottomY" : 5,\r\n      "TopY" : 6,\r\n      "RightX" : 1,\r\n      "LeftX" : 0\r\n    },\r\n    "Age" : 6.027456183070403,\r\n    "AgeClassificationConfidence" : 0.8008281904610115\r\n  } ],\r\n  "Successful" : true\r\n}');
        expectedResponse = SwagAgeDetectionResult.getExample();
        response = (SwagAgeDetectionResult) api.faceDetectAge(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Detect the gender of people in an image
     *
     * Identify the gender, position, and size of human faces in an image, along with a recognition confidence level.  People in the image should be facing the camera.
     */
    @isTest
    private static void faceDetectGenderTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new SwaggerResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'imageFile' => Blob.valueOf('Sample text file\nContents')
        };

        SwagClient client;
        SwagFaceApi api;
        SwagGenderDetectionResult response;
        SwagGenderDetectionResult expectedResponse;

        client = new SwagClient();
        api = new SwagFaceApi(client);
        ((Swagger.ApiKeyAuth) client.getAuthentication('Apikey');
            client.setApiKey('foo-bar-api-key');

        res.setHeader('Content-Type', 'application/json');
        res.setBody('{\r\n  "PeopleIdentified" : 6,\r\n  "Successful" : true,\r\n  "PersonWithGender" : [ {\r\n    "GenderClassificationConfidence" : 0.8008281904610115,\r\n    "GenderClass" : "GenderClass",\r\n    "FaceLocation" : {\r\n      "BottomY" : 5,\r\n      "TopY" : 6,\r\n      "RightX" : 1,\r\n      "LeftX" : 0\r\n    }\r\n  }, {\r\n    "GenderClassificationConfidence" : 0.8008281904610115,\r\n    "GenderClass" : "GenderClass",\r\n    "FaceLocation" : {\r\n      "BottomY" : 5,\r\n      "TopY" : 6,\r\n      "RightX" : 1,\r\n      "LeftX" : 0\r\n    }\r\n  } ]\r\n}');
        expectedResponse = SwagGenderDetectionResult.getExample();
        response = (SwagGenderDetectionResult) api.faceDetectGender(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Detect and find faces in an image
     *
     * Locate the positions of all faces in an image
     */
    @isTest
    private static void faceLocateTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new SwaggerResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'imageFile' => Blob.valueOf('Sample text file\nContents')
        };

        SwagClient client;
        SwagFaceApi api;
        SwagFaceLocateResponse response;
        SwagFaceLocateResponse expectedResponse;

        client = new SwagClient();
        api = new SwagFaceApi(client);
        ((Swagger.ApiKeyAuth) client.getAuthentication('Apikey');
            client.setApiKey('foo-bar-api-key');

        res.setHeader('Content-Type', 'application/json');
        res.setBody('{\r\n  "ErrorDetails" : "ErrorDetails",\r\n  "Successful" : true,\r\n  "FaceCount" : 5,\r\n  "Faces" : [ {\r\n    "BottomY" : 5,\r\n    "TopY" : 6,\r\n    "RightX" : 1,\r\n    "LeftX" : 0\r\n  }, {\r\n    "BottomY" : 5,\r\n    "TopY" : 6,\r\n    "RightX" : 1,\r\n    "LeftX" : 0\r\n  } ]\r\n}');
        expectedResponse = SwagFaceLocateResponse.getExample();
        response = (SwagFaceLocateResponse) api.faceLocate(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Detect and find faces and landmarks eyes and nose and mouth in image
     *
     * Locate the positions of all faces in an image, along with the eyes, eye brows, nose and mouth components of each
     */
    @isTest
    private static void faceLocateWithLandmarksTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new SwaggerResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'imageFile' => Blob.valueOf('Sample text file\nContents')
        };

        SwagClient client;
        SwagFaceApi api;
        SwagFaceLocateWithLandmarksResponse response;
        SwagFaceLocateWithLandmarksResponse expectedResponse;

        client = new SwagClient();
        api = new SwagFaceApi(client);
        ((Swagger.ApiKeyAuth) client.getAuthentication('Apikey');
            client.setApiKey('foo-bar-api-key');

        res.setHeader('Content-Type', 'application/json');
        res.setBody('{\r\n  "ErrorDetails" : "ErrorDetails",\r\n  "Successful" : true,\r\n  "FaceCount" : 7,\r\n  "Faces" : [ {\r\n    "TopY" : 6,\r\n    "NoseBottom" : [ {\r\n      "X" : 5,\r\n      "Y" : 2\r\n    }, {\r\n      "X" : 5,\r\n      "Y" : 2\r\n    } ],\r\n    "LeftEye" : [ {\r\n      "X" : 5,\r\n      "Y" : 2\r\n    }, {\r\n      "X" : 5,\r\n      "Y" : 2\r\n    } ],\r\n    "LeftX" : 0,\r\n    "BottomAndSidesOfFace" : [ {\r\n      "X" : 5,\r\n      "Y" : 2\r\n    }, {\r\n      "X" : 5,\r\n      "Y" : 2\r\n    } ],\r\n    "BottomY" : 5,\r\n    "RightEyebrow" : [ {\r\n      "X" : 5,\r\n      "Y" : 2\r\n    }, {\r\n      "X" : 5,\r\n      "Y" : 2\r\n    } ],\r\n    "LeftEyebrow" : [ {\r\n      "X" : 5,\r\n      "Y" : 2\r\n    }, {\r\n      "X" : 5,\r\n      "Y" : 2\r\n    } ],\r\n    "RightEye" : [ {\r\n      "X" : 5,\r\n      "Y" : 2\r\n    }, {\r\n      "X" : 5,\r\n      "Y" : 2\r\n    } ],\r\n    "LipsInnerOutline" : [ {\r\n      "X" : 5,\r\n      "Y" : 2\r\n    }, {\r\n      "X" : 5,\r\n      "Y" : 2\r\n    } ],\r\n    "RightX" : 1,\r\n    "LipsOuterOutline" : [ {\r\n      "X" : 5,\r\n      "Y" : 2\r\n    }, {\r\n      "X" : 5,\r\n      "Y" : 2\r\n    } ],\r\n    "NoseBridge" : [ {\r\n      "X" : 5,\r\n      "Y" : 2\r\n    }, {\r\n      "X" : 5,\r\n      "Y" : 2\r\n    } ]\r\n  }, {\r\n    "TopY" : 6,\r\n    "NoseBottom" : [ {\r\n      "X" : 5,\r\n      "Y" : 2\r\n    }, {\r\n      "X" : 5,\r\n      "Y" : 2\r\n    } ],\r\n    "LeftEye" : [ {\r\n      "X" : 5,\r\n      "Y" : 2\r\n    }, {\r\n      "X" : 5,\r\n      "Y" : 2\r\n    } ],\r\n    "LeftX" : 0,\r\n    "BottomAndSidesOfFace" : [ {\r\n      "X" : 5,\r\n      "Y" : 2\r\n    }, {\r\n      "X" : 5,\r\n      "Y" : 2\r\n    } ],\r\n    "BottomY" : 5,\r\n    "RightEyebrow" : [ {\r\n      "X" : 5,\r\n      "Y" : 2\r\n    }, {\r\n      "X" : 5,\r\n      "Y" : 2\r\n    } ],\r\n    "LeftEyebrow" : [ {\r\n      "X" : 5,\r\n      "Y" : 2\r\n    }, {\r\n      "X" : 5,\r\n      "Y" : 2\r\n    } ],\r\n    "RightEye" : [ {\r\n      "X" : 5,\r\n      "Y" : 2\r\n    }, {\r\n      "X" : 5,\r\n      "Y" : 2\r\n    } ],\r\n    "LipsInnerOutline" : [ {\r\n      "X" : 5,\r\n      "Y" : 2\r\n    }, {\r\n      "X" : 5,\r\n      "Y" : 2\r\n    } ],\r\n    "RightX" : 1,\r\n    "LipsOuterOutline" : [ {\r\n      "X" : 5,\r\n      "Y" : 2\r\n    }, {\r\n      "X" : 5,\r\n      "Y" : 2\r\n    } ],\r\n    "NoseBridge" : [ {\r\n      "X" : 5,\r\n      "Y" : 2\r\n    }, {\r\n      "X" : 5,\r\n      "Y" : 2\r\n    } ]\r\n  } ]\r\n}');
        expectedResponse = SwagFaceLocateWithLandmarksResponse.getExample();
        response = (SwagFaceLocateWithLandmarksResponse) api.faceLocateWithLandmarks(params);
        System.assertEquals(expectedResponse, response);
    }
}
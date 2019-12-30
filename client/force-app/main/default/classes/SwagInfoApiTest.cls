@isTest
private class SwagInfoApiTest {
    /**
     * Returns the dominant colors of the image
     *
     * Uses advanced image processing to extract the top 5 dominant colors in the image, returned in the order of dominance with the most-dominant color first.  These are the primary perceptual colors used in the image as perceived by a viewer.
     */
    @isTest
    private static void infoGetDominantColorTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new SwaggerResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'imageFile' => Blob.valueOf('Sample text file\nContents')
        };

        SwagClient client;
        SwagInfoApi api;
        SwagDominantColorResult response;
        SwagDominantColorResult expectedResponse;

        client = new SwagClient();
        api = new SwagInfoApi(client);
        ((Swagger.ApiKeyAuth) client.getAuthentication('Apikey');
            client.setApiKey('foo-bar-api-key');

        res.setHeader('Content-Type', 'application/json');
        res.setBody('{\r\n  "Successful" : true,\r\n  "DominantColors" : [ {\r\n    "R" : 0,\r\n    "B" : 1,\r\n    "G" : 6\r\n  }, {\r\n    "R" : 0,\r\n    "B" : 1,\r\n    "G" : 6\r\n  } ]\r\n}');
        expectedResponse = SwagDominantColorResult.getExample();
        response = (SwagDominantColorResult) api.infoGetDominantColor(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Returns the image metadata including EXIF and resolution
     *
     * Returns the metadata information on the image, including file type, EXIF (if available), and resolution.
     */
    @isTest
    private static void infoGetMetadataTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new SwaggerResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'imageFile' => Blob.valueOf('Sample text file\nContents')
        };

        SwagClient client;
        SwagInfoApi api;
        SwagImageMetadata response;
        SwagImageMetadata expectedResponse;

        client = new SwagClient();
        api = new SwagInfoApi(client);
        ((Swagger.ApiKeyAuth) client.getAuthentication('Apikey');
            client.setApiKey('foo-bar-api-key');

        res.setHeader('Content-Type', 'application/json');
        res.setBody('{\r\n  "IsValidImage" : true,\r\n  "ExifValues" : [ {\r\n    "DataValue" : "DataValue",\r\n    "DataType" : "DataType",\r\n    "Tag" : "Tag"\r\n  }, {\r\n    "DataValue" : "DataValue",\r\n    "DataType" : "DataType",\r\n    "Tag" : "Tag"\r\n  } ],\r\n  "ColorSpace" : "ColorSpace",\r\n  "HasTransparency" : true,\r\n  "ExifProfileName" : "ExifProfileName",\r\n  "Height" : 6,\r\n  "FileFormat" : "FileFormat",\r\n  "Successful" : true,\r\n  "Width" : 0,\r\n  "BitDepth" : 1\r\n}');
        expectedResponse = SwagImageMetadata.getExample();
        response = (SwagImageMetadata) api.infoGetMetadata(params);
        System.assertEquals(expectedResponse, response);
    }
}
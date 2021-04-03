# SwagRecognizeApi

All URIs are relative to *https://api.cloudmersive.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**recognizeDescribe**](SwagRecognizeApi.md#recognizeDescribe) | **POST** /image/recognize/describe | Describe an image in natural language
[**recognizeDetectAndUnskewDocument**](SwagRecognizeApi.md#recognizeDetectAndUnskewDocument) | **POST** /image/recognize/detect-document/unskew | Detect and unskew a photo of a document
[**recognizeDetectObjects**](SwagRecognizeApi.md#recognizeDetectObjects) | **POST** /image/recognize/detect-objects | Detect objects including types and locations in an image
[**recognizeDetectPeople**](SwagRecognizeApi.md#recognizeDetectPeople) | **POST** /image/recognize/detect-people | Detect people including locations in an image
[**recognizeDetectTextFine**](SwagRecognizeApi.md#recognizeDetectTextFine) | **POST** /image/recognize/detect-text/fine | Detect fine text in a photo of a document
[**recognizeDetectTextLarge**](SwagRecognizeApi.md#recognizeDetectTextLarge) | **POST** /image/recognize/detect-text/large | Detect large text in a photo
[**recognizeDetectVehicleLicensePlates**](SwagRecognizeApi.md#recognizeDetectVehicleLicensePlates) | **POST** /image/recognize/detect-vehicle-license-plates | Detect vehicle license plates in an image
[**recognizeFindSymbol**](SwagRecognizeApi.md#recognizeFindSymbol) | **POST** /image/recognize/find/symbol | Find the location of a symbol in an image
[**recognizeSimilarityCompare**](SwagRecognizeApi.md#recognizeSimilarityCompare) | **POST** /image/recognize/similarity/compare | Compare two images for similarity
[**recognizeSimilarityHash**](SwagRecognizeApi.md#recognizeSimilarityHash) | **POST** /image/recognize/similarity/hash | Generate a perceptual image hash
[**recognizeSimilarityHashDistance**](SwagRecognizeApi.md#recognizeSimilarityHashDistance) | **POST** /image/recognize/similarity/hash/distance | Calculates the similarity between two perceptual image hashes


<a name="recognizeDescribe"></a>
# **recognizeDescribe**
> SwagImageDescriptionResponse recognizeDescribe(imageFile)

Describe an image in natural language

Generate an English language text description of the image as a sentence.

### Example
```java
SwagRecognizeApi api = new SwagRecognizeApi();
SwagClient client = api.getClient();

// Configure API key authorization: Apikey
ApiKeyAuth Apikey = (ApiKeyAuth) client.getAuthentication('Apikey');
Apikey.setApiKey('YOUR API KEY');

Map<String, Object> params = new Map<String, Object>{
    'imageFile' => Blob.valueOf('Sample text file\nContents')
};

try {
    // cross your fingers
    SwagImageDescriptionResponse result = api.recognizeDescribe(params);
    System.debug(result);
} catch (Swagger.ApiException e) {
    // ...handle your exceptions
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **imageFile** | **Blob**| Image file to perform the operation on.  Common file formats such as PNG, JPEG are supported. |

### Return type

[**SwagImageDescriptionResponse**](SwagImageDescriptionResponse.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

<a name="recognizeDetectAndUnskewDocument"></a>
# **recognizeDetectAndUnskewDocument**
> Blob recognizeDetectAndUnskewDocument(imageFile, postProcessingEffect)

Detect and unskew a photo of a document

Detect and unskew a photo of a document (e.g. taken on a cell phone) into a perfectly square image.  Great for document scanning applications; once unskewed, this image is perfect for converting to PDF using the Convert API or optical character recognition using the OCR API.

### Example
```java
SwagRecognizeApi api = new SwagRecognizeApi();
SwagClient client = api.getClient();

// Configure API key authorization: Apikey
ApiKeyAuth Apikey = (ApiKeyAuth) client.getAuthentication('Apikey');
Apikey.setApiKey('YOUR API KEY');

Map<String, Object> params = new Map<String, Object>{
    'imageFile' => Blob.valueOf('Sample text file\nContents'),
    'postProcessingEffect' => 'postProcessingEffect_example'
};

try {
    // cross your fingers
    Blob result = api.recognizeDetectAndUnskewDocument(params);
    System.debug(result);
} catch (Swagger.ApiException e) {
    // ...handle your exceptions
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **imageFile** | **Blob**| Image file to perform the operation on.  Common file formats such as PNG, JPEG are supported. |
 **postProcessingEffect** | **String**| Optional, post-processing effects to apply to the email, default is None.  Possible values are None and BlackAndWhite (force the image into a black and white view to aid in OCR operations). | [optional]

### Return type

**Blob**

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

<a name="recognizeDetectObjects"></a>
# **recognizeDetectObjects**
> SwagObjectDetectionResult recognizeDetectObjects(imageFile)

Detect objects including types and locations in an image

Identify the position, size and description of objects in an image, along with a recognition confidence level.  Detects both human people and objects in an image.

### Example
```java
SwagRecognizeApi api = new SwagRecognizeApi();
SwagClient client = api.getClient();

// Configure API key authorization: Apikey
ApiKeyAuth Apikey = (ApiKeyAuth) client.getAuthentication('Apikey');
Apikey.setApiKey('YOUR API KEY');

Map<String, Object> params = new Map<String, Object>{
    'imageFile' => Blob.valueOf('Sample text file\nContents')
};

try {
    // cross your fingers
    SwagObjectDetectionResult result = api.recognizeDetectObjects(params);
    System.debug(result);
} catch (Swagger.ApiException e) {
    // ...handle your exceptions
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **imageFile** | **Blob**| Image file to perform the operation on.  Common file formats such as PNG, JPEG are supported. |

### Return type

[**SwagObjectDetectionResult**](SwagObjectDetectionResult.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

<a name="recognizeDetectPeople"></a>
# **recognizeDetectPeople**
> SwagObjectDetectionResult recognizeDetectPeople(imageFile)

Detect people including locations in an image

Identify the position, and size of human people in an image, along with a recognition confidence level.  People in the image do NOT need to be facing the camera; they can be facing away, edge-on, etc.

### Example
```java
SwagRecognizeApi api = new SwagRecognizeApi();
SwagClient client = api.getClient();

// Configure API key authorization: Apikey
ApiKeyAuth Apikey = (ApiKeyAuth) client.getAuthentication('Apikey');
Apikey.setApiKey('YOUR API KEY');

Map<String, Object> params = new Map<String, Object>{
    'imageFile' => Blob.valueOf('Sample text file\nContents')
};

try {
    // cross your fingers
    SwagObjectDetectionResult result = api.recognizeDetectPeople(params);
    System.debug(result);
} catch (Swagger.ApiException e) {
    // ...handle your exceptions
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **imageFile** | **Blob**| Image file to perform the operation on.  Common file formats such as PNG, JPEG are supported. |

### Return type

[**SwagObjectDetectionResult**](SwagObjectDetectionResult.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

<a name="recognizeDetectTextFine"></a>
# **recognizeDetectTextFine**
> SwagFineTextDetectionResult recognizeDetectTextFine(imageFile)

Detect fine text in a photo of a document

Identify the position, and size of small/fine text within a photograph of a document.  Identify the location of small text in a photo - such as words and other forms of high density text.  Can be used on a scan of a document or a photograph (e.g. smartphone camera) of a document, page or receipt.  For OCR purposes - please see our Deep Learning OCR APIs.

### Example
```java
SwagRecognizeApi api = new SwagRecognizeApi();
SwagClient client = api.getClient();

// Configure API key authorization: Apikey
ApiKeyAuth Apikey = (ApiKeyAuth) client.getAuthentication('Apikey');
Apikey.setApiKey('YOUR API KEY');

Map<String, Object> params = new Map<String, Object>{
    'imageFile' => Blob.valueOf('Sample text file\nContents')
};

try {
    // cross your fingers
    SwagFineTextDetectionResult result = api.recognizeDetectTextFine(params);
    System.debug(result);
} catch (Swagger.ApiException e) {
    // ...handle your exceptions
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **imageFile** | **Blob**| Image file to perform the operation on.  Common file formats such as PNG, JPEG are supported. |

### Return type

[**SwagFineTextDetectionResult**](SwagFineTextDetectionResult.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

<a name="recognizeDetectTextLarge"></a>
# **recognizeDetectTextLarge**
> SwagTextDetectionResult recognizeDetectTextLarge(imageFile)

Detect large text in a photo

Identify the position, and size of large text within a photograph.  Identify the location of large text in a photo - such as signs, titles, etc. and other forms of large, low-density text.  Not suitable for high-density text (e.g. scans of documents, receipts, etc.) for OCR purposes - for OCR, please see our Deep Learning OCR APIs.

### Example
```java
SwagRecognizeApi api = new SwagRecognizeApi();
SwagClient client = api.getClient();

// Configure API key authorization: Apikey
ApiKeyAuth Apikey = (ApiKeyAuth) client.getAuthentication('Apikey');
Apikey.setApiKey('YOUR API KEY');

Map<String, Object> params = new Map<String, Object>{
    'imageFile' => Blob.valueOf('Sample text file\nContents')
};

try {
    // cross your fingers
    SwagTextDetectionResult result = api.recognizeDetectTextLarge(params);
    System.debug(result);
} catch (Swagger.ApiException e) {
    // ...handle your exceptions
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **imageFile** | **Blob**| Image file to perform the operation on.  Common file formats such as PNG, JPEG are supported. |

### Return type

[**SwagTextDetectionResult**](SwagTextDetectionResult.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

<a name="recognizeDetectVehicleLicensePlates"></a>
# **recognizeDetectVehicleLicensePlates**
> SwagVehicleLicensePlateDetectionResu recognizeDetectVehicleLicensePlates(imageFile)

Detect vehicle license plates in an image

Identify the position, and size, and content of vehicle license plates in an image.  License plates should be within 15-20 degrees on-axis to the camera.  Supported image formats are JPG, PNG and BMP.

### Example
```java
SwagRecognizeApi api = new SwagRecognizeApi();
SwagClient client = api.getClient();

// Configure API key authorization: Apikey
ApiKeyAuth Apikey = (ApiKeyAuth) client.getAuthentication('Apikey');
Apikey.setApiKey('YOUR API KEY');

Map<String, Object> params = new Map<String, Object>{
    'imageFile' => Blob.valueOf('Sample text file\nContents')
};

try {
    // cross your fingers
    SwagVehicleLicensePlateDetectionResu result = api.recognizeDetectVehicleLicensePlates(params);
    System.debug(result);
} catch (Swagger.ApiException e) {
    // ...handle your exceptions
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **imageFile** | **Blob**| Image file to perform the operation on.  Common file formats such as PNG, JPEG are supported. |

### Return type

[**SwagVehicleLicensePlateDetectionResu**](SwagVehicleLicensePlateDetectionResu.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

<a name="recognizeFindSymbol"></a>
# **recognizeFindSymbol**
> SwagFindSymbolResult recognizeFindSymbol(inputImage, targetImage)

Find the location of a symbol in an image

Determine if an image contains a symbol, and if so, the location of that symbol in the image.

### Example
```java
SwagRecognizeApi api = new SwagRecognizeApi();
SwagClient client = api.getClient();

// Configure API key authorization: Apikey
ApiKeyAuth Apikey = (ApiKeyAuth) client.getAuthentication('Apikey');
Apikey.setApiKey('YOUR API KEY');

Map<String, Object> params = new Map<String, Object>{
    'inputImage' => Blob.valueOf('Sample text file\nContents'),
    'targetImage' => Blob.valueOf('Sample text file\nContents')
};

try {
    // cross your fingers
    SwagFindSymbolResult result = api.recognizeFindSymbol(params);
    System.debug(result);
} catch (Swagger.ApiException e) {
    // ...handle your exceptions
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inputImage** | **Blob**| Image file to search through for the target image. |
 **targetImage** | **Blob**| Image to find in the input image. |

### Return type

[**SwagFindSymbolResult**](SwagFindSymbolResult.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

<a name="recognizeSimilarityCompare"></a>
# **recognizeSimilarityCompare**
> Blob recognizeSimilarityCompare(baseImage, comparisonImage, recognitionMode)

Compare two images for similarity

Generates an image similarity score using Deep Learning between 0.0 and 1.0, values closer to 1.0 indicate greater similarity

### Example
```java
SwagRecognizeApi api = new SwagRecognizeApi();
SwagClient client = api.getClient();

// Configure API key authorization: Apikey
ApiKeyAuth Apikey = (ApiKeyAuth) client.getAuthentication('Apikey');
Apikey.setApiKey('YOUR API KEY');

Map<String, Object> params = new Map<String, Object>{
    'baseImage' => Blob.valueOf('Sample text file\nContents'),
    'comparisonImage' => Blob.valueOf('Sample text file\nContents'),
    'recognitionMode' => 'recognitionMode_example'
};

try {
    // cross your fingers
    Blob result = api.recognizeSimilarityCompare(params);
    System.debug(result);
} catch (Swagger.ApiException e) {
    // ...handle your exceptions
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **baseImage** | **Blob**| Image file to compare against.  Common file formats such as PNG, JPEG are supported. |
 **comparisonImage** | **Blob**| Image to compare to the base image. |
 **recognitionMode** | **String**| Optional, specify the recognition mode; possible values are Normal, Basic and Advanced.  Default is Normal. | [optional]

### Return type

**Blob**

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

<a name="recognizeSimilarityHash"></a>
# **recognizeSimilarityHash**
> SwagImageSimilarityHashResponse recognizeSimilarityHash(imageFile, recognitionMode)

Generate a perceptual image hash

Generates a hash value for the image; hash values that are closer together in terms of Hamming Distance are more similar.

### Example
```java
SwagRecognizeApi api = new SwagRecognizeApi();
SwagClient client = api.getClient();

// Configure API key authorization: Apikey
ApiKeyAuth Apikey = (ApiKeyAuth) client.getAuthentication('Apikey');
Apikey.setApiKey('YOUR API KEY');

Map<String, Object> params = new Map<String, Object>{
    'imageFile' => Blob.valueOf('Sample text file\nContents'),
    'recognitionMode' => 'recognitionMode_example'
};

try {
    // cross your fingers
    SwagImageSimilarityHashResponse result = api.recognizeSimilarityHash(params);
    System.debug(result);
} catch (Swagger.ApiException e) {
    // ...handle your exceptions
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **imageFile** | **Blob**| Image file to perform the operation on.  Common file formats such as PNG, JPEG are supported. |
 **recognitionMode** | **String**| Optional, specify the recognition mode; possible values are Normal, Basic and Advanced.  Default is Normal. | [optional]

### Return type

[**SwagImageSimilarityHashResponse**](SwagImageSimilarityHashResponse.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

<a name="recognizeSimilarityHashDistance"></a>
# **recognizeSimilarityHashDistance**
> SwagImageSimilarityHashDistanceRespo recognizeSimilarityHashDistance(request)

Calculates the similarity between two perceptual image hashes

Calculates the similarity between two perceptual image hashes by computing the Hamming Distance between them.

### Example
```java
SwagRecognizeApi api = new SwagRecognizeApi();
SwagClient client = api.getClient();

// Configure API key authorization: Apikey
ApiKeyAuth Apikey = (ApiKeyAuth) client.getAuthentication('Apikey');
Apikey.setApiKey('YOUR API KEY');

Map<String, Object> params = new Map<String, Object>{
    'request' => SwagImageSimilarityHashDistanceReque.getExample()
};

try {
    // cross your fingers
    SwagImageSimilarityHashDistanceRespo result = api.recognizeSimilarityHashDistance(params);
    System.debug(result);
} catch (Swagger.ApiException e) {
    // ...handle your exceptions
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**SwagImageSimilarityHashDistanceReque**](SwagImageSimilarityHashDistanceReque.md)|  |

### Return type

[**SwagImageSimilarityHashDistanceRespo**](SwagImageSimilarityHashDistanceRespo.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


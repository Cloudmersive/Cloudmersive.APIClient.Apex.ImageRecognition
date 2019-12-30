# SwagFaceApi

All URIs are relative to *https://api.cloudmersive.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**faceCompare**](SwagFaceApi.md#faceCompare) | **POST** /image/face/compare-and-match | Compare and match faces
[**faceCropFirst**](SwagFaceApi.md#faceCropFirst) | **POST** /image/face/crop/first | Crop image to face with square crop
[**faceCropFirstRound**](SwagFaceApi.md#faceCropFirstRound) | **POST** /image/face/crop/first/round | Crop image to face with round crop
[**faceDetectAge**](SwagFaceApi.md#faceDetectAge) | **POST** /image/face/detect-age | Detect the age of people in an image
[**faceDetectGender**](SwagFaceApi.md#faceDetectGender) | **POST** /image/face/detect-gender | Detect the gender of people in an image
[**faceLocate**](SwagFaceApi.md#faceLocate) | **POST** /image/face/locate | Detect and find faces in an image
[**faceLocateWithLandmarks**](SwagFaceApi.md#faceLocateWithLandmarks) | **POST** /image/face/locate-with-landmarks | Detect and find faces and landmarks eyes and nose and mouth in image


<a name="faceCompare"></a>
# **faceCompare**
> SwagFaceCompareResponse faceCompare(inputImage, matchFace)

Compare and match faces

Find the faces in an input image, and compare against a reference image to determine if there is a match against the face in the reference image.  The reference image (second parameter) should contain exactly one face.

### Example
```java
SwagFaceApi api = new SwagFaceApi();
SwagClient client = api.getClient();

// Configure API key authorization: Apikey
ApiKeyAuth Apikey = (ApiKeyAuth) client.getAuthentication('Apikey');
Apikey.setApiKey('YOUR API KEY');

Map<String, Object> params = new Map<String, Object>{
    'inputImage' => Blob.valueOf('Sample text file\nContents'),
    'matchFace' => Blob.valueOf('Sample text file\nContents')
};

try {
    // cross your fingers
    SwagFaceCompareResponse result = api.faceCompare(params);
    System.debug(result);
} catch (Swagger.ApiException e) {
    // ...handle your exceptions
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inputImage** | **Blob**| Image file to perform the operation on; this image can contain one or more faces which will be matched against face provided in the second image.  Common file formats such as PNG, JPEG are supported. |
 **matchFace** | **Blob**| Image of a single face to compare and match against. |

### Return type

[**SwagFaceCompareResponse**](SwagFaceCompareResponse.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

<a name="faceCropFirst"></a>
# **faceCropFirst**
> Blob faceCropFirst(imageFile)

Crop image to face with square crop

Crop an image to the face (rectangular crop).  If there is more than one face present, choose the first one.

### Example
```java
SwagFaceApi api = new SwagFaceApi();
SwagClient client = api.getClient();

// Configure API key authorization: Apikey
ApiKeyAuth Apikey = (ApiKeyAuth) client.getAuthentication('Apikey');
Apikey.setApiKey('YOUR API KEY');

Map<String, Object> params = new Map<String, Object>{
    'imageFile' => Blob.valueOf('Sample text file\nContents')
};

try {
    // cross your fingers
    Blob result = api.faceCropFirst(params);
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

**Blob**

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

<a name="faceCropFirstRound"></a>
# **faceCropFirstRound**
> Blob faceCropFirstRound(imageFile)

Crop image to face with round crop

Crop an image to the face (circular/round crop).  If there is more than one face present, choose the first one.

### Example
```java
SwagFaceApi api = new SwagFaceApi();
SwagClient client = api.getClient();

// Configure API key authorization: Apikey
ApiKeyAuth Apikey = (ApiKeyAuth) client.getAuthentication('Apikey');
Apikey.setApiKey('YOUR API KEY');

Map<String, Object> params = new Map<String, Object>{
    'imageFile' => Blob.valueOf('Sample text file\nContents')
};

try {
    // cross your fingers
    Blob result = api.faceCropFirstRound(params);
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

**Blob**

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

<a name="faceDetectAge"></a>
# **faceDetectAge**
> SwagAgeDetectionResult faceDetectAge(imageFile)

Detect the age of people in an image

Identify the age, position, and size of human faces in an image, along with a recognition confidence level.  People in the image do NOT need to be facing the camera; they can be facing away, edge-on, etc.

### Example
```java
SwagFaceApi api = new SwagFaceApi();
SwagClient client = api.getClient();

// Configure API key authorization: Apikey
ApiKeyAuth Apikey = (ApiKeyAuth) client.getAuthentication('Apikey');
Apikey.setApiKey('YOUR API KEY');

Map<String, Object> params = new Map<String, Object>{
    'imageFile' => Blob.valueOf('Sample text file\nContents')
};

try {
    // cross your fingers
    SwagAgeDetectionResult result = api.faceDetectAge(params);
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

[**SwagAgeDetectionResult**](SwagAgeDetectionResult.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

<a name="faceDetectGender"></a>
# **faceDetectGender**
> SwagGenderDetectionResult faceDetectGender(imageFile)

Detect the gender of people in an image

Identify the gender, position, and size of human faces in an image, along with a recognition confidence level.  People in the image should be facing the camera.

### Example
```java
SwagFaceApi api = new SwagFaceApi();
SwagClient client = api.getClient();

// Configure API key authorization: Apikey
ApiKeyAuth Apikey = (ApiKeyAuth) client.getAuthentication('Apikey');
Apikey.setApiKey('YOUR API KEY');

Map<String, Object> params = new Map<String, Object>{
    'imageFile' => Blob.valueOf('Sample text file\nContents')
};

try {
    // cross your fingers
    SwagGenderDetectionResult result = api.faceDetectGender(params);
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

[**SwagGenderDetectionResult**](SwagGenderDetectionResult.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

<a name="faceLocate"></a>
# **faceLocate**
> SwagFaceLocateResponse faceLocate(imageFile)

Detect and find faces in an image

Locate the positions of all faces in an image

### Example
```java
SwagFaceApi api = new SwagFaceApi();
SwagClient client = api.getClient();

// Configure API key authorization: Apikey
ApiKeyAuth Apikey = (ApiKeyAuth) client.getAuthentication('Apikey');
Apikey.setApiKey('YOUR API KEY');

Map<String, Object> params = new Map<String, Object>{
    'imageFile' => Blob.valueOf('Sample text file\nContents')
};

try {
    // cross your fingers
    SwagFaceLocateResponse result = api.faceLocate(params);
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

[**SwagFaceLocateResponse**](SwagFaceLocateResponse.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

<a name="faceLocateWithLandmarks"></a>
# **faceLocateWithLandmarks**
> SwagFaceLocateWithLandmarksResponse faceLocateWithLandmarks(imageFile)

Detect and find faces and landmarks eyes and nose and mouth in image

Locate the positions of all faces in an image, along with the eyes, eye brows, nose and mouth components of each

### Example
```java
SwagFaceApi api = new SwagFaceApi();
SwagClient client = api.getClient();

// Configure API key authorization: Apikey
ApiKeyAuth Apikey = (ApiKeyAuth) client.getAuthentication('Apikey');
Apikey.setApiKey('YOUR API KEY');

Map<String, Object> params = new Map<String, Object>{
    'imageFile' => Blob.valueOf('Sample text file\nContents')
};

try {
    // cross your fingers
    SwagFaceLocateWithLandmarksResponse result = api.faceLocateWithLandmarks(params);
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

[**SwagFaceLocateWithLandmarksResponse**](SwagFaceLocateWithLandmarksResponse.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json


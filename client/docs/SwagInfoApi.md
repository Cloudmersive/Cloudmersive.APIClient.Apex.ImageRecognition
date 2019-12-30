# SwagInfoApi

All URIs are relative to *https://api.cloudmersive.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**infoGetDominantColor**](SwagInfoApi.md#infoGetDominantColor) | **POST** /image/get-info/dominant-color | Returns the dominant colors of the image
[**infoGetMetadata**](SwagInfoApi.md#infoGetMetadata) | **POST** /image/get-info/metadata | Returns the image metadata including EXIF and resolution


<a name="infoGetDominantColor"></a>
# **infoGetDominantColor**
> SwagDominantColorResult infoGetDominantColor(imageFile)

Returns the dominant colors of the image

Uses advanced image processing to extract the top 5 dominant colors in the image, returned in the order of dominance with the most-dominant color first.  These are the primary perceptual colors used in the image as perceived by a viewer.

### Example
```java
SwagInfoApi api = new SwagInfoApi();
SwagClient client = api.getClient();

// Configure API key authorization: Apikey
ApiKeyAuth Apikey = (ApiKeyAuth) client.getAuthentication('Apikey');
Apikey.setApiKey('YOUR API KEY');

Map<String, Object> params = new Map<String, Object>{
    'imageFile' => Blob.valueOf('Sample text file\nContents')
};

try {
    // cross your fingers
    SwagDominantColorResult result = api.infoGetDominantColor(params);
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

[**SwagDominantColorResult**](SwagDominantColorResult.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

<a name="infoGetMetadata"></a>
# **infoGetMetadata**
> SwagImageMetadata infoGetMetadata(imageFile)

Returns the image metadata including EXIF and resolution

Returns the metadata information on the image, including file type, EXIF (if available), and resolution.

### Example
```java
SwagInfoApi api = new SwagInfoApi();
SwagClient client = api.getClient();

// Configure API key authorization: Apikey
ApiKeyAuth Apikey = (ApiKeyAuth) client.getAuthentication('Apikey');
Apikey.setApiKey('YOUR API KEY');

Map<String, Object> params = new Map<String, Object>{
    'imageFile' => Blob.valueOf('Sample text file\nContents')
};

try {
    // cross your fingers
    SwagImageMetadata result = api.infoGetMetadata(params);
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

[**SwagImageMetadata**](SwagImageMetadata.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json


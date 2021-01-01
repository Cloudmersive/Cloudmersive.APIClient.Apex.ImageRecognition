# SwagTextGenerationApi

All URIs are relative to *https://api.cloudmersive.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**textGenerationCreateHandwritingPng**](SwagTextGenerationApi.md#textGenerationCreateHandwritingPng) | **POST** /image/text/create/handwriting/png | Create an image of handwriting in PNG format


<a name="textGenerationCreateHandwritingPng"></a>
# **textGenerationCreateHandwritingPng**
> Object textGenerationCreateHandwritingPng(request)

Create an image of handwriting in PNG format

Uses Deep Learning to generate realistic handwriting and returns the result as a PNG image

### Example
```java
SwagTextGenerationApi api = new SwagTextGenerationApi();
SwagClient client = api.getClient();

// Configure API key authorization: Apikey
ApiKeyAuth Apikey = (ApiKeyAuth) client.getAuthentication('Apikey');
Apikey.setApiKey('YOUR API KEY');

Map<String, Object> params = new Map<String, Object>{
    'request' => SwagCreateHandwritingRequest.getExample()
};

try {
    // cross your fingers
    Object result = api.textGenerationCreateHandwritingPng(params);
    System.debug(result);
} catch (Swagger.ApiException e) {
    // ...handle your exceptions
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**SwagCreateHandwritingRequest**](SwagCreateHandwritingRequest.md)| Draw text parameters |

### Return type

**Object**

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


# SwagNsfwApi

All URIs are relative to *https://api.cloudmersive.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**nsfwClassify**](SwagNsfwApi.md#nsfwClassify) | **POST** /image/nsfw/classify | Not safe for work NSFW racy content classification


<a name="nsfwClassify"></a>
# **nsfwClassify**
> SwagNsfwResult nsfwClassify(imageFile)

Not safe for work NSFW racy content classification

Classify an image into Not Safe For Work (NSFW)/Porn/Racy content and Safe Content.

### Example
```java
SwagNsfwApi api = new SwagNsfwApi();
SwagClient client = api.getClient();

// Configure API key authorization: Apikey
ApiKeyAuth Apikey = (ApiKeyAuth) client.getAuthentication('Apikey');
Apikey.setApiKey('YOUR API KEY');

Map<String, Object> params = new Map<String, Object>{
    'imageFile' => Blob.valueOf('Sample text file\nContents')
};

try {
    // cross your fingers
    SwagNsfwResult result = api.nsfwClassify(params);
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

[**SwagNsfwResult**](SwagNsfwResult.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json


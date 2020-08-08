# SwagEditApi

All URIs are relative to *https://api.cloudmersive.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**editAutoOrient**](SwagEditApi.md#editAutoOrient) | **POST** /image/edit/auto-orient/remove-exif | Normalizes image rotation and removes EXIF rotation data
[**editCompositeBasic**](SwagEditApi.md#editCompositeBasic) | **POST** /image/edit/composite/{location} | Composite two images together
[**editCompositePrecise**](SwagEditApi.md#editCompositePrecise) | **POST** /image/edit/composite/precise | Composite two images together precisely
[**editContrastAdaptive**](SwagEditApi.md#editContrastAdaptive) | **POST** /image/edit/contrast/{gamma}/adaptive | Adaptively adjust the contrast of the image to be more appealing and easy to see
[**editCropCircle**](SwagEditApi.md#editCropCircle) | **POST** /image/edit/crop/circle/{left}/{top}/{radius} | Crop an image to an circular area
[**editCropRectangle**](SwagEditApi.md#editCropRectangle) | **POST** /image/edit/crop/rectangle/{left}/{top}/{width}/{height} | Crop an image to a rectangular area
[**editDrawPolygon**](SwagEditApi.md#editDrawPolygon) | **POST** /image/edit/draw/polygon | Draw a polygon onto an image
[**editDrawRectangle**](SwagEditApi.md#editDrawRectangle) | **POST** /image/edit/draw/rectangle | Draw a rectangle onto an image
[**editDrawText**](SwagEditApi.md#editDrawText) | **POST** /image/edit/draw/text | Draw text onto an image
[**editDropShadow**](SwagEditApi.md#editDropShadow) | **POST** /image/edit/drop-shadow/{X}/{Y}/{sigma}/{opacity} | Add a customizeable drop shadow to an image
[**editInvert**](SwagEditApi.md#editInvert) | **POST** /image/edit/invert | Invert, negate the colors in the image
[**editRemoveExifData**](SwagEditApi.md#editRemoveExifData) | **POST** /image/edit/remove-exif | Remove EXIF data from the image
[**editRemoveTransparency**](SwagEditApi.md#editRemoveTransparency) | **POST** /image/edit/remove-transparency | Remove transparency from the image
[**editRotate**](SwagEditApi.md#editRotate) | **POST** /image/edit/rotate/{degrees}/angle | Rotate an image any number of degrees


<a name="editAutoOrient"></a>
# **editAutoOrient**
> Blob editAutoOrient(imageFile)

Normalizes image rotation and removes EXIF rotation data

Automatically orients the input image based on EXIF information and then removes the EXIF information.  EXIF is an additional set of information stored in some images taken with cell phone cameras based on the orientation of the camera.  By normalizing rotation and removing EXIF data these images become much easier to process.

### Example
```java
SwagEditApi api = new SwagEditApi();
SwagClient client = api.getClient();

// Configure API key authorization: Apikey
ApiKeyAuth Apikey = (ApiKeyAuth) client.getAuthentication('Apikey');
Apikey.setApiKey('YOUR API KEY');

Map<String, Object> params = new Map<String, Object>{
    'imageFile' => Blob.valueOf('Sample text file\nContents')
};

try {
    // cross your fingers
    Blob result = api.editAutoOrient(params);
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

<a name="editCompositeBasic"></a>
# **editCompositeBasic**
> Blob editCompositeBasic(location, baseImage, layeredImage)

Composite two images together

Composites two input images together; a layered image onto a base image.  The first image you input is the base image.  The second image (the layered image) will be composited on top of this base image.  Supports PNG transparency.  To control padding you can include transparent pixels at the border(s) of your layered images as appropriate.

### Example
```java
SwagEditApi api = new SwagEditApi();
SwagClient client = api.getClient();

// Configure API key authorization: Apikey
ApiKeyAuth Apikey = (ApiKeyAuth) client.getAuthentication('Apikey');
Apikey.setApiKey('YOUR API KEY');

Map<String, Object> params = new Map<String, Object>{
    'location' => 'location_example',
    'baseImage' => Blob.valueOf('Sample text file\nContents'),
    'layeredImage' => Blob.valueOf('Sample text file\nContents')
};

try {
    // cross your fingers
    Blob result = api.editCompositeBasic(params);
    System.debug(result);
} catch (Swagger.ApiException e) {
    // ...handle your exceptions
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **location** | **String**| Location to composite the layered images; possible values are: &quot;center&quot;, &quot;top-left&quot;, &quot;top-center&quot;, &quot;top-right&quot;, &quot;center-left&quot;, &quot;center-right&quot;, &quot;bottom-left&quot;, &quot;bottom-center&quot;, &quot;bottom-right&quot; |
 **baseImage** | **Blob**| Image file to perform the operation on.  Common file formats such as PNG, JPEG are supported. |
 **layeredImage** | **Blob**| Image to layer on top of the base image. |

### Return type

**Blob**

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

<a name="editCompositePrecise"></a>
# **editCompositePrecise**
> Blob editCompositePrecise(baseImage, layeredImage, top, bottom, left, right, width, height)

Composite two images together precisely

Composites two input images together; a layered image onto a base image. Position is based on distance in pixels from each side.  The first image you input is the base image.  The second image (the layered image) will be composited on top of this base image.  Supports PNG transparency.  To control padding you can include transparent pixels at the border(s) of your layered images as appropriate.  Providing multiple parameters in a single axis (for example top and bottom) is not recommended, since only one of the parameters will be used per axis.

### Example
```java
SwagEditApi api = new SwagEditApi();
SwagClient client = api.getClient();

// Configure API key authorization: Apikey
ApiKeyAuth Apikey = (ApiKeyAuth) client.getAuthentication('Apikey');
Apikey.setApiKey('YOUR API KEY');

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

try {
    // cross your fingers
    Blob result = api.editCompositePrecise(params);
    System.debug(result);
} catch (Swagger.ApiException e) {
    // ...handle your exceptions
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **baseImage** | **Blob**| Image file to perform the operation on.  Common file formats such as PNG, JPEG are supported. |
 **layeredImage** | **Blob**| Image to layer on top of the base image. |
 **top** | **Integer**| Optional; Desired distance in pixels from the top of the base image to the top of the layered image. | [optional]
 **bottom** | **Integer**| Optional; Desired distance in pixels from the bottom of the base image to the bottom of the layered image. | [optional]
 **left** | **Integer**| Optional; Desired distance in pixels from the left side of the base image to the left side of the layered image. | [optional]
 **right** | **Integer**| Optional; Desired distance in pixels from the right side of the base image to the right side of the layered image. | [optional]
 **width** | **Integer**| Optional; Desired width of the layered image in pixels. Leave height empty or 0 to automatically scale the image proportionally. | [optional]
 **height** | **Integer**| Optional; Desired height of the layered image in pixels. Leave width empty or 0 to automatically scale the image proportionally. | [optional]

### Return type

**Blob**

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

<a name="editContrastAdaptive"></a>
# **editContrastAdaptive**
> Blob editContrastAdaptive(gamma, imageFile)

Adaptively adjust the contrast of the image to be more appealing and easy to see

Uses Gamma to adjust the contrast adaptively the way the human eye sees the world.  Results significantly improve the viewability and visual appeal of the image.

### Example
```java
SwagEditApi api = new SwagEditApi();
SwagClient client = api.getClient();

// Configure API key authorization: Apikey
ApiKeyAuth Apikey = (ApiKeyAuth) client.getAuthentication('Apikey');
Apikey.setApiKey('YOUR API KEY');

Map<String, Object> params = new Map<String, Object>{
    'gamma' => 1.2,
    'imageFile' => Blob.valueOf('Sample text file\nContents')
};

try {
    // cross your fingers
    Blob result = api.editContrastAdaptive(params);
    System.debug(result);
} catch (Swagger.ApiException e) {
    // ...handle your exceptions
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **gamma** | **Double**| Gamma value to adjust the contrast in the image.  Recommended value is 2.0.  Values between 0.0 and 1.0 will reduce contrast, while values above 1.0 will increase contrast. |
 **imageFile** | **Blob**| Image file to perform the operation on.  Common file formats such as PNG, JPEG are supported. |

### Return type

**Blob**

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

<a name="editCropCircle"></a>
# **editCropCircle**
> Blob editCropCircle(left, top, radius, imageFile)

Crop an image to an circular area

Crop an image to a target circular area

### Example
```java
SwagEditApi api = new SwagEditApi();
SwagClient client = api.getClient();

// Configure API key authorization: Apikey
ApiKeyAuth Apikey = (ApiKeyAuth) client.getAuthentication('Apikey');
Apikey.setApiKey('YOUR API KEY');

Map<String, Object> params = new Map<String, Object>{
    'left' => 56,
    'top' => 56,
    'radius' => 56,
    'imageFile' => Blob.valueOf('Sample text file\nContents')
};

try {
    // cross your fingers
    Blob result = api.editCropCircle(params);
    System.debug(result);
} catch (Swagger.ApiException e) {
    // ...handle your exceptions
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **left** | **Integer**| The left edge of the circular crop area in pixels (X). |
 **top** | **Integer**| The top edge of the circular crop area in pixels (Y). |
 **radius** | **Integer**| The radius of the circular crop area in pixels. |
 **imageFile** | **Blob**| Image file to perform the operation on.  Common file formats such as PNG, JPEG are supported. |

### Return type

**Blob**

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

<a name="editCropRectangle"></a>
# **editCropRectangle**
> Blob editCropRectangle(left, top, width, height, imageFile)

Crop an image to a rectangular area

Crop an image to a target rectangular area

### Example
```java
SwagEditApi api = new SwagEditApi();
SwagClient client = api.getClient();

// Configure API key authorization: Apikey
ApiKeyAuth Apikey = (ApiKeyAuth) client.getAuthentication('Apikey');
Apikey.setApiKey('YOUR API KEY');

Map<String, Object> params = new Map<String, Object>{
    'left' => 56,
    'top' => 56,
    'width' => 56,
    'height' => 56,
    'imageFile' => Blob.valueOf('Sample text file\nContents')
};

try {
    // cross your fingers
    Blob result = api.editCropRectangle(params);
    System.debug(result);
} catch (Swagger.ApiException e) {
    // ...handle your exceptions
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **left** | **Integer**| The left edge of the rectangular crop area in pixels (X). |
 **top** | **Integer**| The top edge of the rectangular crop area in pixels (Y). |
 **width** | **Integer**| The width of the rectangular crop area in pixels. |
 **height** | **Integer**| The height of the rectangular crop area in pixels. |
 **imageFile** | **Blob**| Image file to perform the operation on.  Common file formats such as PNG, JPEG are supported. |

### Return type

**Blob**

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

<a name="editDrawPolygon"></a>
# **editDrawPolygon**
> Blob editDrawPolygon(request)

Draw a polygon onto an image

Draw one or more polygons, with customized visuals, onto an image

### Example
```java
SwagEditApi api = new SwagEditApi();
SwagClient client = api.getClient();

// Configure API key authorization: Apikey
ApiKeyAuth Apikey = (ApiKeyAuth) client.getAuthentication('Apikey');
Apikey.setApiKey('YOUR API KEY');

Map<String, Object> params = new Map<String, Object>{
    'request' => SwagDrawPolygonRequest.getExample()
};

try {
    // cross your fingers
    Blob result = api.editDrawPolygon(params);
    System.debug(result);
} catch (Swagger.ApiException e) {
    // ...handle your exceptions
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**SwagDrawPolygonRequest**](SwagDrawPolygonRequest.md)| Polygon drawing request parameters |

### Return type

**Blob**

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="editDrawRectangle"></a>
# **editDrawRectangle**
> Blob editDrawRectangle(request)

Draw a rectangle onto an image

Draw one or more rectangles, with customized visuals, onto an image

### Example
```java
SwagEditApi api = new SwagEditApi();
SwagClient client = api.getClient();

// Configure API key authorization: Apikey
ApiKeyAuth Apikey = (ApiKeyAuth) client.getAuthentication('Apikey');
Apikey.setApiKey('YOUR API KEY');

Map<String, Object> params = new Map<String, Object>{
    'request' => SwagDrawRectangleRequest.getExample()
};

try {
    // cross your fingers
    Blob result = api.editDrawRectangle(params);
    System.debug(result);
} catch (Swagger.ApiException e) {
    // ...handle your exceptions
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**SwagDrawRectangleRequest**](SwagDrawRectangleRequest.md)| Draw rectangle parameters |

### Return type

**Blob**

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="editDrawText"></a>
# **editDrawText**
> Blob editDrawText(request)

Draw text onto an image

Draw one or more pieces of text, with customized visuals, onto an image

### Example
```java
SwagEditApi api = new SwagEditApi();
SwagClient client = api.getClient();

// Configure API key authorization: Apikey
ApiKeyAuth Apikey = (ApiKeyAuth) client.getAuthentication('Apikey');
Apikey.setApiKey('YOUR API KEY');

Map<String, Object> params = new Map<String, Object>{
    'request' => SwagDrawTextRequest.getExample()
};

try {
    // cross your fingers
    Blob result = api.editDrawText(params);
    System.debug(result);
} catch (Swagger.ApiException e) {
    // ...handle your exceptions
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**SwagDrawTextRequest**](SwagDrawTextRequest.md)| Draw text parameters |

### Return type

**Blob**

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="editDropShadow"></a>
# **editDropShadow**
> Blob editDropShadow(X, Y, sigma, opacity, imageFile)

Add a customizeable drop shadow to an image

Add a customizeable drop shadow to the image

### Example
```java
SwagEditApi api = new SwagEditApi();
SwagClient client = api.getClient();

// Configure API key authorization: Apikey
ApiKeyAuth Apikey = (ApiKeyAuth) client.getAuthentication('Apikey');
Apikey.setApiKey('YOUR API KEY');

Map<String, Object> params = new Map<String, Object>{
    'X' => 56,
    'Y' => 56,
    'sigma' => 56,
    'opacity' => 56,
    'imageFile' => Blob.valueOf('Sample text file\nContents')
};

try {
    // cross your fingers
    Blob result = api.editDropShadow(params);
    System.debug(result);
} catch (Swagger.ApiException e) {
    // ...handle your exceptions
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **X** | **Integer**| Horizontal (X) offset of the drop shadow |
 **Y** | **Integer**| Vertical (Y) offset of the drop shadow |
 **sigma** | **Integer**| Sigma (blur distance) of the drop shadow |
 **opacity** | **Integer**| Opacity of the drop shadow; 0 is 0% and 100 is 100% |
 **imageFile** | **Blob**| Image file to perform the operation on.  Common file formats such as PNG, JPEG are supported. |

### Return type

**Blob**

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

<a name="editInvert"></a>
# **editInvert**
> Blob editInvert(imageFile)

Invert, negate the colors in the image

Inverts (negates) all of the colors in the image.  If the image contains transparency, the transparency will first be removed prior to inverting the image.

### Example
```java
SwagEditApi api = new SwagEditApi();
SwagClient client = api.getClient();

// Configure API key authorization: Apikey
ApiKeyAuth Apikey = (ApiKeyAuth) client.getAuthentication('Apikey');
Apikey.setApiKey('YOUR API KEY');

Map<String, Object> params = new Map<String, Object>{
    'imageFile' => Blob.valueOf('Sample text file\nContents')
};

try {
    // cross your fingers
    Blob result = api.editInvert(params);
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

<a name="editRemoveExifData"></a>
# **editRemoveExifData**
> Blob editRemoveExifData(imageFile)

Remove EXIF data from the image

Removes any EXIF data and profiles .

### Example
```java
SwagEditApi api = new SwagEditApi();
SwagClient client = api.getClient();

// Configure API key authorization: Apikey
ApiKeyAuth Apikey = (ApiKeyAuth) client.getAuthentication('Apikey');
Apikey.setApiKey('YOUR API KEY');

Map<String, Object> params = new Map<String, Object>{
    'imageFile' => Blob.valueOf('Sample text file\nContents')
};

try {
    // cross your fingers
    Blob result = api.editRemoveExifData(params);
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

<a name="editRemoveTransparency"></a>
# **editRemoveTransparency**
> Blob editRemoveTransparency(imageFile)

Remove transparency from the image

Removes any active transparency in the image.  Effectively renders the image at the same resolution, in the same file format, over a white background, thus removing transparency.

### Example
```java
SwagEditApi api = new SwagEditApi();
SwagClient client = api.getClient();

// Configure API key authorization: Apikey
ApiKeyAuth Apikey = (ApiKeyAuth) client.getAuthentication('Apikey');
Apikey.setApiKey('YOUR API KEY');

Map<String, Object> params = new Map<String, Object>{
    'imageFile' => Blob.valueOf('Sample text file\nContents')
};

try {
    // cross your fingers
    Blob result = api.editRemoveTransparency(params);
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

<a name="editRotate"></a>
# **editRotate**
> Blob editRotate(degrees, imageFile)

Rotate an image any number of degrees

Rotates an image by an arbitrary number of degrees

### Example
```java
SwagEditApi api = new SwagEditApi();
SwagClient client = api.getClient();

// Configure API key authorization: Apikey
ApiKeyAuth Apikey = (ApiKeyAuth) client.getAuthentication('Apikey');
Apikey.setApiKey('YOUR API KEY');

Map<String, Object> params = new Map<String, Object>{
    'degrees' => 1.2,
    'imageFile' => Blob.valueOf('Sample text file\nContents')
};

try {
    // cross your fingers
    Blob result = api.editRotate(params);
    System.debug(result);
} catch (Swagger.ApiException e) {
    // ...handle your exceptions
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **degrees** | **Double**| Degrees to rotate the image; values range from 0.0 to 360.0. |
 **imageFile** | **Blob**| Image file to perform the operation on.  Common file formats such as PNG, JPEG are supported. |

### Return type

**Blob**

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json


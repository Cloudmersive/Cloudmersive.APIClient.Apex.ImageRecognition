# imageapi API Client

Image Recognition and Processing APIs let you use Machine Learning to recognize and process images, and also perform useful image modification operations.

## Requirements

- [Salesforce DX](https://www.salesforce.com/products/platform/products/salesforce-dx/)


If everything is set correctly:

- Running `sfdx version` in a command prompt should output something like:

  ```bash
  sfdx-cli/5.7.5-05549de (darwin-amd64) go1.7.5 sfdxstable
  ```


## Installation

1. Copy the output into your Salesforce DX folder - or alternatively deploy the output directly into the workspace.
2. Deploy the code via Salesforce DX to your Scratch Org

   ```bash
   $ sfdx force:source:push
   ```
3. If the API needs authentication update the Named Credential in Setup.
4. Run your Apex tests using

    ```bash
    $ sfdx sfdx force:apex:test:run
    ```
5. Retrieve the job id from the console and check the test results.

  ```bash
  $ sfdx force:apex:test:report -i theJobId
  ```


## Getting Started

Please follow the [installation](#installation) instruction and execute the following Apex code:

```java
SwagArtisticApi api = new SwagArtisticApi();
SwagClient client = api.getClient();


Map<String, Object> params = new Map<String, Object>{
    'style' => 'style_example',
    'imageFile' => Blob.valueOf('Sample text file\nContents')
};

try {
    // cross your fingers
    Blob result = api.artisticPainting(params);
    System.debug(result);
} catch (Swagger.ApiException e) {
    // ...handle your exceptions
}
```

## Documentation for API Endpoints

All URIs are relative to *https://api.cloudmersive.com*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*SwagArtisticApi* | [**artisticPainting**](docs/SwagArtisticApi.md#artisticPainting) | **POST** /image/artistic/painting/{style} | Transform an image into an artistic painting automatically
*SwagConvertApi* | [**convertToBmp**](docs/SwagConvertApi.md#convertToBmp) | **POST** /image/convert/to/bmp | Convert input image to Bitmap BMP format
*SwagConvertApi* | [**convertToGif**](docs/SwagConvertApi.md#convertToGif) | **POST** /image/convert/to/gif | Convert input image to GIF format
*SwagConvertApi* | [**convertToJpg**](docs/SwagConvertApi.md#convertToJpg) | **POST** /image/convert/to/jpg/{quality} | Convert input image to JPG, JPEG format
*SwagConvertApi* | [**convertToPhotoshop**](docs/SwagConvertApi.md#convertToPhotoshop) | **POST** /image/convert/to/psd | Convert input image to Photoshop PSD format
*SwagConvertApi* | [**convertToPng**](docs/SwagConvertApi.md#convertToPng) | **POST** /image/convert/to/png | Convert input image to PNG format
*SwagConvertApi* | [**convertToTiff**](docs/SwagConvertApi.md#convertToTiff) | **POST** /image/convert/to/tiff | Convert input image to TIFF format
*SwagConvertApi* | [**convertToWebP**](docs/SwagConvertApi.md#convertToWebP) | **POST** /image/convert/to/webp | Convert input image to WebP format
*SwagEditApi* | [**editAutoOrient**](docs/SwagEditApi.md#editAutoOrient) | **POST** /image/edit/auto-orient/remove-exif | Normalizes image rotation and removes EXIF rotation data
*SwagEditApi* | [**editCompositeBasic**](docs/SwagEditApi.md#editCompositeBasic) | **POST** /image/edit/composite/{location} | Composite two images together
*SwagEditApi* | [**editCompositePrecise**](docs/SwagEditApi.md#editCompositePrecise) | **POST** /image/edit/composite/precise | Composite two images together precisely
*SwagEditApi* | [**editContrastAdaptive**](docs/SwagEditApi.md#editContrastAdaptive) | **POST** /image/edit/contrast/{gamma}/adaptive | Adaptively adjust the contrast of the image to be more appealing and easy to see
*SwagEditApi* | [**editCropCircle**](docs/SwagEditApi.md#editCropCircle) | **POST** /image/edit/crop/circle/{left}/{top}/{radius} | Crop an image to an circular area
*SwagEditApi* | [**editCropRectangle**](docs/SwagEditApi.md#editCropRectangle) | **POST** /image/edit/crop/rectangle/{left}/{top}/{width}/{height} | Crop an image to a rectangular area
*SwagEditApi* | [**editDrawPolygon**](docs/SwagEditApi.md#editDrawPolygon) | **POST** /image/edit/draw/polygon | Draw a polygon onto an image
*SwagEditApi* | [**editDrawRectangle**](docs/SwagEditApi.md#editDrawRectangle) | **POST** /image/edit/draw/rectangle | Draw a rectangle onto an image
*SwagEditApi* | [**editDrawText**](docs/SwagEditApi.md#editDrawText) | **POST** /image/edit/draw/text | Draw text onto an image
*SwagEditApi* | [**editDropShadow**](docs/SwagEditApi.md#editDropShadow) | **POST** /image/edit/drop-shadow/{X}/{Y}/{sigma}/{opacity} | Add a customizeable drop shadow to an image
*SwagEditApi* | [**editInvert**](docs/SwagEditApi.md#editInvert) | **POST** /image/edit/invert | Invert, negate the colors in the image
*SwagEditApi* | [**editRemoveExifData**](docs/SwagEditApi.md#editRemoveExifData) | **POST** /image/edit/remove-exif | Remove EXIF data from the image
*SwagEditApi* | [**editRemoveTransparency**](docs/SwagEditApi.md#editRemoveTransparency) | **POST** /image/edit/remove-transparency | Remove transparency from the image
*SwagEditApi* | [**editRotate**](docs/SwagEditApi.md#editRotate) | **POST** /image/edit/rotate/{degrees}/angle | Rotate an image any number of degrees
*SwagFaceApi* | [**faceCompare**](docs/SwagFaceApi.md#faceCompare) | **POST** /image/face/compare-and-match | Compare and match faces
*SwagFaceApi* | [**faceCropFirst**](docs/SwagFaceApi.md#faceCropFirst) | **POST** /image/face/crop/first | Crop image to face with square crop
*SwagFaceApi* | [**faceCropFirstRound**](docs/SwagFaceApi.md#faceCropFirstRound) | **POST** /image/face/crop/first/round | Crop image to face with round crop
*SwagFaceApi* | [**faceDetectAge**](docs/SwagFaceApi.md#faceDetectAge) | **POST** /image/face/detect-age | Detect the age of people in an image
*SwagFaceApi* | [**faceDetectGender**](docs/SwagFaceApi.md#faceDetectGender) | **POST** /image/face/detect-gender | Detect the gender of people in an image
*SwagFaceApi* | [**faceLocate**](docs/SwagFaceApi.md#faceLocate) | **POST** /image/face/locate | Detect and find faces in an image
*SwagFaceApi* | [**faceLocateWithLandmarks**](docs/SwagFaceApi.md#faceLocateWithLandmarks) | **POST** /image/face/locate-with-landmarks | Detect and find faces and landmarks eyes and nose and mouth in image
*SwagFilterApi* | [**filterBlackAndWhite**](docs/SwagFilterApi.md#filterBlackAndWhite) | **POST** /image/filter/black-and-white | Convert image to black-and-white grayscale
*SwagFilterApi* | [**filterDespeckle**](docs/SwagFilterApi.md#filterDespeckle) | **POST** /image/filter/despeckle | Despeckle to remove point noise from the image
*SwagFilterApi* | [**filterEdgeDetect**](docs/SwagFilterApi.md#filterEdgeDetect) | **POST** /image/filter/edge-detect/{radius} | Detect and highlight edges in an image
*SwagFilterApi* | [**filterEmboss**](docs/SwagFilterApi.md#filterEmboss) | **POST** /image/filter/emboss/{radius}/{sigma} | Emboss an image
*SwagFilterApi* | [**filterGaussianBlur**](docs/SwagFilterApi.md#filterGaussianBlur) | **POST** /image/filter/blur/guassian/{radius}/{sigma} | Perform a guassian blur on the input image
*SwagFilterApi* | [**filterMotionBlur**](docs/SwagFilterApi.md#filterMotionBlur) | **POST** /image/filter/blur/motion/{radius}/{sigma}/{angle} | Perform a motion blur on the input image
*SwagFilterApi* | [**filterPosterize**](docs/SwagFilterApi.md#filterPosterize) | **POST** /image/filter/posterize | Posterize the image by reducing distinct colors
*SwagFilterApi* | [**filterSwirl**](docs/SwagFilterApi.md#filterSwirl) | **POST** /image/filter/swirl | Swirl distort the image
*SwagInfoApi* | [**infoGetDominantColor**](docs/SwagInfoApi.md#infoGetDominantColor) | **POST** /image/get-info/dominant-color | Returns the dominant colors of the image
*SwagInfoApi* | [**infoGetMetadata**](docs/SwagInfoApi.md#infoGetMetadata) | **POST** /image/get-info/metadata | Returns the image metadata including EXIF and resolution
*SwagNsfwApi* | [**nsfwClassify**](docs/SwagNsfwApi.md#nsfwClassify) | **POST** /image/nsfw/classify | Not safe for work NSFW racy content classification
*SwagRecognizeApi* | [**recognizeDescribe**](docs/SwagRecognizeApi.md#recognizeDescribe) | **POST** /image/recognize/describe | Describe an image in natural language
*SwagRecognizeApi* | [**recognizeDetectAndUnskewDocument**](docs/SwagRecognizeApi.md#recognizeDetectAndUnskewDocument) | **POST** /image/recognize/detect-document/unskew | Detect and unskew a photo of a document
*SwagRecognizeApi* | [**recognizeDetectObjects**](docs/SwagRecognizeApi.md#recognizeDetectObjects) | **POST** /image/recognize/detect-objects | Detect objects including types and locations in an image
*SwagRecognizeApi* | [**recognizeDetectPeople**](docs/SwagRecognizeApi.md#recognizeDetectPeople) | **POST** /image/recognize/detect-people | Detect people including locations in an image
*SwagRecognizeApi* | [**recognizeDetectTextFine**](docs/SwagRecognizeApi.md#recognizeDetectTextFine) | **POST** /image/recognize/detect-text/fine | Detect fine text in a photo of a document
*SwagRecognizeApi* | [**recognizeDetectTextLarge**](docs/SwagRecognizeApi.md#recognizeDetectTextLarge) | **POST** /image/recognize/detect-text/large | Detect large text in a photo
*SwagRecognizeApi* | [**recognizeDetectVehicleLicensePlates**](docs/SwagRecognizeApi.md#recognizeDetectVehicleLicensePlates) | **POST** /image/recognize/detect-vehicle-license-plates | Detect vehicle license plates in an image
*SwagRecognizeApi* | [**recognizeFindSymbol**](docs/SwagRecognizeApi.md#recognizeFindSymbol) | **POST** /image/recognize/find/symbol | Find the location of a symbol in an image
*SwagRecognizeApi* | [**recognizeSimilarityCompare**](docs/SwagRecognizeApi.md#recognizeSimilarityCompare) | **POST** /image/recognize/similarity/compare | Compare two images for similarity
*SwagRecognizeApi* | [**recognizeSimilarityHash**](docs/SwagRecognizeApi.md#recognizeSimilarityHash) | **POST** /image/recognize/similarity/hash | Generate a perceptual image hash
*SwagRecognizeApi* | [**recognizeSimilarityHashDistance**](docs/SwagRecognizeApi.md#recognizeSimilarityHashDistance) | **POST** /image/recognize/similarity/hash/distance | Calculates the similarity between two perceptual image hashes
*SwagResizeApi* | [**resizePost**](docs/SwagResizeApi.md#resizePost) | **POST** /image/resize/preserveAspectRatio/{maxWidth}/{maxHeight} | Resize an image while preserving aspect ratio
*SwagResizeApi* | [**resizeResizeSimple**](docs/SwagResizeApi.md#resizeResizeSimple) | **POST** /image/resize/target/{width}/{height} | Resize an image
*SwagTextGenerationApi* | [**textGenerationCreateHandwritingPng**](docs/SwagTextGenerationApi.md#textGenerationCreateHandwritingPng) | **POST** /image/text/create/handwriting/png | Create an image of handwriting in PNG format


## Documentation for Models

 - [SwagAgeDetectionResult](docs/SwagAgeDetectionResult.md)
 - [SwagColorResult](docs/SwagColorResult.md)
 - [SwagCreateHandwritingRequest](docs/SwagCreateHandwritingRequest.md)
 - [SwagDetectedLicensePlate](docs/SwagDetectedLicensePlate.md)
 - [SwagDetectedObject](docs/SwagDetectedObject.md)
 - [SwagDominantColorResult](docs/SwagDominantColorResult.md)
 - [SwagDrawPolygonInstance](docs/SwagDrawPolygonInstance.md)
 - [SwagDrawPolygonRequest](docs/SwagDrawPolygonRequest.md)
 - [SwagDrawRectangleInstance](docs/SwagDrawRectangleInstance.md)
 - [SwagDrawRectangleRequest](docs/SwagDrawRectangleRequest.md)
 - [SwagDrawTextInstance](docs/SwagDrawTextInstance.md)
 - [SwagDrawTextRequest](docs/SwagDrawTextRequest.md)
 - [SwagFace](docs/SwagFace.md)
 - [SwagFaceCompareResponse](docs/SwagFaceCompareResponse.md)
 - [SwagFaceLocateResponse](docs/SwagFaceLocateResponse.md)
 - [SwagFaceLocateWithLandmarksResponse](docs/SwagFaceLocateWithLandmarksResponse.md)
 - [SwagFaceMatch](docs/SwagFaceMatch.md)
 - [SwagFacePoint](docs/SwagFacePoint.md)
 - [SwagFaceWithLandmarks](docs/SwagFaceWithLandmarks.md)
 - [SwagFindSymbolResult](docs/SwagFindSymbolResult.md)
 - [SwagFineTextDetectionResult](docs/SwagFineTextDetectionResult.md)
 - [SwagFineTextItem](docs/SwagFineTextItem.md)
 - [SwagGenderDetectionResult](docs/SwagGenderDetectionResult.md)
 - [SwagImageDescriptionResponse](docs/SwagImageDescriptionResponse.md)
 - [SwagImageMetadata](docs/SwagImageMetadata.md)
 - [SwagImageMetadataExifValue](docs/SwagImageMetadataExifValue.md)
 - [SwagImageSimilarityComparisonRespons](docs/SwagImageSimilarityComparisonRespons.md)
 - [SwagImageSimilarityHashDistanceReque](docs/SwagImageSimilarityHashDistanceReque.md)
 - [SwagImageSimilarityHashDistanceRespo](docs/SwagImageSimilarityHashDistanceRespo.md)
 - [SwagImageSimilarityHashResponse](docs/SwagImageSimilarityHashResponse.md)
 - [SwagNsfwResult](docs/SwagNsfwResult.md)
 - [SwagObjectDetectionResult](docs/SwagObjectDetectionResult.md)
 - [SwagPersonWithAge](docs/SwagPersonWithAge.md)
 - [SwagPersonWithGender](docs/SwagPersonWithGender.md)
 - [SwagPolygonPoint](docs/SwagPolygonPoint.md)
 - [SwagRecognitionOutcome](docs/SwagRecognitionOutcome.md)
 - [SwagTextDetectionResult](docs/SwagTextDetectionResult.md)
 - [SwagTextItem](docs/SwagTextItem.md)
 - [SwagVehicleLicensePlateDetectionResu](docs/SwagVehicleLicensePlateDetectionResu.md)


## Documentation for Authorization

Authentication schemes defined for the API:
### Apikey

- **Type**: API key
- **API key parameter name**: Apikey
- **Location**: HTTP header


## Author




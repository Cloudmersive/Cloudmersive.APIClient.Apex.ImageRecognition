/*
 * imageapi
 * Image Recognition and Processing APIs let you use Machine Learning to recognize and process images, and also perform useful image modification operations.
 *
 * OpenAPI spec version: v1
 * 
 *
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen.git
 * Do not edit the class manually.
 */

public class SwagRecognizeApi {
    SwagClient client;

    public SwagRecognizeApi(SwagClient client) {
        this.client = client;
    }

    public SwagRecognizeApi() {
        this.client = new SwagClient();
    }

    public SwagClient getClient() {
        return this.client;
    }

    /**
     * Describe an image in natural language
     * Generate an English language text description of the image as a sentence.
     * @param imageFile Image file to perform the operation on.  Common file formats such as PNG, JPEG are supported. (required)
     * @return SwagImageDescriptionResponse
     * @throws Swagger.ApiException if fails to make API call
     */
    public SwagImageDescriptionResponse recognizeDescribe(Map<String, Object> params) {
        client.assertNotNull(params.get('imageFile'), 'imageFile');
        List<Swagger.Param> query = new List<Swagger.Param>();
        List<Swagger.Param> form = new List<Swagger.Param>();

        // cast form params to verify their expected type
        form.addAll(client.makeParam('imageFile', (Blob) params.get('imageFile')));

        return (SwagImageDescriptionResponse) client.invoke(
            'POST', '/image/recognize/describe', '',
            query, form,
            new Map<String, Object>(),
            new Map<String, Object>(),
            new List<String>{ 'application/json' },
            new List<String>{ 'application/x-www-form-urlencoded' },
            new List<String> { 'Apikey' },
            SwagImageDescriptionResponse.class
        );
    }
    /**
     * Detect and unskew a photo of a document
     * Detect and unskew a photo of a document (e.g. taken on a cell phone) into a perfectly square image.  Great for document scanning applications; once unskewed, this image is perfect for converting to PDF using the Convert API or optical character recognition using the OCR API.
     * @param imageFile Image file to perform the operation on.  Common file formats such as PNG, JPEG are supported. (required)
     * @param postProcessingEffect Optional, post-processing effects to apply to the email, default is None.  Possible values are None and BlackAndWhite (force the image into a black and white view to aid in OCR operations). (optional)
     * @return Blob
     * @throws Swagger.ApiException if fails to make API call
     */
    public Blob recognizeDetectAndUnskewDocument(Map<String, Object> params) {
        client.assertNotNull(params.get('imageFile'), 'imageFile');
        List<Swagger.Param> query = new List<Swagger.Param>();
        List<Swagger.Param> form = new List<Swagger.Param>();

        // cast form params to verify their expected type
        form.addAll(client.makeParam('imageFile', (Blob) params.get('imageFile')));

        return (Blob) client.invoke(
            'POST', '/image/recognize/detect-document/unskew', '',
            query, form,
            new Map<String, Object>(),
            new Map<String, Object>{
                'PostProcessingEffect' => (String) params.get('postProcessingEffect')
            },
            new List<String>{ 'application/json' },
            new List<String>{ 'application/x-www-form-urlencoded' },
            new List<String> { 'Apikey' },
            Blob.class
        );
    }
    /**
     * Detect objects including types and locations in an image
     * Identify the position, size and description of objects in an image, along with a recognition confidence level.  Detects both human people and objects in an image.
     * @param imageFile Image file to perform the operation on.  Common file formats such as PNG, JPEG are supported. (required)
     * @return SwagObjectDetectionResult
     * @throws Swagger.ApiException if fails to make API call
     */
    public SwagObjectDetectionResult recognizeDetectObjects(Map<String, Object> params) {
        client.assertNotNull(params.get('imageFile'), 'imageFile');
        List<Swagger.Param> query = new List<Swagger.Param>();
        List<Swagger.Param> form = new List<Swagger.Param>();

        // cast form params to verify their expected type
        form.addAll(client.makeParam('imageFile', (Blob) params.get('imageFile')));

        return (SwagObjectDetectionResult) client.invoke(
            'POST', '/image/recognize/detect-objects', '',
            query, form,
            new Map<String, Object>(),
            new Map<String, Object>(),
            new List<String>{ 'application/json' },
            new List<String>{ 'application/x-www-form-urlencoded' },
            new List<String> { 'Apikey' },
            SwagObjectDetectionResult.class
        );
    }
    /**
     * Detect people including locations in an image
     * Identify the position, and size of human people in an image, along with a recognition confidence level.  People in the image do NOT need to be facing the camera; they can be facing away, edge-on, etc.
     * @param imageFile Image file to perform the operation on.  Common file formats such as PNG, JPEG are supported. (required)
     * @return SwagObjectDetectionResult
     * @throws Swagger.ApiException if fails to make API call
     */
    public SwagObjectDetectionResult recognizeDetectPeople(Map<String, Object> params) {
        client.assertNotNull(params.get('imageFile'), 'imageFile');
        List<Swagger.Param> query = new List<Swagger.Param>();
        List<Swagger.Param> form = new List<Swagger.Param>();

        // cast form params to verify their expected type
        form.addAll(client.makeParam('imageFile', (Blob) params.get('imageFile')));

        return (SwagObjectDetectionResult) client.invoke(
            'POST', '/image/recognize/detect-people', '',
            query, form,
            new Map<String, Object>(),
            new Map<String, Object>(),
            new List<String>{ 'application/json' },
            new List<String>{ 'application/x-www-form-urlencoded' },
            new List<String> { 'Apikey' },
            SwagObjectDetectionResult.class
        );
    }
    /**
     * Detect fine text in a photo of a document
     * Identify the position, and size of small/fine text within a photograph of a document.  Identify the location of small text in a photo - such as words and other forms of high density text.  Can be used on a scan of a document or a photograph (e.g. smartphone camera) of a document, page or receipt.  For OCR purposes - please see our Deep Learning OCR APIs.
     * @param imageFile Image file to perform the operation on.  Common file formats such as PNG, JPEG are supported. (required)
     * @return SwagFineTextDetectionResult
     * @throws Swagger.ApiException if fails to make API call
     */
    public SwagFineTextDetectionResult recognizeDetectTextFine(Map<String, Object> params) {
        client.assertNotNull(params.get('imageFile'), 'imageFile');
        List<Swagger.Param> query = new List<Swagger.Param>();
        List<Swagger.Param> form = new List<Swagger.Param>();

        // cast form params to verify their expected type
        form.addAll(client.makeParam('imageFile', (Blob) params.get('imageFile')));

        return (SwagFineTextDetectionResult) client.invoke(
            'POST', '/image/recognize/detect-text/fine', '',
            query, form,
            new Map<String, Object>(),
            new Map<String, Object>(),
            new List<String>{ 'application/json' },
            new List<String>{ 'application/x-www-form-urlencoded' },
            new List<String> { 'Apikey' },
            SwagFineTextDetectionResult.class
        );
    }
    /**
     * Detect large text in a photo
     * Identify the position, and size of large text within a photograph.  Identify the location of large text in a photo - such as signs, titles, etc. and other forms of large, low-density text.  Not suitable for high-density text (e.g. scans of documents, receipts, etc.) for OCR purposes - for OCR, please see our Deep Learning OCR APIs.
     * @param imageFile Image file to perform the operation on.  Common file formats such as PNG, JPEG are supported. (required)
     * @return SwagTextDetectionResult
     * @throws Swagger.ApiException if fails to make API call
     */
    public SwagTextDetectionResult recognizeDetectTextLarge(Map<String, Object> params) {
        client.assertNotNull(params.get('imageFile'), 'imageFile');
        List<Swagger.Param> query = new List<Swagger.Param>();
        List<Swagger.Param> form = new List<Swagger.Param>();

        // cast form params to verify their expected type
        form.addAll(client.makeParam('imageFile', (Blob) params.get('imageFile')));

        return (SwagTextDetectionResult) client.invoke(
            'POST', '/image/recognize/detect-text/large', '',
            query, form,
            new Map<String, Object>(),
            new Map<String, Object>(),
            new List<String>{ 'application/json' },
            new List<String>{ 'application/x-www-form-urlencoded' },
            new List<String> { 'Apikey' },
            SwagTextDetectionResult.class
        );
    }
    /**
     * Detect vehicle license plates in an image
     * Identify the position, and size, and content of vehicle license plates in an image.  License plates should be within 15-20 degrees on-axis to the camera.
     * @param imageFile Image file to perform the operation on.  Common file formats such as PNG, JPEG are supported. (required)
     * @return SwagVehicleLicensePlateDetectionResu
     * @throws Swagger.ApiException if fails to make API call
     */
    public SwagVehicleLicensePlateDetectionResu recognizeDetectVehicleLicensePlates(Map<String, Object> params) {
        client.assertNotNull(params.get('imageFile'), 'imageFile');
        List<Swagger.Param> query = new List<Swagger.Param>();
        List<Swagger.Param> form = new List<Swagger.Param>();

        // cast form params to verify their expected type
        form.addAll(client.makeParam('imageFile', (Blob) params.get('imageFile')));

        return (SwagVehicleLicensePlateDetectionResu) client.invoke(
            'POST', '/image/recognize/detect-vehicle-license-plates', '',
            query, form,
            new Map<String, Object>(),
            new Map<String, Object>(),
            new List<String>{ 'application/json' },
            new List<String>{ 'application/x-www-form-urlencoded' },
            new List<String> { 'Apikey' },
            SwagVehicleLicensePlateDetectionResu.class
        );
    }
    /**
     * Find the location of a symbol in an image
     * Determine if an image contains a symbol, and if so, the location of that symbol in the image.
     * @param inputImage Image file to search through for the target image. (required)
     * @param targetImage Image to find in the input image. (required)
     * @return SwagFindSymbolResult
     * @throws Swagger.ApiException if fails to make API call
     */
    public SwagFindSymbolResult recognizeFindSymbol(Map<String, Object> params) {
        client.assertNotNull(params.get('inputImage'), 'inputImage');
        client.assertNotNull(params.get('targetImage'), 'targetImage');
        List<Swagger.Param> query = new List<Swagger.Param>();
        List<Swagger.Param> form = new List<Swagger.Param>();

        // cast form params to verify their expected type
        form.addAll(client.makeParam('inputImage', (Blob) params.get('inputImage')));
        form.addAll(client.makeParam('targetImage', (Blob) params.get('targetImage')));

        return (SwagFindSymbolResult) client.invoke(
            'POST', '/image/recognize/find/symbol', '',
            query, form,
            new Map<String, Object>(),
            new Map<String, Object>(),
            new List<String>{ 'application/json' },
            new List<String>{ 'application/x-www-form-urlencoded' },
            new List<String> { 'Apikey' },
            SwagFindSymbolResult.class
        );
    }
}
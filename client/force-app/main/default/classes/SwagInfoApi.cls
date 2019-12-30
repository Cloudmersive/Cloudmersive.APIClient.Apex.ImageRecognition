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

public class SwagInfoApi {
    SwagClient client;

    public SwagInfoApi(SwagClient client) {
        this.client = client;
    }

    public SwagInfoApi() {
        this.client = new SwagClient();
    }

    public SwagClient getClient() {
        return this.client;
    }

    /**
     * Returns the dominant colors of the image
     * Uses advanced image processing to extract the top 5 dominant colors in the image, returned in the order of dominance with the most-dominant color first.  These are the primary perceptual colors used in the image as perceived by a viewer.
     * @param imageFile Image file to perform the operation on.  Common file formats such as PNG, JPEG are supported. (required)
     * @return SwagDominantColorResult
     * @throws Swagger.ApiException if fails to make API call
     */
    public SwagDominantColorResult infoGetDominantColor(Map<String, Object> params) {
        client.assertNotNull(params.get('imageFile'), 'imageFile');
        List<Swagger.Param> query = new List<Swagger.Param>();
        List<Swagger.Param> form = new List<Swagger.Param>();

        // cast form params to verify their expected type
        form.addAll(client.makeParam('imageFile', (Blob) params.get('imageFile')));

        return (SwagDominantColorResult) client.invoke(
            'POST', '/image/get-info/dominant-color', '',
            query, form,
            new Map<String, Object>(),
            new Map<String, Object>(),
            new List<String>{ 'application/json' },
            new List<String>{ 'application/x-www-form-urlencoded' },
            new List<String> { 'Apikey' },
            SwagDominantColorResult.class
        );
    }
    /**
     * Returns the image metadata including EXIF and resolution
     * Returns the metadata information on the image, including file type, EXIF (if available), and resolution.
     * @param imageFile Image file to perform the operation on.  Common file formats such as PNG, JPEG are supported. (required)
     * @return SwagImageMetadata
     * @throws Swagger.ApiException if fails to make API call
     */
    public SwagImageMetadata infoGetMetadata(Map<String, Object> params) {
        client.assertNotNull(params.get('imageFile'), 'imageFile');
        List<Swagger.Param> query = new List<Swagger.Param>();
        List<Swagger.Param> form = new List<Swagger.Param>();

        // cast form params to verify their expected type
        form.addAll(client.makeParam('imageFile', (Blob) params.get('imageFile')));

        return (SwagImageMetadata) client.invoke(
            'POST', '/image/get-info/metadata', '',
            query, form,
            new Map<String, Object>(),
            new Map<String, Object>(),
            new List<String>{ 'application/json' },
            new List<String>{ 'application/x-www-form-urlencoded' },
            new List<String> { 'Apikey' },
            SwagImageMetadata.class
        );
    }
}
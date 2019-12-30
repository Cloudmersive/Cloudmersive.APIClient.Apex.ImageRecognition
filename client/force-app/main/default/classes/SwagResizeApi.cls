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

public class SwagResizeApi {
    SwagClient client;

    public SwagResizeApi(SwagClient client) {
        this.client = client;
    }

    public SwagResizeApi() {
        this.client = new SwagClient();
    }

    public SwagClient getClient() {
        return this.client;
    }

    /**
     * Resize an image while preserving aspect ratio
     * Resize an image to a maximum width and maximum height, while preserving the image\&#39;s original aspect ratio
     * @param maxWidth Maximum width of the output image - final image will be as large as possible while less than or equial to this width (required)
     * @param maxHeight Maximum height of the output image - final image will be as large as possible while less than or equial to this height (required)
     * @param imageFile Image file to perform the operation on.  Common file formats such as PNG, JPEG are supported. (required)
     * @return Blob
     * @throws Swagger.ApiException if fails to make API call
     */
    public Blob resizePost(Map<String, Object> params) {
        client.assertNotNull(params.get('maxWidth'), 'maxWidth');
        client.assertNotNull(params.get('maxHeight'), 'maxHeight');
        client.assertNotNull(params.get('imageFile'), 'imageFile');
        List<Swagger.Param> query = new List<Swagger.Param>();
        List<Swagger.Param> form = new List<Swagger.Param>();

        // cast form params to verify their expected type
        form.addAll(client.makeParam('imageFile', (Blob) params.get('imageFile')));

        return (Blob) client.invoke(
            'POST', '/image/resize/preserveAspectRatio/{maxWidth}/{maxHeight}', '',
            query, form,
            new Map<String, Object>{
                'maxWidth' => (Integer) params.get('maxWidth'),
                'maxHeight' => (Integer) params.get('maxHeight')
            },
            new Map<String, Object>(),
            new List<String>{ 'application/json' },
            new List<String>{ 'application/x-www-form-urlencoded' },
            new List<String> { 'Apikey' },
            Blob.class
        );
    }
    /**
     * Resize an image
     * Resize an image to a specific width and specific height
     * @param width Width of the output image - final image will be exactly this width (required)
     * @param height Height of the output image - final image will be exactly this height (required)
     * @param imageFile Image file to perform the operation on.  Common file formats such as PNG, JPEG are supported. (required)
     * @return Blob
     * @throws Swagger.ApiException if fails to make API call
     */
    public Blob resizeResizeSimple(Map<String, Object> params) {
        client.assertNotNull(params.get('width'), 'width');
        client.assertNotNull(params.get('height'), 'height');
        client.assertNotNull(params.get('imageFile'), 'imageFile');
        List<Swagger.Param> query = new List<Swagger.Param>();
        List<Swagger.Param> form = new List<Swagger.Param>();

        // cast form params to verify their expected type
        form.addAll(client.makeParam('imageFile', (Blob) params.get('imageFile')));

        return (Blob) client.invoke(
            'POST', '/image/resize/target/{width}/{height}', '',
            query, form,
            new Map<String, Object>{
                'width' => (Integer) params.get('width'),
                'height' => (Integer) params.get('height')
            },
            new Map<String, Object>(),
            new List<String>{ 'application/json' },
            new List<String>{ 'application/x-www-form-urlencoded' },
            new List<String> { 'Apikey' },
            Blob.class
        );
    }
}
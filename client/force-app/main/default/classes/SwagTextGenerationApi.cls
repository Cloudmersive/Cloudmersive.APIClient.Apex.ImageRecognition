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

public class SwagTextGenerationApi {
    SwagClient client;

    public SwagTextGenerationApi(SwagClient client) {
        this.client = client;
    }

    public SwagTextGenerationApi() {
        this.client = new SwagClient();
    }

    public SwagClient getClient() {
        return this.client;
    }

    /**
     * Create an image of handwriting in PNG format
     * Uses Deep Learning to generate realistic handwriting and returns the result as a PNG image
     * @param request Draw text parameters (required)
     * @return Object
     * @throws Swagger.ApiException if fails to make API call
     */
    public Object textGenerationCreateHandwritingPng(Map<String, Object> params) {
        client.assertNotNull(params.get('request'), 'request');
        List<Swagger.Param> query = new List<Swagger.Param>();
        List<Swagger.Param> form = new List<Swagger.Param>();

        return (Object) client.invoke(
            'POST', '/image/text/create/handwriting/png',
            (SwagCreateHandwritingRequest) params.get('request'),
            query, form,
            new Map<String, Object>(),
            new Map<String, Object>(),
            new List<String>{ 'application/json' },
            new List<String>{ 'application/json' },
            new List<String> { 'Apikey' },
            Object.class
        );
    }
}

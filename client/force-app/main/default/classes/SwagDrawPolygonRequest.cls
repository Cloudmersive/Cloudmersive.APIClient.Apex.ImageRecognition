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

/**
 * Request to draw one or more polygons on a base image
 */
public class SwagDrawPolygonRequest implements Swagger.MappedProperties {
    /**
     * Image to draw polygons on, in bytes.  You can also use the BaseImageUrl instead to supply image input as a URL
     * @return baseImageBytes
     */
    public Blob baseImageBytes { get; set; }

    /**
     * Image to draw polygons on, as an HTTP or HTTPS fully-qualified URL
     * @return baseImageUrl
     */
    public String baseImageUrl { get; set; }

    /**
     * Polygons to draw on the image.  Polygons are drawn in index order.
     * @return polygonsToDraw
     */
    public List<SwagDrawPolygonInstance> polygonsToDraw { get; set; }

    private static final Map<String, String> propertyMappings = new Map<String, String>{
        'BaseImageBytes' => 'baseImageBytes',
        'BaseImageUrl' => 'baseImageUrl',
        'PolygonsToDraw' => 'polygonsToDraw'
    };

    public Map<String, String> getPropertyMappings() {
        return propertyMappings;
    }

    public SwagDrawPolygonRequest() {
        polygonsToDraw = new List<SwagDrawPolygonInstance>();
    }

    public static SwagDrawPolygonRequest getExample() {
        SwagDrawPolygonRequest drawPolygonRequest = new SwagDrawPolygonRequest();
        drawPolygonRequest.baseImageBytes = EncodingUtil.base64Decode('VGhlIHF1aWNrIGJyb3duIGZveCBqdW1wZWQgb3ZlciB0aGUgbGF6eSBkb2cu');
        drawPolygonRequest.baseImageUrl = 'aeiou';
        drawPolygonRequest.polygonsToDraw = new List<SwagDrawPolygonInstance>{SwagDrawPolygonInstance.getExample()};
        return drawPolygonRequest;
    }

    public Boolean equals(Object obj) {
        if (obj instanceof SwagDrawPolygonRequest) {
            SwagDrawPolygonRequest drawPolygonRequest = (SwagDrawPolygonRequest) obj;
            return this.baseImageBytes == drawPolygonRequest.baseImageBytes
                && this.baseImageUrl == drawPolygonRequest.baseImageUrl
                && this.polygonsToDraw == drawPolygonRequest.polygonsToDraw;
        }
        return false;
    }

    public Integer hashCode() {
        Integer hashCode = 43;
        hashCode = (17 * hashCode) + (baseImageBytes == null ? 0 : System.hashCode(baseImageBytes));
        hashCode = (17 * hashCode) + (baseImageUrl == null ? 0 : System.hashCode(baseImageUrl));
        hashCode = (17 * hashCode) + (polygonsToDraw == null ? 0 : System.hashCode(polygonsToDraw));
        return hashCode;
    }
}


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
 * Result of an operation to detect text in a photo
 */
public class SwagFineTextDetectionResult implements Swagger.MappedProperties {
    /**
     * True if the operation was successful, false otherwise
     * @return successful
     */
    public Boolean successful { get; set; }

    /**
     * Text items found in the input image
     * @return textItems
     */
    public List<SwagFineTextItem> textItems { get; set; }

    /**
     * Count of text items found in the input image
     * @return textItemsCount
     */
    public Integer textItemsCount { get; set; }

    private static final Map<String, String> propertyMappings = new Map<String, String>{
        'Successful' => 'successful',
        'TextItems' => 'textItems',
        'TextItemsCount' => 'textItemsCount'
    };

    public Map<String, String> getPropertyMappings() {
        return propertyMappings;
    }

    public SwagFineTextDetectionResult() {
        textItems = new List<SwagFineTextItem>();
    }

    public static SwagFineTextDetectionResult getExample() {
        SwagFineTextDetectionResult fineTextDetectionResult = new SwagFineTextDetectionResult();
        fineTextDetectionResult.successful = true;
        fineTextDetectionResult.textItems = new List<SwagFineTextItem>{SwagFineTextItem.getExample()};
        fineTextDetectionResult.textItemsCount = 123;
        return fineTextDetectionResult;
    }

    public Boolean equals(Object obj) {
        if (obj instanceof SwagFineTextDetectionResult) {
            SwagFineTextDetectionResult fineTextDetectionResult = (SwagFineTextDetectionResult) obj;
            return this.successful == fineTextDetectionResult.successful
                && this.textItems == fineTextDetectionResult.textItems
                && this.textItemsCount == fineTextDetectionResult.textItemsCount;
        }
        return false;
    }

    public Integer hashCode() {
        Integer hashCode = 43;
        hashCode = (17 * hashCode) + (successful == null ? 0 : System.hashCode(successful));
        hashCode = (17 * hashCode) + (textItems == null ? 0 : System.hashCode(textItems));
        hashCode = (17 * hashCode) + (textItemsCount == null ? 0 : System.hashCode(textItemsCount));
        return hashCode;
    }
}


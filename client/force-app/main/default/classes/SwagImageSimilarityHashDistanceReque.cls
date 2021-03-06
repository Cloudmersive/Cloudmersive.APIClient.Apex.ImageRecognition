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
 * Request to compute the similarity between two image hashes
 */
public class SwagImageSimilarityHashDistanceReque implements Swagger.MappedProperties {
    /**
     * Image hash computed using Cloudmersive Image Hashing API
     * @return imageHash1
     */
    public String imageHash1 { get; set; }

    /**
     * Image hash computed using Cloudmersive Image Hashing API
     * @return imageHash2
     */
    public String imageHash2 { get; set; }

    private static final Map<String, String> propertyMappings = new Map<String, String>{
        'ImageHash1' => 'imageHash1',
        'ImageHash2' => 'imageHash2'
    };

    public Map<String, String> getPropertyMappings() {
        return propertyMappings;
    }

    public static SwagImageSimilarityHashDistanceReque getExample() {
        SwagImageSimilarityHashDistanceReque imageSimilarityHashDistanceRequest = new SwagImageSimilarityHashDistanceReque();
        imageSimilarityHashDistanceRequest.imageHash1 = 'aeiou';
        imageSimilarityHashDistanceRequest.imageHash2 = 'aeiou';
        return imageSimilarityHashDistanceRequest;
    }

    public Boolean equals(Object obj) {
        if (obj instanceof SwagImageSimilarityHashDistanceReque) {
            SwagImageSimilarityHashDistanceReque imageSimilarityHashDistanceRequest = (SwagImageSimilarityHashDistanceReque) obj;
            return this.imageHash1 == imageSimilarityHashDistanceRequest.imageHash1
                && this.imageHash2 == imageSimilarityHashDistanceRequest.imageHash2;
        }
        return false;
    }

    public Integer hashCode() {
        Integer hashCode = 43;
        hashCode = (17 * hashCode) + (imageHash1 == null ? 0 : System.hashCode(imageHash1));
        hashCode = (17 * hashCode) + (imageHash2 == null ? 0 : System.hashCode(imageHash2));
        return hashCode;
    }
}


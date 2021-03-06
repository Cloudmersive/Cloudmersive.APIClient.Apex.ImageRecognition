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
 * A person identified in an image age classification operation
 */
public class SwagPersonWithAge implements Swagger.MappedProperties {
    /**
     * Location and other information about the person\'s face corresponding to this age classification
     * @return faceLocation
     */
    public SwagFace faceLocation { get; set; }

    /**
     * Confidence level of age classification; possible values are between 0.0 and 1.0; higher is better, with values &gt; 0.50 being high confidence results
     * @return ageClassificationConfidence
     */
    public Double ageClassificationConfidence { get; set; }

    /**
     * The person\'s age range classification result in years; possible values are "0-2", "4-6", "8-13", "15-20", "25-32", "38-43", "48-53", "60+"
     * @return ageClass
     */
    public String ageClass { get; set; }

    /**
     * Get age
     * @return age
     */
    public Double age { get; set; }

    private static final Map<String, String> propertyMappings = new Map<String, String>{
        'FaceLocation' => 'faceLocation',
        'AgeClassificationConfidence' => 'ageClassificationConfidence',
        'AgeClass' => 'ageClass',
        'Age' => 'age'
    };

    public Map<String, String> getPropertyMappings() {
        return propertyMappings;
    }

    public static SwagPersonWithAge getExample() {
        SwagPersonWithAge personWithAge = new SwagPersonWithAge();
        personWithAge.faceLocation = SwagFace.getExample();
        personWithAge.ageClassificationConfidence = 1.3579;
        personWithAge.ageClass = 'aeiou';
        personWithAge.age = 1.3579;
        return personWithAge;
    }

    public Boolean equals(Object obj) {
        if (obj instanceof SwagPersonWithAge) {
            SwagPersonWithAge personWithAge = (SwagPersonWithAge) obj;
            return this.faceLocation == personWithAge.faceLocation
                && this.ageClassificationConfidence == personWithAge.ageClassificationConfidence
                && this.ageClass == personWithAge.ageClass
                && this.age == personWithAge.age;
        }
        return false;
    }

    public Integer hashCode() {
        Integer hashCode = 43;
        hashCode = (17 * hashCode) + (faceLocation == null ? 0 : System.hashCode(faceLocation));
        hashCode = (17 * hashCode) + (ageClassificationConfidence == null ? 0 : System.hashCode(ageClassificationConfidence));
        hashCode = (17 * hashCode) + (ageClass == null ? 0 : System.hashCode(ageClass));
        hashCode = (17 * hashCode) + (age == null ? 0 : System.hashCode(age));
        return hashCode;
    }
}


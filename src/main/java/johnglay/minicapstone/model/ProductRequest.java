package johnglay.minicapstone.model;

import lombok.Builder;
import lombok.Data;

@Data
@Builder
public class ProductRequest {

    private String productName;
    private float price;
    private float ratings;
    private String type;
    private String filter;
    private String description;
}

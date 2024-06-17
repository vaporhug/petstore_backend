package org.csu.vapor.petstore_backend.dto;

public class ProductDto {
    private String productId;
    private String category;
    private String name;
    private String description;

    // Constructors
    public ProductDto() {}

    public ProductDto(String productId, String category, String name, String description) {
        this.productId = productId;
        this.category = category;
        this.name = name;
        this.description = description;
    }

    // Getters and setters
    public String getProductId() {
        return productId;
    }

    public void setProductId(String productId) {
        this.productId = productId;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }
}

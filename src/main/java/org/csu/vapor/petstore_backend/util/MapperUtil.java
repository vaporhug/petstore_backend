package org.csu.vapor.petstore_backend.util;

import org.csu.vapor.petstore_backend.dto.ProductDto;
import org.csu.vapor.petstore_backend.model.Product;

public class MapperUtil {

    public static ProductDto convertToDto(Product product) {
        return new ProductDto(product.getProductId(), product.getCategory(), product.getName(), product.getDescription());
    }

    public static Product convertToEntity(ProductDto productDto) {
        Product product = new Product();
        product.setProductId(productDto.getProductId());
        product.setCategory(productDto.getCategory());
        product.setName(productDto.getName());
        product.setDescription(productDto.getDescription());
        return product;
    }
}

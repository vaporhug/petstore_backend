package org.csu.vapor.petstore_backend.service;

import org.csu.vapor.petstore_backend.dto.ProductDto;
import org.csu.vapor.petstore_backend.model.Product;
import org.csu.vapor.petstore_backend.repository.ProductRepository;
import org.csu.vapor.petstore_backend.util.MapperUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.List;
import java.util.stream.Collectors;

@Service
public class ProductService {

    @Autowired
    private ProductRepository productRepository;

    public ProductDto createProduct(ProductDto productDto) {
        Product product = MapperUtil.convertToEntity(productDto);
        Product savedProduct = productRepository.save(product);
        return MapperUtil.convertToDto(savedProduct);
    }

}

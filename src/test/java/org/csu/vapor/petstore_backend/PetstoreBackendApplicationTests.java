package org.csu.vapor.petstore_backend;

import jakarta.transaction.Transactional;
import org.csu.vapor.petstore_backend.model.Product;
import org.csu.vapor.petstore_backend.repository.ProductRepository;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.annotation.Rollback;
import org.springframework.test.context.ActiveProfiles;

import static org.assertj.core.api.AssertionsForClassTypes.assertThat;

@SpringBootTest
class PetstoreBackendApplicationTests {
    @Autowired
    private ProductRepository productRepository;

    @Test
    @Transactional
    @Rollback
    void testCreateAndFindProduct() {
        // Create a new product
        Product product = new Product();
        product.setProductId("K9-BD-01");
        product.setCategory("DOGS");
        product.setName("Bulldog");
        product.setDescription("<image src='../images/dog1.gif'>Friendly dog");

        // Save the product
        productRepository.save(product);

        // Verify the product was saved
        Product savedProduct = productRepository.findById("K9-BD-01").orElse(null);
        assertThat(savedProduct).isNotNull();
        assertThat(savedProduct.getProductId()).isEqualTo("K9-BD-01");
        assertThat(savedProduct.getCategory()).isEqualTo("DOGS");
        assertThat(savedProduct.getName()).isEqualTo("Bulldog");
        assertThat(savedProduct.getDescription()).isEqualTo("<image src='../images/dog1.gif'>Friendly dog");
    }
}

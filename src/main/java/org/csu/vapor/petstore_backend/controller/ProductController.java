package org.csu.vapor.petstore_backend.controller;

import org.csu.vapor.petstore_backend.model.Category;
import org.csu.vapor.petstore_backend.model.NewArrivalProduct;
import org.csu.vapor.petstore_backend.model.Product;
import org.csu.vapor.petstore_backend.repository.CategoryRepository;
import org.csu.vapor.petstore_backend.repository.NewArrivalProductRepository;
import org.csu.vapor.petstore_backend.repository.ProductRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

@RestController
@RequestMapping("/api/products")
public class ProductController {
    @Autowired
    private ProductRepository productRepository;
    @Autowired
    private NewArrivalProductRepository newArrivalProductRepository;

//    @GetMapping
//    public List<Product> getAllCategories() {
//        return productRepository.findAll();
//    }
    @GetMapping
    public List<Map<String, Object>> getProductsByCategory(@RequestParam String category) {
        List<Product> allProducts = productRepository.findAll();
        List<Product> productsByCategory = allProducts.stream()
                .filter(product -> product.getCategory().equals(category))
                .collect(Collectors.toList());

        List<Map<String, Object>> productListWithPrice = new ArrayList<>();

        // 为每个产品设置price属性的值
        for (Product product : productsByCategory) {
            Map<String, Object> productMap = new HashMap<>();
            productMap.put("productId", product.getProductId());
            productMap.put("category", product.getCategory());
            productMap.put("name", product.getName());
            productMap.put("description", product.getDescription());
            productMap.put("imgUrl", product.getImgUrl());
            // 生成一个70到100之间的随机数，保留一位小数
            double price = Math.round((70 + Math.random() * 30) * 10) / 10.0;
            productMap.put("price", product.getPrice());

            // 50%的可能性生成old_price
            if (Math.random() < 0.5) {
                // old_price是price的70%到95%
                double oldPrice = Math.round((price * (0.7 + Math.random() * 0.25)) * 10) / 10.0;
                productMap.put("old_price", oldPrice);
            }

            productMap.put("rating", 5);  // 这里我们随机生成一个价格

            productListWithPrice.add(productMap);
        }

        return productListWithPrice;
    }

    @GetMapping("/newest")
    public List<Map<String, Object>> getNewestProducts(String categoryId) {
        List<NewArrivalProduct> productList = newArrivalProductRepository.findAll();
        List<Map<String, Object>> productListWithPrice = new ArrayList<>();

        // 为每个产品设置price属性的值
        for (NewArrivalProduct product : productList) {
            Map<String, Object> productMap = new HashMap<>();
            productMap.put("productId", product.getProductId());
            productMap.put("category", product.getCategory());
            productMap.put("name", product.getName());
            productMap.put("description", product.getDescription());
            productMap.put("imgUrl", product.getImgUrl());
            // 生成一个70到100之间的随机数，保留一位小数
            double price = Math.round((70 + Math.random() * 30) * 10) / 10.0;
            productMap.put("price", product.getPrice());

            // 50%的可能性生成old_price
            if (Math.random() < 0.5) {
                // old_price是price的70%到95%
                double oldPrice = Math.round((price * (0.7 + Math.random() * 0.25)) * 10) / 10.0;
                productMap.put("old_price", oldPrice);
            }

            productMap.put("rating", 5);  // 这里我们随机生成一个价格

            productListWithPrice.add(productMap);
        }

        return productListWithPrice;
    }

    @RequestMapping("/{productId}")
    public Product getProductById(@PathVariable String productId) {
        System.out.println("productId: " + productId);
        return productRepository.findById(productId).orElse(null);
    }
}

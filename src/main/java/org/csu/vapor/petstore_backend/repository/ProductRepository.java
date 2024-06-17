package org.csu.vapor.petstore_backend.repository;

import org.csu.vapor.petstore_backend.model.Product;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ProductRepository extends JpaRepository<Product, String> {
}
package org.csu.vapor.petstore_backend.repository;

import org.csu.vapor.petstore_backend.model.Category;
import org.springframework.data.jpa.repository.JpaRepository;

public interface CategoryRepository extends JpaRepository<Category, String> {
}

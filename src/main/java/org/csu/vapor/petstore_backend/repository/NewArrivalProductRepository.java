package org.csu.vapor.petstore_backend.repository;

import org.csu.vapor.petstore_backend.model.NewArrivalProduct;
import org.springframework.data.jpa.repository.JpaRepository;

public interface NewArrivalProductRepository extends JpaRepository<NewArrivalProduct, String> {
}

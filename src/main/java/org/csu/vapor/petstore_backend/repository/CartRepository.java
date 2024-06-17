package org.csu.vapor.petstore_backend.repository;
import org.springframework.data.jpa.repository.JpaRepository;
import org.csu.vapor.petstore_backend.model.Cart;
import org.springframework.lang.NonNull;

import java.util.Optional;

public interface CartRepository extends JpaRepository<Cart, Long> {
    @NonNull
    Optional<Cart> findById(@NonNull Long id);
}
package org.csu.vapor.petstore_backend.model;

import jakarta.persistence.*;
import lombok.Data;

@Entity
@Data
public class CartItem {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String name;
    private int quantity;
    private double price;
    private String imageUrl;

    // Getters and Setters
}
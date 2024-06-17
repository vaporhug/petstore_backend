package org.csu.vapor.petstore_backend.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.Data;

@Entity
@Data
@Table(name = "new_arrival_product")
public class NewArrivalProduct {

    @Id
    @Column(name = "productid")
    private String productId;

    @Column(name = "category")
    private String category;

    @Column(name = "name")
    private String name;

    @Column(name = "descn")
    private String description;

    @Column(name = "img_url")
    private String imgUrl;

    @Column(name = "price")
    private double price;
}
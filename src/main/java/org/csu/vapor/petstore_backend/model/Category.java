package org.csu.vapor.petstore_backend.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Table;
import lombok.Data;
import jakarta.persistence.Id;

@Entity
@Table(name = "category")
@Data
public class Category {
    @Id
    @Column(name = "catid")
    private String catId;

    @Column(name = "name")
    private String name;

    @Column(name = "descn")
    private String description;
}

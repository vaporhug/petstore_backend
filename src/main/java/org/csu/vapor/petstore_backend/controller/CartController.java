package org.csu.vapor.petstore_backend.controller;

import org.csu.vapor.petstore_backend.model.Cart;
import org.csu.vapor.petstore_backend.model.CartItem;
import org.csu.vapor.petstore_backend.service.CartService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.Map;

@RestController
@RequestMapping("/api/cart")
public class CartController {
    @Autowired
    private CartService cartService;

    @GetMapping("/{userId}")
    public Cart getCart(@PathVariable Long userId) {
        return cartService.getCart(userId);
    }

    @PostMapping("/{userId}/add")
    public Cart addItemToCart(@PathVariable Long userId, @RequestBody CartItem cartItem) {
        return cartService.addItemToCart(userId, cartItem);
    }

    @RequestMapping("/{userId}/clear")
    public Cart clearCart(@PathVariable Long userId) {
        return cartService.clearCart(userId);
    }

    @RequestMapping("/{userId}/remove/{itemName}")
    public Cart removeItemFromCart(@PathVariable Long userId, @PathVariable String itemName) {
        return cartService.removeItemFromCart(userId, itemName);
    }

    @RequestMapping("/{userId}/update/{itemName}")
    public Cart updateItemQuantity(@PathVariable Long userId, @PathVariable String itemName, @RequestBody Map<String, Integer> payload) {
        int quantity = payload.get("quantity");
        return cartService.updateItemQuantity(userId, itemName, quantity);
    }
}

package org.csu.vapor.petstore_backend.service;

import org.csu.vapor.petstore_backend.model.Cart;
import org.csu.vapor.petstore_backend.model.CartItem;
import org.csu.vapor.petstore_backend.repository.CartRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PathVariable;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

@Service
public class CartService {
    @Autowired
    private CartRepository cartRepository;

    public Cart getCart(Long userId) {
        Optional<Cart> optionalCart = cartRepository.findById(userId);
        return optionalCart.orElseGet(Cart::new);
    }

    public Cart addItemToCart(Long userId, CartItem cartItem) {
        Cart cart = getCart(userId);
        if (cart == null) {
            cart = new Cart();
            cart.setId(userId);
        }
        List<CartItem> cartItems = cart.getItems();
        if (cartItems == null) {
            cartItems = new ArrayList<>();
            cart.setItems(cartItems);
        }

        for (CartItem item : cartItems) {
            if (item.getName().equals(cartItem.getName())) {
                // If the same item exists, increase the quantity
                item.setQuantity(item.getQuantity() + cartItem.getQuantity());
                return cartRepository.save(cart);
            }
        }

        cart.getItems().add(cartItem);
        return cartRepository.save(cart);
    }

    public Cart clearCart(Long userId) {
        Cart cart = getCart(userId);
        List<CartItem> cartItems = cart.getItems();
        if (cartItems != null) {
            cartItems.clear();
        }
        return cartRepository.save(cart);
    }

    public Cart removeItemFromCart(Long userId, String itemName) {
        Cart cart = getCart(userId);
        List<CartItem> cartItems = cart.getItems();
        if (cartItems != null) {
            cartItems.removeIf(item -> item.getName().equals(itemName));
        }
        return cartRepository.save(cart);
    }
    public Cart updateItemQuantity(Long userId, String itemName, int quantity) {
        Cart cart = getCart(userId);
        List<CartItem> cartItems = cart.getItems();
        if (cartItems != null) {
            for (CartItem item : cartItems) {
                if (item.getName().equals(itemName)) {
                    if (quantity == 0) {
                        cartItems.remove(item);
                    } else {
                        item.setQuantity(quantity);
                    }
                    break;
                }
            }
        }
        return cartRepository.save(cart);
    }
}

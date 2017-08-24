package com.ngocthangh.shoppingbackend.dao;

import java.util.List;

import com.ngocthangh.shoppingbackend.dto.Address;
import com.ngocthangh.shoppingbackend.dto.Cart;
import com.ngocthangh.shoppingbackend.dto.User;

public interface UserDAO {

	// add an user
	boolean addUser(User user);
	User getByEmail(String email);
	
	// add an address
	boolean addAddress(Address address);
	// alternative
	 Address getBillingAddress(int userId);
	 List<Address> listShippingAddresses(int userId);
	
/*	
	Address getBillingAddress(User user);
	List<Address> listShippingAddresses(User user);
*/
	
	// udpate a cart
	boolean updateCart(Cart cart);
}

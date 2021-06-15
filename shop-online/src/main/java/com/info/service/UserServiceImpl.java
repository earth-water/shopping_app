package com.info.service;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import com.info.dao.UserRepository;
import com.info.model.Product;
import com.info.model.User;

@Service
@Transactional
public class UserServiceImpl implements UserService{

	@Autowired
	private UserRepository userRepository;
	
	@Autowired
	private PasswordEncoder passwordEncoder;
	
	@Override
	public User findByEmail(String email) {
		return userRepository.findByEmail(email);
	}

	@Override
	public void save(User user) {
		user.setActive(1);
		user.setPassword(passwordEncoder.encode(user.getPassword()));
		userRepository.save(user);
	}

	@Override
	public void update(User user) {
		List<Product> productlist1 = user.getProductList();
		List<Product> productlist = (userRepository.findByEmail(user.getEmail())).getProductList();
		productlist1.addAll(productlist);
		user.setProductList(productlist1);
		userRepository.save(user);
	}

	@Override
	public List<User> findAllUser() {
		return userRepository.findAll();
	}

	@Override
	public void deleteUser(long userId) {
		userRepository.deleteById(userId);
	}

	@Override
	public void emptyCart(User user) {
		List<Product> productlist = (userRepository.findByEmail(user.getEmail())).getProductList();
		productlist.clear();
		user.setProductList(productlist);
		userRepository.save(user);	
	}

	@Override
	public void removeFromCart(Product product,User user) {
		System.out.println("product to remove is"+product);
		List<Product> productlist = user.getProductList();
		List<Product> productlist1=new ArrayList<>();
		int size=productlist.size();
		for(int i=0;i<size-1;i++)
		{
			System.out.println("considering product"+productlist.get(i));
			if(!productlist.get(i).equals(product))
			{
				System.out.println(productlist.get(i)+"kept");
				productlist1.add(productlist.get(i));
			}
		}
		user.setProductList(productlist1);
		userRepository.save(user);		
		
	}

}

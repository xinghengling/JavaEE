package wnl.service;

import java.util.List;

import wnl.domain.User;

public interface UserService {

	public void save(User user);
	
	public void delete(User user);
	
	public void update(User user);
	
	public void find(User user);
	
	public List<User> findAll(Class<User> clzz);
	
	public List<User> findByUserName(String username);
}

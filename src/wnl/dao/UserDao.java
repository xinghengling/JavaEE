package wnl.dao;

import java.util.List;

import wnl.domain.User;

public interface UserDao {

	public void save(User user);
	
	public void delete(User user);
	
	public void update(User user);
	
	public void find(String username);
	
	public List<User> findAll(Class<User> clazz);
	
	public List<User> findByName(String username);
	
}

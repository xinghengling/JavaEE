package wnl.serviceimpl;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.SessionFactory;
import org.springframework.orm.hibernate5.support.HibernateDaoSupport;

import wnl.dao.UserDao;
import wnl.daoimpl.UserDaoImpl;
import wnl.domain.User;
import wnl.service.UserService;

public class UserServiceImpl extends HibernateDaoSupport implements UserService {

	@Resource(name="userDao")
	private UserDao dao;
	
	public void setDao(UserDao dao) {
		this.dao = dao;
	}
	public UserDao getDao() {
		return dao;
	}
	@Override
	public void save(User user) {
		dao.save(user);
	}

	@Override
	public void delete(User user) {
		dao.delete(user);
	}

	@Override
	public void update(User user) {
		dao.update(user);
	}

	@Override
	public void find(User user) {
	
	}

	@Override
	public List<User> findByName(String username) {
			return dao.findByName(username);
	}
	/**
	 *  在UserServiceImpl注入SessionFactory
	 * @param sessionFactory
	 */
	@Resource
	public void setSessionFacotry(SessionFactory sessionFactory){
		super.setSessionFactory(sessionFactory);
	}
	@Override
	public List<User> findAll(Class<User> clzz) {
		return dao.findAll(User.class);
	}
	
}

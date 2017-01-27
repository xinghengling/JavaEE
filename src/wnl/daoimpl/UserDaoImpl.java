package wnl.daoimpl;

import java.util.List;

import javax.annotation.Resource;
import javax.persistence.FlushModeType;

import org.hibernate.SessionFactory;
import org.springframework.orm.hibernate5.support.HibernateDaoSupport;
import org.springframework.transaction.annotation.Transactional;

import wnl.dao.UserDao;
import wnl.domain.User;

@Transactional
public class UserDaoImpl extends HibernateDaoSupport implements UserDao{

	@Override
	public void save(User user) {
		getHibernateTemplate().save(user);
	}

	@Override
	public void delete(User user) {
		
	}

	@Override
	public void update(User user) {
		
	}

	@Override
	public void find(String username) {
		
	}
	@Override
	public List<User> findByName(String username) {
     		String hql="from User u where u.username=?";
     		List<User> users=(List<User>) getHibernateTemplate().find(hql, username);
			return users;
	}
	/**
	 *  在UserDaoImpl注入SessionFactory
	 * @param sessionFactory
	 */
	@Resource
	public void setSessionFacotry(SessionFactory sessionFactory){
		super.setSessionFactory(sessionFactory);
	}
}

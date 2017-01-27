package wnl.utils;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.boot.MetadataSources;
import org.hibernate.boot.registry.StandardServiceRegistry;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;

public class HibernateUtils {

	private static SessionFactory sessionFactory;

	public static SessionFactory getSessionFactory() {

		StandardServiceRegistry registry = new StandardServiceRegistryBuilder()
				.configure("/wnl/config/hibernate/hibernate.cfg.xml") // configures settings from hibernate.cfg.xml
				.build();
		sessionFactory = new MetadataSources(registry).buildMetadata()
				.buildSessionFactory();
		return sessionFactory;
	}

	public static Session getSession() {
		if (sessionFactory == null) {
			sessionFactory = getSessionFactory();
		}
		return sessionFactory.openSession();
	}

}

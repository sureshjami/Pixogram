package com.pixo.configuration;

import static org.hibernate.cfg.AvailableSettings.C3P0_ACQUIRE_INCREMENT;

import static org.hibernate.cfg.AvailableSettings.C3P0_MAX_SIZE;
import static org.hibernate.cfg.AvailableSettings.C3P0_MAX_STATEMENTS;
import static org.hibernate.cfg.AvailableSettings.C3P0_MIN_SIZE;
import static org.hibernate.cfg.AvailableSettings.C3P0_TIMEOUT;
import static org.hibernate.cfg.AvailableSettings.DRIVER;
import static org.hibernate.cfg.AvailableSettings.HBM2DDL_AUTO;
import static org.hibernate.cfg.AvailableSettings.PASS;
import static org.hibernate.cfg.AvailableSettings.SHOW_SQL;
import static org.hibernate.cfg.AvailableSettings.URL;
import static org.hibernate.cfg.AvailableSettings.USER;

import java.util.Properties;

import org.apache.log4j.Logger;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.ComponentScans;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;
import org.springframework.core.env.Environment;
import org.springframework.orm.hibernate5.HibernateTransactionManager;
import org.springframework.orm.hibernate5.LocalSessionFactoryBean;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;

import com.pixo.dao.UserDAO;
import com.pixo.dao.UserDAOImpl;

@Configuration
@PropertySource("classpath:db.properties")
@EnableTransactionManagement
@ComponentScans(value={@ComponentScan("com.pixo.dao"),
		@ComponentScan("com.pixo.service")
})
public class AppConfig {
	 @Autowired
	   private Environment env;
	   static Logger logger = Logger.getLogger(AppConfig.class);
	   @Bean("sessionFactory")
	   public LocalSessionFactoryBean getSessionFactory() {
	      LocalSessionFactoryBean factoryBean = new LocalSessionFactoryBean();

	      Properties props = new Properties();
	      // Setting JDBC properties
	      logger.info("Setting Properties...");
	      props.put(DRIVER, env.getProperty("driver"));
	      props.put(URL, env.getProperty("url"));
	      props.put(USER, env.getProperty("user"));
	      props.put(PASS, env.getProperty("password"));

	      // Setting Hibernate properties
	      props.put(SHOW_SQL, env.getProperty("hibernate.show_sql"));
	      props.put(HBM2DDL_AUTO, env.getProperty("hibernate.hbm2ddl.auto"));

	      // Setting C3P0 properties
	      props.put(C3P0_MIN_SIZE, 
	            env.getProperty("hibernate.c3p0.min_size"));
	      props.put(C3P0_MAX_SIZE, 
	            env.getProperty("hibernate.c3p0.max_size"));
	      props.put(C3P0_ACQUIRE_INCREMENT,
	            env.getProperty("hibernate.c3p0.acquire_increment"));
	      props.put(C3P0_TIMEOUT, 
	            env.getProperty("hibernate.c3p0.timeout"));
	      props.put(C3P0_MAX_STATEMENTS, 
	            env.getProperty("hibernate.c3p0.max_statements"));

	      factoryBean.setHibernateProperties(props);
	      logger.info("Properties Set !");
	      factoryBean.setPackagesToScan("com.pixo.bean");
	      return factoryBean;
	   }

	   @Bean("transactionManager")
	   public HibernateTransactionManager getTransactionManager() {
		  logger.info("Initializing data intigrity checker");
	      HibernateTransactionManager transactionManager = new HibernateTransactionManager();
	      transactionManager.setSessionFactory(getSessionFactory().getObject());
	      return transactionManager;
	   }
	   
	   @Autowired
	   @Bean(name = "userDAO")
	   public UserDAO getUserDao(SessionFactory sessionFactory) {
	       return new UserDAOImpl(sessionFactory);
	   }
	   
	   @Bean(name = "multipartResolver")
	   public CommonsMultipartResolver getCommonsMultipartResolver() {
	       CommonsMultipartResolver multipartResolver = new CommonsMultipartResolver();
	       multipartResolver.setMaxUploadSize(20971520);   // 20MB
	       multipartResolver.setMaxInMemorySize(1048576);  // 1MB
	       return multipartResolver;
	   }
}

package com.shop.config;

import java.util.Properties;

import javax.persistence.EntityManagerFactory;
import javax.sql.DataSource;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.dao.annotation.PersistenceExceptionTranslationPostProcessor;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.orm.jpa.JpaTransactionManager;
import org.springframework.orm.jpa.JpaVendorAdapter;
import org.springframework.orm.jpa.LocalContainerEntityManagerFactoryBean;
import org.springframework.orm.jpa.vendor.HibernateJpaVendorAdapter;
import org.springframework.transaction.annotation.EnableTransactionManagement;

@Configuration // Annotation
@EnableJpaRepositories(basePackages = {"com.shop.repository"})
@EnableTransactionManagement
public class JPAConfig {
	@Bean
	public LocalContainerEntityManagerFactoryBean entityManagerFactory() {
		LocalContainerEntityManagerFactoryBean em = new LocalContainerEntityManagerFactoryBean();
		em.setDataSource(dataSource());
		em.setPersistenceUnitName("persistence-data");
		JpaVendorAdapter vendorAdapter=new HibernateJpaVendorAdapter();
		em.setJpaVendorAdapter(vendorAdapter);
		em.setJpaProperties(additionalProperties());
		return em;

	}
	@Bean
	JpaTransactionManager transactionManager(EntityManagerFactory entityManagerFactory) {
		JpaTransactionManager transactionManager = new JpaTransactionManager();
		transactionManager.setEntityManagerFactory(entityManagerFactory);
		return transactionManager;
	}
	@Bean
	public PersistenceExceptionTranslationPostProcessor exceptionTranslation() {
		return new PersistenceExceptionTranslationPostProcessor();
	}
	@Bean
	public DataSource dataSource() {
		DriverManagerDataSource dataSource = new DriverManagerDataSource();
		dataSource.setDriverClassName("net.sourceforge.jtds.jdbc.Driver");
		dataSource.setUrl("jdbc:jtds:sqlserver://localhost:1433/MOBILESHOP;instance=SQLEXPRESS");
		dataSource.setUsername("sa");
		dataSource.setPassword("123456");
		return dataSource;
		/*
		 * ds.database-driver=net.sourceforge.jtds.jdbc.Driver
		 * ds.url=jdbc:jtds:sqlserver://localhost:1433/simplehr;instance=SQLEXPRESS
		 * ds.username=shoppingcart ds.password=12345
		 */
	}
	Properties additionalProperties() {
		Properties properties = new Properties();
		properties.setProperty("hibernate.hbm2ddl.auto", "create-drop");
		//properties.setProperty("hibernate.hbm2ddl.auto", "none");
		return properties;
	}
}

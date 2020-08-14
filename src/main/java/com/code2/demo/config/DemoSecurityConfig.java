package com.code2.demo.config;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.provisioning.JdbcUserDetailsManager;
import org.springframework.security.provisioning.UserDetailsManager;

@Configuration
@EnableWebSecurity
public class DemoSecurityConfig extends WebSecurityConfigurerAdapter {

	@Autowired
	private DataSource securityDataSource;
	
	@Override
	protected void configure(AuthenticationManagerBuilder auth) throws Exception {
		// TODO Auto-generated method stub
		auth.jdbcAuthentication().dataSource(securityDataSource);
	}
	
	
	
	@Override
	protected void configure(HttpSecurity http) throws Exception {
		// TODO Auto-generated method stub
		http.authorizeRequests()
		.antMatchers("/product/**").hasRole("ADMIN")
		.antMatchers("/process/order").hasRole("EMPLOYEE")
		.antMatchers("/process/order").hasRole("ADMIN")
		.antMatchers("/process/list").hasRole("ADMIN")
		.antMatchers("/process/deliver").hasRole("ADMIN")
		.and().formLogin().loginPage("/showLoginForm")
		.loginProcessingUrl("/authenticateUser")
		.permitAll()
		.and().logout().permitAll()
		.and()
		.exceptionHandling().accessDeniedPage("/access-denied");
	}



	@Bean
	public UserDetailsManager userDetailsManager() {
		JdbcUserDetailsManager detailManager = new JdbcUserDetailsManager();
		detailManager.setDataSource(securityDataSource);
		
		return detailManager;
	}

}

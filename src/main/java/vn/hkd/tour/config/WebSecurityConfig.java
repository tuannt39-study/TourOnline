package vn.hkd.tour.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.userdetails.UserDetailsService;

@Configuration
@EnableWebSecurity
public class WebSecurityConfig extends WebSecurityConfigurerAdapter {
	
	// Web Security
	@Autowired
	private UserDetailsService userDetailsService;

    // Authentication and Authorization
    @Override
    protected void configure(HttpSecurity http) throws Exception {
		http
				.authorizeRequests()
					.antMatchers("/").permitAll()
					.antMatchers("/dang-ky").permitAll()
					.antMatchers("/dang-nhap").permitAll()
					.antMatchers("/admin").permitAll()
					.antMatchers("/admin/**").permitAll()
//					.antMatchers("/", "/home", "/about").permitAll()
//					.antMatchers("/admin/**").hasAnyRole("ADMIN")
//                    .antMatchers("/admin").hasRole("ADMIN")
//                    .antMatchers("/admin/**").access("hasRole('ADMIN')")
					.and()
				.formLogin()
					.loginPage("/dang-nhap")
					.usernameParameter("email")
					.passwordParameter("password")
					.defaultSuccessUrl("/")
					.failureUrl("/dang-nhap?error")
					.and()
				.exceptionHandling()
					.accessDeniedPage("/error/loi-403")
					.and()
				.csrf()
					.disable();
	}
}

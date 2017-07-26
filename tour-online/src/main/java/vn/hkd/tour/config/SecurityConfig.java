package vn.hkd.tour.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;

@Configuration
@EnableWebSecurity
public class SecurityConfig extends WebSecurityConfigurerAdapter{

    @Override
    protected void configure(HttpSecurity http) throws Exception {
        http
                .authorizeRequests()
                    .antMatchers("/register").permitAll()
                    .antMatchers("/").permitAll()
                    .antMatchers("/admin").permitAll()
                    .antMatchers("/admin/**").permitAll()
//                    .antMatchers("/admin").hasRole("ADMIN")
//                    .antMatchers("/admin/**").access("hasRole('ADMIN')")
                    .and()
                .formLogin()
                    .loginPage("/login")
                    .usernameParameter("email")
                    .passwordParameter("password")
                    .defaultSuccessUrl("/")
                    .failureUrl("/login?error")
                    .and()
                .exceptionHandling()
                    .accessDeniedPage("/error/loi-403")
                    .and()
                .csrf()
                    .disable();
    }

}

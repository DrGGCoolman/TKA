package de.gowlr.allcar.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;

import de.gowlr.allcar.services.UserAdapterService;
import de.gowlr.allcar.web.CarFilterModel;

@Configuration
@EnableWebSecurity
public class SecurityConfig extends WebSecurityConfigurerAdapter {

    @Autowired
    UserAdapterService userAdapterService;

    @Override
    protected void configure(HttpSecurity http) throws Exception {
        http.csrf().disable().authorizeRequests().antMatchers("/css/**", "/index", "/home", "/webjars/**").permitAll()
                .antMatchers("/user/**").hasRole("USER").antMatchers("/admin/**").hasRole("ADMIN").and().formLogin()
                .loginPage("/users/login").permitAll().and().logout().permitAll();
        // TODO: default errror failureUrl("/login-error").
    }

    @Bean
    public PasswordEncoder passwordEncoder() {
        return new BCryptPasswordEncoder();
    }

    // TODO: auslagern in eine Globale Config
    @Bean
    public CarFilterModel carFilterModel() {
        return new CarFilterModel();
    }

    @Override
    public void configure(AuthenticationManagerBuilder auth) throws Exception {
        auth.userDetailsService(userAdapterService).passwordEncoder(passwordEncoder());
    }

}
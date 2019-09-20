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

    @Override
    protected void configure(HttpSecurity http) throws Exception {
        http.csrf().disable().authorizeRequests().antMatchers("/css/**", "/index", "/home", "/webjars/**").permitAll()
                .antMatchers("/user/**").hasRole("USER").antMatchers("/admin/**").hasRole("ADMIN").and().formLogin()
                .failureUrl("/login-error").loginPage("/users/login").permitAll().and().logout().permitAll();
        // TODO: default errror failureUrl("/login-error").
    }

    @Autowired
    UserAdapterService userDetailsService;

    @Bean
    public BCryptPasswordEncoder passwordEncoder() {
        BCryptPasswordEncoder bCryptPasswordEncoder = new BCryptPasswordEncoder();
        return bCryptPasswordEncoder;
    }

    @Autowired
    public void configureGlobal(AuthenticationManagerBuilder auth) throws Exception {

        // Setting Service to find User in the database.
        // And Setting PassswordEncoder
        auth.userDetailsService(userDetailsService).passwordEncoder(passwordEncoder());

    }

    // TODO: auslagern in eine Globale Config
    @Bean
    public CarFilterModel carFilterModel() {
        return new CarFilterModel();
    }

    // @Autowired
    // public void configureGlobal(AuthenticationManagerBuilder auth) throws
    // Exception {
    // auth.inMemoryAuthentication().withUser("user").password("{noop}password").roles("ROLE_USER");
    // }

}
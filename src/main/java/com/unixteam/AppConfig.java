package com.unixteam;

import org.springframework.boot.context.embedded.EmbeddedServletContainerFactory;
import org.springframework.boot.context.embedded.tomcat.TomcatEmbeddedServletContainerFactory;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Import;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import java.lang.System;



@Configuration
@ComponentScan
@Import({com.unixteam.SecurityConfig.class})
public class AppConfig {

    @Bean(name = "dataSource")
    public DriverManagerDataSource dataSource() {
        DriverManagerDataSource driverManagerDataSource = new DriverManagerDataSource();
        driverManagerDataSource.setDriverClassName("com.mysql.jdbc.Driver");
        driverManagerDataSource.setUrl("jdbc:mysql://169.44.4.114/EliteTC");
        driverManagerDataSource.setUsername(System.getenv("DB_USERNAME"));
        driverManagerDataSource.setPassword(System.getenv("DB_PASSWORD"));
        return driverManagerDataSource;
    }
}

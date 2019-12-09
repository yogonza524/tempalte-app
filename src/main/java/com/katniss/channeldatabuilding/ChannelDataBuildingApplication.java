package com.katniss.channeldatabuilding;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;

@SpringBootApplication
@ComponentScan(basePackages = {"com.katniss"})
@EntityScan(basePackages = {"com.katniss.channeldatabuilding.entities"})
@EnableJpaRepositories(basePackages = {"com.katniss.channeldatabuilding.persistence"})
public class ChannelDataBuildingApplication {

	public static void main(String[] args) {
		SpringApplication.run(ChannelDataBuildingApplication.class, args);
	}

}

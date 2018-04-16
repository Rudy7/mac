package com.mac.web.domain;

import org.springframework.stereotype.Component;

import lombok.Data;

@Component @Data
public class Customer {
	private String customId
				  ,customPass
				  ,name
				  ,email
				  ,phoneNum				  
				  ,profile
				  ,joinDate;
}

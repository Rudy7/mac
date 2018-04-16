package com.mac.web.domain;

import org.springframework.stereotype.Component;
import lombok.Data;

@Component
@Data
public class Path {
	private String context,js,image,css;
}

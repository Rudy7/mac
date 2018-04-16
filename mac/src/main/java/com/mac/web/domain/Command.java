package com.mac.web.domain;

import org.springframework.stereotype.Component;

import lombok.Data;

@Component
@Data
public class Command {
	protected String cmd;
	protected Customer custom;
	protected Common com;
}

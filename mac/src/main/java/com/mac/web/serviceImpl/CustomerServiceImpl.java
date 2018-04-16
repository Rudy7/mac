package com.mac.web.serviceImpl;

import java.util.List;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.mac.web.domain.Command;
import com.mac.web.domain.Customer;
import com.mac.web.mapper.CustomerMapper;
import com.mac.web.service.CustomerService;

@Service
public class CustomerServiceImpl implements CustomerService {
	private static final Logger logger = LoggerFactory.getLogger(CustomerServiceImpl.class);
	@Autowired CustomerMapper mapper;
	@Autowired Customer custom;

	@Override
	public void addCustomer(Command cmd) {	
		logger.info("커스터머 서비스임플 addCustomer() ==================================");
		logger.info("아이디는 {}",cmd.getCustom().getCustomId());
		logger.info("비번은 {}",cmd.getCustom().getCustomPass());
		logger.info("이메일은 {}",cmd.getCustom().getEmail());
		logger.info("이름은 {}",cmd.getCustom().getName());
		logger.info("총 전화번호는 {}", cmd.getCustom().getPhoneNum());
		mapper.insertCustomer(cmd);
	}

	@Override
	public void modifyCustomer(Command cmd) {
		logger.info("커스터머 서비스임플 modifyCustomer()===============================");
		logger.info("비밀번호1 은 {}",cmd.getCom().getCustomPass1());
		logger.info("비밀번호1 은 {}",cmd.getCom().getCustomPass2());
		mapper.updateCustomer(cmd);
	}

	@Override
	public void removeCustomer(Command cmd) {
		logger.info("커스터머 서비스임플 deleteEnd() ==============================");
		logger.info("@@@@@@@비밀번호는 {}", cmd.getCustom().getCustomPass());
		mapper.deleteCustomer(cmd);		
	}

	@Override
	public List<Customer> list() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Customer> findByName(Command cmd) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Customer findById(Command cmd) {
		logger.info("커스터머 서비스임플 findById()=============================");
		logger.info("아이디는 {}",cmd.getCustom().getCustomId());
		logger.info("이름은 {}",cmd.getCustom().getName());
		logger.info("전화번호은 {}",cmd.getCustom().getPhoneNum());
		logger.info("이메일은 {}",cmd.getCustom().getEmail());
		Customer i = mapper.selectById(cmd);
		return i;
	}

	@Override
	public boolean count(Command cmd) {
		logger.info("커스터머 서비스임플 count()======================아이디는{}",cmd.getCustom().getCustomId());
		boolean e = false;
		int k = mapper.selectCount(cmd);
		if(k!=0) {
			e = true;
		}else {
			e = false;
		}
		logger.info("커스터머 서비스임플 count() ture/false 중 {}", e);
		return e;
	}
	
}

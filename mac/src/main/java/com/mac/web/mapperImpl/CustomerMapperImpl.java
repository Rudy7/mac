package com.mac.web.mapperImpl;

import java.util.List;
import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.mac.web.domain.Command;
import com.mac.web.domain.Customer;
import com.mac.web.mapper.CustomerMapper;

@Repository
public class CustomerMapperImpl implements CustomerMapper {
	private static final Logger logger = LoggerFactory.getLogger(CustomerMapperImpl.class);
	@Autowired SqlSessionTemplate sqlSession;	
	@Autowired Customer custom;
	
	String ns = "com.mac.web.mapperImpl.CustomerMapperImpl.";
	
	@Override
	public void insertCustomer(Command cmd) {
		logger.info("커스터머 메퍼임플 insertCustomer() ==================================");
		logger.info("아이디는 {}",cmd.getCustom().getCustomId());
		logger.info("비번은 {}",cmd.getCustom().getCustomPass());
		logger.info("이메일은 {}",cmd.getCustom().getEmail());
		logger.info("이름은 {}",cmd.getCustom().getName());
		logger.info("총 전화번호는 {}", cmd.getCustom().getPhoneNum());
		sqlSession.insert(ns+"insertCustomer", cmd);
	}

	@Override
	public void updateCustomer(Command cmd) {
		logger.info("커스터머 매퍼임플 updateCustomer()===============================");
		logger.info("이메일1 은 {}",cmd.getCom().getEmail1());
		logger.info("이메일2 은 {}",cmd.getCom().getEmail2());
		logger.info("비밀번호1 은 {}",cmd.getCom().getCustomPass1());
		logger.info("비밀번호1 은 {}",cmd.getCom().getCustomPass2());
		logger.info("@@@@@id는 {}",cmd.getCustom().getCustomId());
		sqlSession.update(ns+"updateCustomer", cmd);
	}

	@Override
	public void deleteCustomer(Command cmd) {
		logger.info("커스터머 매퍼임플 deleteEnd() ==============================");
		logger.info("@@@@@@@비밀번호는 {}", cmd.getCustom().getCustomPass());
		sqlSession.delete(ns+"deleteCustomer",cmd);
	}

	@Override
	public List<Customer> selectAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Customer> selectByName(Command cmd) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Customer selectById(Command cmd) {
		Customer y = sqlSession.selectOne(ns+"selectById",cmd);
		logger.info("커스터머 매퍼임플 selectById() 도착");
		logger.info("아이디는 {}",cmd.getCustom().getCustomId());
		logger.info("비밀번호는 {}",cmd.getCustom().getCustomPass());
		logger.info("이름은 {}",cmd.getCustom().getName());
		logger.info("전화번호은 {}",cmd.getCustom().getPhoneNum());
		logger.info("이메일은 {}",cmd.getCustom().getEmail());
		logger.info("@@@이름은 {}", y.getName());
		logger.info("@@@전화번호는는 {}", y.getPhoneNum());
		return y;
	}

	@Override
	public int selectCount(Command cmd) {
		logger.info("커스터머 매퍼임플 selectCount() =========================== 아이디는 {}", cmd.getCustom().getCustomId());
		int k = sqlSession.selectOne(ns+"selectCount", cmd);
		logger.info("커스터머 매퍼임플 셀렉트카운트DB 일치개수는 {}", k);
		return k;
	}

}

package kr.co.librarylyh.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.librarylyh.domain.UserVO;
import kr.co.librarylyh.mapper.UserMapper;
import lombok.AllArgsConstructor;
import lombok.Setter;
import lombok.extern.log4j.Log4j2;

@Log4j2
@Service // root-context 항목 추가
@AllArgsConstructor
public class UserServiceImpl implements UserService {

	@Setter(onMethod_ = @Autowired)
	private UserMapper mapper;
	
	@Override
	public void register(UserVO user) {
		
		log.info("UserServiceImpl.join 메서드 실행");
		
		mapper.insertSelectUid(user);
	}

	@Override
	public boolean modify(UserVO user) {
		
		log.info("UserServiceImpl.modify 메서드 실행");
		
		return mapper.update(user) == 1;
	}

	@Override
	public UserVO get(String u_id) {

		log.info("UserServiceImpl.get 메서드 실행");
		
		return mapper.read(u_id);
	}

	@Override
	public boolean remove(String u_id) {
		
		log.info("UserServiceImpl.remove 메서드 실행");
		
		return mapper.delete(u_id) == 1;
	}

	@Override
	public UserVO login(UserVO user) {
		log.info("UserServiceImpl.login 메서드 실행");
		return user = mapper.login(user);
	}



	
}

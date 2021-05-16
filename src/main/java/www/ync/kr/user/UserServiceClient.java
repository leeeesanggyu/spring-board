package www.ync.kr.user;

import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

public class UserServiceClient {
	public static void main(String[] args) {
		//	1. Spring 컨테이너 구동
		AbstractApplicationContext container =
				new GenericXmlApplicationContext("applicationContext.xml");
		
		//	2. Spring 컨테이너로부터 UserServicceImpl 객체를 LOOKUP
		UserService userService = 
				(UserService) container.getBean("userService");
		
		//	3. 로그인 기능 테스트
		UserVO vo = new UserVO();
		vo.setId("test");
		vo.setPassword("test123");
		
		UserVO user = userService.getUser(vo);
		if(user != null) {
			System.out.println(user.getName() + "님 안녕하세요.");
		}else {
			System.out.println("failed");
		}
		
		//	4.컨테이너 종료
		container.close();
	}
}

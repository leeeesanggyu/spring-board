package www.ync.kr.common;

import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Pointcut;

@Aspect
public class PointcutCommon {
	@Pointcut("execution(* www.ync.kr..*Impl.*(..))")
	public void allPointcut() {}
	
	@Pointcut("execution(* www.ync.kr..*Impl.get*(..))")
	public void getPointcut() {}
}

package chapter12;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

public class TestFilter implements Filter{
	public void inint(FilterConfig filterConfig) throws ServletException{
		System.out.println("���� ���� ��...");
	}
	
	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		// TODO Auto-generated method stub
//		System.out.println("JSP ó�� �� ���� ����///");
//		System.out.println("Request ���Ϳ� Response ���� �� ������ �ִٰ� ����");
//		
//		System.out.println("�� ���Ϳ� Request ���Ϳ� Response ���� �� ���� ��� �ۼ��� �� �ִ�");
//		
//		System.out.println("doFileter �޼��� ���� ó���ϴ� ������ Request ������ ����");
//		
//		System.out.println("��) �α����� �ʿ��� �������� �����ϱ� ���� �α��� ���� Ȯ��");
//		
//		System.out.println("�α����� �Ǿ����� �ʴٰ� ���Ͱ� �Ǵ����� ���� doFilter�޼��带 ȣ������ �ʰ�");
//		System.out.println("response.sendRedirect �Ǵ� RequsetDispatcher�� ����ؼ� ���");
//		System.out.println("������ �ٸ� ������ �ű��");
		
		// ��� ���� ���� �Ǵ� ����ڰ� ��û�� ���ҽ��� ����
		chain.doFilter(request, response);
		
		System.out.println("JSP  ���� �� ���� ����...");
		System.out.println("doFilter �޼��� �Ʒ����ٰ� �ڵ带 �ۼ��ϸ�");
		System.out.println("������ ������� ��û�� ó���� �� ������ �� ���͸� �� �� ����");
		System.out.println("���� Ŭ������ Request�� ���ͷ� Response�� ���ͷ� ���� ����� �� �ƴϰ�");
		System.out.println("���� Ŭ������ ����� doFileter �޼��� �ȿ��� �� ��° �Ű�����(chain)��");
		System.out.println("doFilter ��, �ķ� Request�� ó��, Response�� ó���� ���� ������.");
	
		System.out.println("��) Mime Type�� ����������, Content-Length�� �ʹ� ������ ������, gzipó���� �Ǿ��ִ���");
		
	}
	public void destroy() {
		System.out.println("���� ����...");
	}

}

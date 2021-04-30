package chapter13;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Session01Process
 */
@WebServlet("/session01Process")
public class Session01Process extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Session01Process() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// ������ ���
		HttpSession session = request.getSession();
		
		// setAttribute�� ����ؼ� �����͸� ������ ��
		// ������ �������� �ʾ����� ������ ����
		// 
		// ���ǿ� �̸�=���� ���·� �����͸� ����
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		// 1800�� (30��)���� ������ �Ѵ�
		session.setAttribute("id", id);
		session.setAttribute("pw", pw);
		
		// ������ �����ð��� 10�ʰ� �ȴ�!
		session.setMaxInactiveInterval(10);
		
		RequestDispatcher dis = request.getRequestDispatcher("/chapter13/session01_success.jsp");
		dis.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
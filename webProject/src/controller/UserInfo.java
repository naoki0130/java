package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Gender;
import model.GreetingLogic;
import model.UserBean;

/**
 * Servlet implementation class UserInfo
 */
@WebServlet("/UserInfo")
public class UserInfo extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserInfo() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/UserInfo.jsp");
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	    request.setCharacterEncoding("UTF-8");
	    //リクエストパラメータを取得（必須パラメータチェックは省略）
	    String lastName = request.getParameter("lastName"); //姓
	    String firstName = request.getParameter("firstName"); //名
	    int age = Integer.parseInt(request.getParameter("age")); //年齢（String型で受け取るため、int型に変換）
	    String lunch = request.getParameter("lunch");
	    String event = request.getParameter("event");
	    Gender gender = request.getParameter("gender").equals("male") ? Gender.Male : Gender.Female; //性別

	    //挨拶コメントを取得するインスタンスを生成
	    GreetingLogic logic = new GreetingLogic();
	    //挨拶コメントを取得し、リクエストスコープに保持させる
	    request.setAttribute("greeting", logic.getGreet());

	    //UserBeanインスタンスの生成およびフィールドへの代入
	    UserBean bean = new UserBean();
	    bean.setFirstName(firstName);
	    bean.setLastName(lastName);
	    bean.setAge(age);
	    bean.setGender(gender);
	    bean.setLunch(lunch);
	    bean.setEvent(event);

	    //上記で生成、設定したUserBeanインスタンスをリクエストスコープに保持させる
	    request.setAttribute("user", bean);

		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/UserInfoConf.jsp");
		dispatcher.forward(request, response);
	}

}

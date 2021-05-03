<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.regex.Pattern"%>
<%@ page import="model.UserBean" %>
<%@ page import="model.Gender" %>
<%

	request.setCharacterEncoding("UTF-8");

	//リクエストスコープに保持されているUserBeanインスタンスを取得（キャスト必要）
	UserBean bean = (UserBean) request.getAttribute("user");
	//リクエストスコープに保持されている挨拶コメント用のインスタンスを取得
	String message = (String) request.getAttribute("greeting");

	/*
	String errMsg = "";
    if ((name == null) || (name.length() == 0)) {
        errMsg += "<p>名前が入力されていません</p>";
    }
    if ((gender == null) || (gender.length() == 0)) {
        errMsg += "<p>性別が選択されていません</p>";
    }
    if ((age == null) || (age.length() == 0)) {
        errMsg += "<p>年齢が入力されていません</p>";
    } else {
        // 正規表現による半角数字のチェック
        // 半角数字の正規表現パターンを生成
        Pattern p = Pattern.compile("^[0-9]*$");
        // 正規表現のパターンと一致するかチェック
        if (!p.matcher(age).matches()) {
            // 一致しなかった場合
            errMsg += "<p>年齢は半角数字で入力してください</p>";
        }
    }
    // 表示メッセージ＆titleの設定
    String msg = "<p>" + gender + "の" + name + "さん、年齢は" + age + "才で登録しました</p>" +
    				"<p>好きな昼食は" + lunch + "です</p>" + "<p>参加したいイベントは" + event + "です</p>";
    String title = "ユーザ登録結果表示";
    if (errMsg.length() != 0) {
        msg = errMsg;
        title = "ユーザ登録失敗表示";
        */

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>UserInfoConf</title>
</head>
<body>
	<h2>User Conf</h2>
	<h3><%= message %></h3>
	<p>氏名：<%= bean.getFullName() %>さん</p>
	<p>年齢：<%= bean.getAge() %>歳</p>
	<p>性別：<%= bean.isMale() ? Gender.Male : Gender.Female  %></p>
	<p>好きな昼食：<%= bean.getLunch() %></p>
	<p>参加したいイベント：<%= bean.getEvent() %></p>
    <h1><a href = "http://localhost:8080/webProject/SampleFile">Back to Home Page</a></h1>
</body>
</html>